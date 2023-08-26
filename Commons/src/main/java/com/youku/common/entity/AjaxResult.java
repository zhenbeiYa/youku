package com.youku.common.entity;

import com.youku.common.constant.ResultConstant;

import java.io.Serializable;

/*
 *DESCRIPTION 前端请求响应体
 *CLASSNAME  AjaxResult
 *Author  23133
 *DATE 2023/8/26
 */
public class AjaxResult<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 成功
     */
    public static final int SUCCESS = ResultConstant.SUCCESSCODE;

    /**
     * 失败
     */
    public static final int FAIL = ResultConstant.FAILCODE;

    private int code;

    private String msg;

    private T data;

    public static <T> AjaxResult<T> ok() {
        return restResult(null, SUCCESS, null);
    }

    public static <T> AjaxResult<T> ok(T data) {
        return restResult(data, SUCCESS, null);
    }

    public static <T> AjaxResult<T> ok(T data, String msg) {
        return restResult(data, SUCCESS, msg);
    }

    public static <T> AjaxResult<T> fail() {
        return restResult(null, FAIL, null);
    }

    public static <T> AjaxResult<T> fail(String msg) {
        return restResult(null, FAIL, msg);
    }

    public static <T> AjaxResult<T> fail(T data) {
        return restResult(data, FAIL, null);
    }

    public static <T> AjaxResult<T> fail(T data, String msg) {
        return restResult(data, FAIL, msg);
    }

    public static <T> AjaxResult<T> fail(int code, String msg) {
        return restResult(null, code, msg);
    }

    private static <T> AjaxResult<T> restResult(T data, int code, String msg) {
        AjaxResult<T> apiResult = new AjaxResult<>();
        apiResult.setCode(code);
        apiResult.setData(data);
        apiResult.setMsg(msg);
        return apiResult;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
