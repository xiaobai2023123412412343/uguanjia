/*
 Navicat Premium Data Transfer

 Source Server         : docker-mysql8
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : bot_2500

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 14/03/2023 11:26:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钱包地址',
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易哈希',
  `advance_trx` decimal(10,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '扣除预支金额',
  `trx_amount` decimal(10,3) unsigned NOT NULL DEFAULT '0.000' COMMENT 'trx金额',
  `usdt_amount` decimal(10,3) unsigned NOT NULL DEFAULT '0.000' COMMENT 'usdt 金额',
  `type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '订单类型 ：\n0：交易订单\n1： 预支订单',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态0待支付，1已完成',
  `tx_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '转trx的交易哈希',
  `trx_rate` float unsigned NOT NULL DEFAULT '0' COMMENT '订单汇率（该订单生成时当时的汇率）',
  `update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `address+transaction_id` (`address`,`transaction_id`) USING BTREE,
  KEY `address` (`address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

SET FOREIGN_KEY_CHECKS = 1;
