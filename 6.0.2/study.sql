-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-04-08 09:51:13
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `study`
--

-- --------------------------------------------------------

--
-- 表的结构 `qing_ad`
--

CREATE TABLE `qing_ad` (
  `id` int(11) UNSIGNED NOT NULL,
  `type_id` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qing_ad`
--

INSERT INTO `qing_ad` (`id`, `type_id`, `title`, `thumb`, `url`, `description`, `listorder`, `status`, `create_time`, `update_time`, `content`) VALUES
(1, 1, '第一张轮播图', '\\public\\upload\\pic/20200406\\9fb10a8dd507a404b0665dd34b4e3bb7.jpg', '', '', 0, 1, 0, 0, NULL),
(2, 1, '2', '\\public\\upload\\pic/20200406\\c23aa22f16be1925ee0b42d8c9ab74a5.jpg', 'http://www.study.com/index/index/company.html', '', 0, 1, 0, 0, NULL),
(3, 1, '3', '\\public\\upload\\pic/20200406\\e0510dd0d845aa62529df5dc0c2bf7b4.jpg', '', '', 0, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `qing_admin`
--

CREATE TABLE `qing_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(100) NOT NULL DEFAULT '0' COMMENT 'æƒé™å­—ç¬¦ä¸²',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `email` varchar(20) NOT NULL,
  `group_id` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qing_admin`
--

INSERT INTO `qing_admin` (`id`, `username`, `password`, `create_time`, `mobile`, `last_login_time`, `status`, `email`, `group_id`) VALUES
(1, 'root_qing', 'bc0570bcc63421dc0ed01e39c5a1e07a', 0, '0', 0, 1, '', '1');

-- --------------------------------------------------------

--
-- 表的结构 `qing_adtype`
--

CREATE TABLE `qing_adtype` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qing_adtype`
--

INSERT INTO `qing_adtype` (`id`, `name`) VALUES
(1, '首页轮播图'),
(2, '工厂环境图片'),
(3, '荣誉图片');

-- --------------------------------------------------------

--
-- 表的结构 `qing_archives`
--

CREATE TABLE `qing_archives` (
  `id` int(11) NOT NULL COMMENT '文档id',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `keywords` varchar(150) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `thumb` varchar(150) NOT NULL COMMENT '缩略图',
  `ishot` varchar(100) DEFAULT '0' COMMENT '文档属性',
  `click` mediumint(9) DEFAULT NULL COMMENT '点击量',
  `content` longtext COMMENT '内容',
  `cate_id` mediumint(9) NOT NULL COMMENT '所属栏目',
  `time` int(11) NOT NULL COMMENT '发布时间',
  `listorder` int(10) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qing_archives`
--

INSERT INTO `qing_archives` (`id`, `title`, `keywords`, `description`, `thumb`, `ishot`, `click`, `content`, `cate_id`, `time`, `listorder`, `url`, `status`) VALUES
(5, '为什么会有学霸？你质疑过自己的学习方法吗？', '', '', '', '0', NULL, NULL, 1, 1586139335, 0, '', 1),
(6, '《高糖陷阱》：恐怖的高糖危害', '', '', '', '0', NULL, NULL, 4, 1586139346, 8, '', 1),
(8, '春天花会开', '', '', '', '0', NULL, NULL, 1, 1586142495, 0, '', 1),
(9, '产品维修服务1', '', '', '', '0', NULL, NULL, 6, 1586226532, 0, '', 1),
(10, '链路负载均衡解决方案2', '', '', '', '0', NULL, NULL, 6, 1586226545, 0, '', 1),
(2, '这是一条不归路……', '', '', '', '0', NULL, NULL, 3, 1585992096, 8, '', 1),
(3, '在北方，有个春寒料峭的春天', '', '', '', '0', NULL, NULL, 3, 1585992130, 0, '', 1),
(7, '这个春天很美', '', '', '', '0', NULL, NULL, 1, 1586140792, 0, '', 1),
(11, '本地流量管理器3', '', '', '', '0', NULL, NULL, 6, 1586226554, 0, '', 1),
(12, '链路控制器-解决方案', '', '', '', '0', NULL, NULL, 5, 1586226601, 0, '', 1),
(13, '多链路负载均衡-解决方案', '', '', '', '0', NULL, NULL, 5, 1586226612, 0, '', 1),
(14, '服务器负载-解决方案', '', '', '', '0', NULL, '<p>民航局：入境不如实填报健康状况将入失信旅客“黑名单”</p><p>让违法者“一处失信、处处受限”</p><p>4月6日，国务院联防联控机制召开新闻发布会，介绍依法防控境外疫情输入最新情况。国家卫生健康委新闻发言人、宣传司副司长米锋说，“与我国接壤的边境国家疫情输入我国风险持续攀升，多省报告了境外输入病例的关联病例，防输入压力持续加大。要始终保持警惕，防范本土疫情反弹。”</p><p><br/></p><p>海关近期查获六起</p><p><br/></p><p>入境未如实填报健康状况案件</p><p><br/></p><p><br/></p><p>海关总署卫生检疫司副司长宋悦谦说，绝大多数进出境人员都能够遵守海关规定如实填报健康状况，但还有少数人员抱着侥幸心理，在填报健康申明卡时隐瞒疫情、掩盖症状，企图蒙混过关。</p><p><br/></p>', 5, 1586226621, 0, '', 1),
(15, 'BIG-LTM-4000S', '', '', '\\public\\upload\\pic/20200407\\18a061ba7e85e078b28a537cc00b901b.png', '0', NULL, NULL, 2, 1586227660, 0, '', 1),
(16, 'BIG-LTM-4001S', '', '', '\\public\\upload\\pic/20200407\\cdf4d8d897e0c7377c0cca67de3ca52e.jpg', '1', NULL, NULL, 2, 1586227671, 0, '', 1),
(17, 'BIG-LTM-4002S', '', '', '\\public\\upload\\pic/20200407\\5c1a03c49e45c38c826101db5b8dc891.jpg', '1', NULL, NULL, 2, 1586227682, 0, '', 1),
(18, 'BIG-LTM-4004S', '', '', '\\public\\upload\\pic/20200407\\dfa3c9c0af3368623db13db75e145be0.jpg', '1', NULL, NULL, 2, 1586227693, 0, '', 1),
(19, 'BIG-LTM-4005S', '', '', '\\public\\upload\\pic/20200407\\9c2e5561a0eb2d1c7b51bb7a1c8c6555.jpg', '1', NULL, NULL, 2, 1586227706, 0, '', 1),
(20, 'eao国产08系', '', '', '\\public\\upload\\pic/20200407\\3d45ec08849ec53afa908f4a3aa63af7.jpg', '0', NULL, NULL, 2, 1586227906, 0, '', 1),
(21, 'D系列触点磁性开关', '', '', '\\public\\upload\\pic/20200407\\1d8a941421eb7f57d9cbfaca4e30dcda.jpg', '0', NULL, NULL, 2, 1586227932, 0, '', 1),
(22, '防爆行程开关', '', '', '\\public\\upload\\pic/20200407\\d3bc85b44805c53795ab87ce7742dcd6.jpg', '0', NULL, NULL, 2, 1586227973, 0, '', 1),
(23, 'HEMERA在线气体分析仪', '', '', '\\public\\upload\\pic/20200407\\fe5e19dbdeb93b27532d762c119a9ba7.jpg', '0', NULL, NULL, 2, 1586228009, 0, '', 1),
(24, '投入式液位计', '', '', '\\public\\upload\\pic/20200407\\ef62eb67375b8e113f46c2dd2de5482d.jpg', '0', NULL, NULL, 2, 1586228037, 0, '', 1),
(25, '新型开关元件', '', '', '\\public\\upload\\pic/20200407\\01a78012267bab9667e6cc1d53e695ca.jpg', '0', NULL, NULL, 2, 1586228091, 0, '', 1),
(26, '射频电子开关', '', '', '\\public\\upload\\pic/20200407\\81cad8ba211f9b705e4d39e3da750c2c.jpg', '0', NULL, '<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200407/1586243970225240.jpg\" title=\"1586243970225240.jpg\" alt=\"hz_3.jpg\"/></p><table interlaced=\"enabled\"><tbody><tr class=\"ue-table-interlace-color-single firstRow\"><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">产品名称<br/></td><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">产品参数</td><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">产品分类</td></tr><tr class=\"ue-table-interlace-color-double\"><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">11</td><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">111</td><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">1111</td></tr><tr class=\"ue-table-interlace-color-single\"><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">22</td><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">222</td><td width=\"293\" valign=\"middle\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\" class=\"selectTdClass\">2222</td></tr></tbody></table><p><br/></p>', 2, 1586228627, 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `qing_category`
--

CREATE TABLE `qing_category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '栏目id',
  `cate_name` varchar(30) NOT NULL COMMENT '栏目名称',
  `seo_title` varchar(150) DEFAULT NULL COMMENT '栏目标题',
  `seo_keywords` varchar(150) DEFAULT NULL COMMENT '关键词',
  `seo_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：显示 0：隐藏',
  `jump_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '跳转到哪个栏目 0：不跳转',
  `thumb` varchar(150) DEFAULT NULL COMMENT '图片',
  `link` varchar(150) DEFAULT NULL COMMENT '栏目外链',
  `listorder` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `model_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '1' COMMENT '栏目所属模型',
  `bottom_nav` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在底部显示 1：是 0：否',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  `cate_img_url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qing_category`
--

INSERT INTO `qing_category` (`id`, `cate_name`, `seo_title`, `seo_keywords`, `seo_description`, `content`, `status`, `jump_id`, `thumb`, `link`, `listorder`, `model_id`, `bottom_nav`, `parent_id`, `cate_img_url`) VALUES
(1, '企业简介', '企业简介', '电子，公司', '企业简介', '<p style=\"text-align: center;\"><strong style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 24px;\">重庆大力电子科技有限公司</span></strong></p><p><br/></p><p>重庆大力电子科技有限公司是一家专业从事系统集成、IT外包、综合布线、楼宇自控、安防监控和综合网络服务的高新技术企业。拥有专业化的团队，优化的运作系统，稳健的财务管理，使得我们为客户提供的产品及服务得到了百分百的品质和信誉保证。主要产品有：贴片轻触开关，插件轻触开关，SS拨动开关，SK拨动开关，微型拨动开关，贴片USB插座，USB 2.0插座，插件USB接口，MINI USB插座，USB接口，MICRO USB插座，MK USB公座等产品。</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20200406/1586165202963398.png\" title=\"1586165202963398.png\" alt=\"1536734905131023.png\"/></p><p><br/></p><p><br/></p><p>　　近年来，凭借其坚实的技术实力、强劲的市场开拓能力和优秀的销售业绩，先后与国内外著名网络.公司建立了战略性合作伙伴关系。专业销售各品牌网络交换机、路由器、模块、网卡、防火墙等网络设备。同时，为满足广大客户需求，我公司特设立专业技术人员为客户设计网络方案，安装、调试网络设备等服务。</p><p><br/></p><p>　　公司坐落于重庆市江北区洪江大道021。</p><p><br/></p><p>　　全国统一咨询热线：86978888&nbsp;&nbsp;</p><p><br/></p>', 1, 0, '', '', 50, 1, 0, 0, NULL),
(2, '产品中心', '产品中心', '', '', NULL, 1, 0, '\\public\\upload\\pic/20200407\\776f7c6ca06803dcb088b0a62c3260d9.jpg', '', 50, 1, 0, 0, NULL),
(3, '产品分类1', '', '', '', NULL, 1, 0, '', '', 50, 1, 0, 2, NULL),
(4, '产品分类2', '', '', '', NULL, 1, 0, '', '', 50, 1, 0, 2, NULL),
(5, '解决方案', '解决方案解决方案', '解决方案的', '', NULL, 1, 0, '\\public\\upload\\pic/20200407\\d1ce64745157473aaa295da26369b571.jpg', '', 50, 1, 0, 0, NULL),
(6, '资讯动态', '资讯动态', '资讯动态资讯动态', '', NULL, 1, 0, '\\public\\upload\\pic/20200407\\2f093df2beef77d61c08d03593d49b8b.jpg', '', 50, 1, 0, 0, NULL),
(7, '联系我们', '联系我们', '好公司', '', '<p>重庆大力电子科技有限公司&nbsp;</p><p>专注于网络产品的销售、维保等服务</p><p>我们是中国专业网络通信服务商</p><p>全国统一咨询热线：86978888</p><p>联系地址：重庆市江北区洪江大道021</p><p><br/></p><p style=\"text-align: center;\"><iframe class=\"ueditor_baidumap\" src=\"http://www.study.com/public/static/admin2/ueditor/1.4.3/dialogs/map/show.html#center=114.326843,37.844642&zoom=10&width=530&height=340&markers=114.544125,38.02454&markerStyles=l,A\" frameborder=\"0\" width=\"534\" height=\"344\"></iframe></p><p style=\"text-align: center;\"><br/></p><p><img src=\"/ueditor/php/upload/image/20200407/1586225703548863.jpg\" title=\"1586225703548863.jpg\" alt=\"ewm.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 微信扫一扫 即时联系</span></p><p><br/></p>', 1, 0, '\\public\\upload\\pic/20200407\\a1138844f8274b51c39b4e136341fcde.jpg', '', 50, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `qing_config`
--

CREATE TABLE `qing_config` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '配置项id',
  `cname` varchar(60) NOT NULL COMMENT '中文名称',
  `ename` varchar(60) NOT NULL COMMENT '英文名称',
  `value` text NOT NULL COMMENT '默认值',
  `values` varchar(255) NOT NULL COMMENT '可选值',
  `field_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：输入框 2：文本域',
  `config_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：基本信息 2：联系方式 3：seo设置 '
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qing_config`
--

INSERT INTO `qing_config` (`id`, `cname`, `ename`, `value`, `values`, `field_type`, `config_type`) VALUES
(1, '网站名称', 'webname', '重庆大力电子科技有限公司', '', 1, 1),
(2, '网站域名', 'domain', 'www.study.com', '', 1, 1),
(13, 'SEO关键字', 'index_keywords', '电子', '', 1, 1),
(4, '版权信息', 'copyright', '', '', 1, 1),
(5, '备案号', 'beian', '京ICP备245005207号', '', 1, 1),
(6, '统计代码', 'cnzz', '', '', 2, 1),
(7, '地址', 'address', '重庆市江北区洪江大道021', '', 1, 2),
(8, '电话1', 'tel1', '021-86978888', '', 1, 2),
(9, '电话2', 'tel2', '', '', 1, 2),
(10, 'QQ', 'qq', '', '', 1, 2),
(11, '邮箱', 'email', '', '', 1, 2),
(12, '传真', 'fax', '', '', 1, 2),
(14, 'SEO描述', 'seo_description', '电子信息公司', '', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qing_flink`
--

CREATE TABLE `qing_flink` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

--
-- 转存表中的数据 `qing_flink`
--

INSERT INTO `qing_flink` (`id`, `name`, `url`) VALUES
(1, '百度', 'https://www.baidu.com/');

--
-- 转储表的索引
--

--
-- 表的索引 `qing_ad`
--
ALTER TABLE `qing_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- 表的索引 `qing_admin`
--
ALTER TABLE `qing_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `qing_adtype`
--
ALTER TABLE `qing_adtype`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `qing_archives`
--
ALTER TABLE `qing_archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`),
  ADD KEY `title` (`title`);

--
-- 表的索引 `qing_category`
--
ALTER TABLE `qing_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_name` (`cate_name`);

--
-- 表的索引 `qing_config`
--
ALTER TABLE `qing_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `qing_flink`
--
ALTER TABLE `qing_flink`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `qing_ad`
--
ALTER TABLE `qing_ad`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `qing_admin`
--
ALTER TABLE `qing_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `qing_adtype`
--
ALTER TABLE `qing_adtype`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `qing_archives`
--
ALTER TABLE `qing_archives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文档id', AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `qing_category`
--
ALTER TABLE `qing_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '栏目id', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `qing_flink`
--
ALTER TABLE `qing_flink`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
