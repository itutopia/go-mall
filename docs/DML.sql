CREATE DATABASE IF NOT EXISTS `go_mall` DEFAULT CHARACTER SET utf8mb4;
USE `go_mall`;
SET NAMES utf8mb4;


CREATE TABLE `go_mall`.`ums_member`  (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
    `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
    `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
    `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
    `member_level_id` bigint NULL DEFAULT NULL COMMENT '用户等级',
    `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
    `gender` int NULL DEFAULT NULL COMMENT '性别：0:未知；1:男；2:女',
    `birthday` date NULL DEFAULT NULL COMMENT '生日',
    `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
    `job` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
    `personalized_signature` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
    `source_type` int NULL DEFAULT NULL COMMENT '用户来源',
    `integration` int NULL DEFAULT NULL COMMENT '积分',
    `growth` int NULL DEFAULT NULL COMMENT '成长值',
    `history_integration` int NULL DEFAULT NULL COMMENT '历史积分数量',
    `status` int NULL DEFAULT NULL COMMENT '帐号启用状态:0:禁用；1:启用',
    `create_at` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
    `update_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
    `delete_at` datetime(0) NULL COMMENT '删除时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `idx_username`(`username`) USING BTREE,
    UNIQUE INDEX `idx_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;


