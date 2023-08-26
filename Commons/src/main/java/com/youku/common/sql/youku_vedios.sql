/*
 Navicat Premium Data Transfer

 Source Server         : shiinaSQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : youku_vedios

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 26/08/2023 13:32:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`  (
  `movie_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '电影ID',
  `movie_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电影标题',
  `movie_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影副标题',
  `movie_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影标签',
  `movie_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影封面',
  `movie_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影播放地址',
  `vip_flag` int(0) NULL DEFAULT NULL COMMENT '是否需要VIP',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影描述',
  `quality_id` int(0) NULL DEFAULT NULL COMMENT '电影清晰度ID',
  `publish_time` datetime(0) NULL DEFAULT NULL COMMENT '电影发行日期',
  `status` int(0) NULL DEFAULT NULL COMMENT '电影状态（1-上架,2-正在上架,3-下架)',
  `del_flag` int(0) NULL DEFAULT NULL COMMENT '是否下架（1-下架,2-删除资源）',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发行商',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人员',
  PRIMARY KEY (`movie_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tv_series
-- ----------------------------
DROP TABLE IF EXISTS `tv_series`;
CREATE TABLE `tv_series`  (
  `tv_series_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '电视剧ID',
  `tv_series_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电视剧名称',
  `tv_series_sam_appraise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧简评',
  `tv_series_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧封面',
  `tv_series_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧标签',
  `tv_series_detail_id` bigint(0) NULL DEFAULT NULL COMMENT '电视剧详情ID',
  `tv_series_publish_time` datetime(0) NULL DEFAULT NULL COMMENT '电视剧上线时间',
  `tv_series_update_week` datetime(0) NULL DEFAULT NULL COMMENT '电视剧更新周期(每周更新时间)',
  `tv_series_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧状态(1-上架,2-正在上架,3-下架)',
  `tv_series_del_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧是否下架',
  `vip_flag` int(0) NULL DEFAULT NULL COMMENT '电视剧是否需要VIP',
  PRIMARY KEY (`tv_series_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tv_series_detail
-- ----------------------------
DROP TABLE IF EXISTS `tv_series_detail`;
CREATE TABLE `tv_series_detail`  (
  `detail_id` bigint(0) NOT NULL COMMENT '电视剧详情主键',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧播放地址',
  `all_plays` int(0) NULL DEFAULT NULL COMMENT '电视剧总集数',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧简介',
  `imgs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧简介图片',
  `quality_id` int(0) NULL DEFAULT NULL COMMENT '电视剧清晰度ID',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧发行商',
  `score` double NULL DEFAULT NULL COMMENT '电视剧评分',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧标签',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电视剧类型',
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vidoes_menu
-- ----------------------------
DROP TABLE IF EXISTS `vidoes_menu`;
CREATE TABLE `vidoes_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父级菜单ID',
  `order_num` bigint(0) NULL DEFAULT NULL COMMENT '层级ID',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单地址',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `upadte_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '菜单更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vidoes_role
-- ----------------------------
DROP TABLE IF EXISTS `vidoes_role`;
CREATE TABLE `vidoes_role`  (
  `role_id` bigint(0) NOT NULL COMMENT '权限ID',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称',
  `role_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色权限字符',
  `role_sort` int(0) NULL DEFAULT NULL COMMENT '权限排序字段',
  `status` int(0) NULL DEFAULT NULL COMMENT '权限状态（1-所有数据,2-表示VIP数据，3-表示普通用户数据）',
  `del_flag` int(0) NULL DEFAULT NULL COMMENT '权限是否失效',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '权限创建时间',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限创建者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '权限更新时间',
  `update_by` datetime(0) NULL DEFAULT NULL COMMENT '权限更新者',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vidoes_user
-- ----------------------------
DROP TABLE IF EXISTS `vidoes_user`;
CREATE TABLE `vidoes_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `sex` tinyint(0) NULL DEFAULT NULL COMMENT '用户性别',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户创建者',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '用户状态',
  `del_flag` tinyint(0) NULL DEFAULT NULL COMMENT '用户删除状态0表示正在，2表示已删除(逻辑删除)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '上次登录时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户标识',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vidoes_user_role
-- ----------------------------
DROP TABLE IF EXISTS `vidoes_user_role`;
CREATE TABLE `vidoes_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '用户对象的权限ID',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
