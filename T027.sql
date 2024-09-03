/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t027`;
CREATE DATABASE IF NOT EXISTS `t027` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t027`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-03-30 16:18:12', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-03-30 16:18:12', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-03-30 16:18:12', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-03-30 16:18:12', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-03-30 16:18:12', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-03-30 16:18:12', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kechengxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704257002468 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1704256863868, '2024-01-03 04:41:03', 'kechengxinxi', 11, 32, '课程名称2', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian2.jpg', 1, 99.9, 0),
	(1704257002467, '2024-01-03 04:43:22', 'kechengxinxi', 11, 33, '课程名称3', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian3.jpg', 1, 99.9, 0);

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(51, '2021-03-30 16:18:12', 1, 1, '提问1', '回复1', 1),
	(52, '2021-03-30 16:18:12', 2, 2, '提问2', '回复2', 2),
	(53, '2021-03-30 16:18:12', 3, 3, '提问3', '回复3', 3),
	(54, '2021-03-30 16:18:12', 4, 4, '提问4', '回复4', 4),
	(55, '2021-03-30 16:18:12', 5, 5, '提问5', '回复5', 5),
	(56, '2021-03-30 16:18:12', 6, 6, '提问6', '回复6', 6);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbooth7te4/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbooth7te4/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbooth7te4/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusskechengxinxi`;
CREATE TABLE IF NOT EXISTS `discusskechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息评论表';

DELETE FROM `discusskechengxinxi`;
INSERT INTO `discusskechengxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-03-30 16:18:12', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-03-30 16:18:12', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-03-30 16:18:12', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-03-30 16:18:12', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-03-30 16:18:12', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-03-30 16:18:12', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `jiaoshigonghao`, `mima`, `jiaoshixingming`, `xingbie`, `zhaopian`, `zhicheng`, `lianxidianhua`, `jiaoshiyouxiang`, `money`) VALUES
	(21, '2021-03-30 16:18:12', '教师1', '123456', '教师姓名1', '男', 'http://localhost:8080/springbooth7te4/upload/jiaoshi_zhaopian1.jpg', '职称1', '13823888881', '773890001@qq.com', 100),
	(22, '2021-03-30 16:18:12', '教师2', '123456', '教师姓名2', '男', 'http://localhost:8080/springbooth7te4/upload/jiaoshi_zhaopian2.jpg', '职称2', '13823888882', '773890002@qq.com', 100),
	(23, '2021-03-30 16:18:12', '教师3', '123456', '教师姓名3', '男', 'http://localhost:8080/springbooth7te4/upload/jiaoshi_zhaopian3.jpg', '职称3', '13823888883', '773890003@qq.com', 100),
	(24, '2021-03-30 16:18:12', '教师4', '123456', '教师姓名4', '男', 'http://localhost:8080/springbooth7te4/upload/jiaoshi_zhaopian4.jpg', '职称4', '13823888884', '773890004@qq.com', 100),
	(25, '2021-03-30 16:18:12', '教师5', '123456', '教师姓名5', '男', 'http://localhost:8080/springbooth7te4/upload/jiaoshi_zhaopian5.jpg', '职称5', '13823888885', '773890005@qq.com', 100),
	(26, '2021-03-30 16:18:12', '教师6', '123456', '教师姓名6', '男', 'http://localhost:8080/springbooth7te4/upload/jiaoshi_zhaopian6.jpg', '职称6', '13823888886', '773890006@qq.com', 100);

DROP TABLE IF EXISTS `kechengleixing`;
CREATE TABLE IF NOT EXISTS `kechengleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='课程类型';

DELETE FROM `kechengleixing`;
INSERT INTO `kechengleixing` (`id`, `addtime`, `kechengleixing`) VALUES
	(41, '2021-03-30 16:18:12', '课程类型1'),
	(42, '2021-03-30 16:18:12', '课程类型2'),
	(43, '2021-03-30 16:18:12', '课程类型3'),
	(44, '2021-03-30 16:18:12', '课程类型4'),
	(45, '2021-03-30 16:18:12', '课程类型5'),
	(46, '2021-03-30 16:18:12', '课程类型6');

DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE IF NOT EXISTS `kechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `guanjianzi` varchar(200) DEFAULT NULL COMMENT '关键字',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617121664507 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

DELETE FROM `kechengxinxi`;
INSERT INTO `kechengxinxi` (`id`, `addtime`, `kechengbianhao`, `kechengmingcheng`, `kechengleixing`, `guanjianzi`, `keshi`, `kechengshipin`, `kechengxiangqing`, `fengmian`, `jiaoshigonghao`, `jiaoshixingming`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`, `price`) VALUES
	(31, '2021-03-30 16:18:12', '课程编号1', '课程名称1', '课程类型1', '关键字1', '课时1', '', '课程详情1', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian1.jpg', '教师工号1', '教师姓名1', '是', '', 1, 1, '2021-03-31 00:18:12', 1, 99.9),
	(32, '2021-03-30 16:18:12', '课程编号2', '课程名称2', '课程类型2', '关键字2', '课时2', '', '课程详情2', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian2.jpg', '教师工号2', '教师姓名2', '是', '', 2, 2, '2024-01-03 12:41:02', 3, 99.9),
	(33, '2021-03-30 16:18:12', '课程编号3', '课程名称3', '课程类型3', '关键字3', '课时3', '', '课程详情3', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian3.jpg', '教师工号3', '教师姓名3', '是', '', 3, 3, '2024-01-03 12:43:25', 6, 99.9),
	(34, '2021-03-30 16:18:12', '课程编号4', '课程名称4', '课程类型4', '关键字4', '课时4', '', '课程详情4', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian4.jpg', '教师工号4', '教师姓名4', '是', '', 4, 4, '2021-03-31 00:18:12', 4, 99.9),
	(35, '2021-03-30 16:18:12', '课程编号5', '课程名称5', '课程类型5', '关键字5', '课时5', '', '课程详情5', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian5.jpg', '教师工号5', '教师姓名5', '是', '', 5, 5, '2024-01-03 12:42:38', 6, 99.9),
	(36, '2021-03-30 16:18:12', '课程编号6', '课程名称6', '课程类型6', '关键字6', '课时6', '', '课程详情6', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian6.jpg', '教师工号6', '教师姓名6', '是', '', 6, 6, '2024-01-03 12:40:27', 7, 99.9),
	(1617121523740, '2021-03-30 16:25:23', '1617121515793', '11', '课程类型1', NULL, NULL, NULL, NULL, 'http://localhost:8080/springbooth7te4/upload/1617121534311.jpg', NULL, NULL, '是', NULL, 0, 0, '2021-03-31 00:26:23', 2, 11),
	(1617121551007, '2021-03-30 16:25:50', '1617121541215', NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/springbooth7te4/upload/1617121548314.jpg', NULL, NULL, '是', NULL, 0, 0, NULL, 0, 11),
	(1617121653961, '2021-03-30 16:27:33', '1617121645328', NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/springbooth7te4/upload/1617121651129.jpg', NULL, NULL, '是', NULL, 0, 0, NULL, 0, 11),
	(1617121664506, '2021-03-30 16:27:44', '1617121656223', NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/springbooth7te4/upload/1617121661419.jpg', NULL, NULL, '是', NULL, 0, 0, NULL, 0, 11);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kechengxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704257004530 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1704256865485, '2024-01-03 04:41:05', 11, 32, 'kechengxinxi', '课程名称2', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian2.jpg'),
	(1704257004529, '2024-01-03 04:43:23', 11, 33, 'kechengxinxi', '课程名称3', 'http://localhost:8080/springbooth7te4/upload/kechengxinxi_fengmian3.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'yxwfkirgj1x4hxkwwyq6ew7thwp8qbg0', '2021-03-30 16:24:11', '2024-01-03 05:41:43'),
	(2, 11, '用户1', 'yonghu', '用户', 'rcrwn3wz4juyeub42efcp92s4dy5ppj5', '2024-01-03 04:40:27', '2024-01-03 05:43:06'),
	(3, 21, '教师1', 'jiaoshi', '教师', 'kcclsbseh0c82tnskpyr9l66s2z612za', '2024-01-03 04:42:51', '2024-01-03 05:42:51');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-30 16:18:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `zhaopian`, `beizhu`, `money`) VALUES
	(11, '2021-03-30 16:18:12', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbooth7te4/upload/yonghu_zhaopian1.jpg', '备注1', 100),
	(12, '2021-03-30 16:18:12', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbooth7te4/upload/yonghu_zhaopian2.jpg', '备注2', 100),
	(13, '2021-03-30 16:18:12', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbooth7te4/upload/yonghu_zhaopian3.jpg', '备注3', 100),
	(14, '2021-03-30 16:18:12', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbooth7te4/upload/yonghu_zhaopian4.jpg', '备注4', 100),
	(15, '2021-03-30 16:18:12', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbooth7te4/upload/yonghu_zhaopian5.jpg', '备注5', 100),
	(16, '2021-03-30 16:18:12', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbooth7te4/upload/yonghu_zhaopian6.jpg', '备注6', 100);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
