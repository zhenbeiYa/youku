package com.youku.common.entity;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.TypeReference;
import com.youku.common.constant.ResultConstant;

import java.util.HashMap;
import java.util.Map;

/*
 *DESCRIPTION
 *CLASSNAME  Result
 *Author  23133
 *DATE 2023/8/25
 */
public class Result extends HashMap<String, Object> {
    private Integer code;
    private String msg;
    Object data;

    public Result() {

    }

    public Result(Integer code, String msg) {
        put("code", code);
        put("msg", msg);
    }

    //获取返回码
    public Integer getCode() {
        return (Integer) get("code");
    }

    public static Result ok() {
        return new Result(ResultConstant.SUCCESSCODE, ResultConstant.SUCCESSMSG);
    }

    public static Result error() {
        return error(ResultConstant.FAILCODE, ResultConstant.FAILMSG);
    }

    public static Result error(String msg) {
        return error(409, msg);
    }

    public static Result ok(Integer code, String msg) {
        return new Result(code, msg);
    }


    public static Result error(Integer code, String msg) {
        return new Result(code, msg);
    }

    public Result putData(Object data) {
        put("data", JSON.toJSONString(data));
        return this;
    }

    public void putAllData(Map<String, Object> dataMap) {
        putAll(dataMap);
    }

    public <T> T getData() {
        String dataString = (String) get("data");
        T t = JSON.parseObject(dataString, new TypeReference<T>() {
        });
        return t;
    }

    public Result put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
