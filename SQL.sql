-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 exam 的数据库结构
CREATE DATABASE IF NOT EXISTS `exam` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `exam`;

-- 导出  表 exam. usergrade 结构
CREATE TABLE IF NOT EXISTS ` usergrade` (
  `username` varchar(200) COLLATE utf8_bin NOT NULL,
  `examname` varchar(200) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  exam. usergrade 的数据：~0 rows (大约)
/*!40000 ALTER TABLE ` usergrade` DISABLE KEYS */;
/*!40000 ALTER TABLE ` usergrade` ENABLE KEYS */;

-- 导出  表 exam.a 结构
CREATE TABLE IF NOT EXISTS `a` (
  `num` int(11) NOT NULL,
  `timu` varchar(200) COLLATE utf8_bin NOT NULL,
  `A` varchar(200) COLLATE utf8_bin NOT NULL,
  `B` varchar(200) COLLATE utf8_bin NOT NULL,
  `C` varchar(200) COLLATE utf8_bin NOT NULL,
  `D` varchar(200) COLLATE utf8_bin NOT NULL,
  `right` varchar(200) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  exam.a 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `a` DISABLE KEYS */;
INSERT INTO `a` (`num`, `timu`, `A`, `B`, `C`, `D`, `right`, `grade`) VALUES
	(1, '从模拟信号变换成数字信号的过程称为', '调制', '解调', '解压缩', '压缩', 'B', 5),
	(2, '使计算机病毒传播范围最广的媒介是____', '硬磁盘', '软磁盘', '内部存储器', '互联网', 'D', 5),
	(3, '内存中的每个基本单元，都被赋予一个唯一____，称为地址', '容量', '字节', '序号', '功能', 'C', 5),
	(4, '内存储器可分为随机存取存储器和____', '硬盘存储器 ', '动态随机存储器', '只读存储器', '光盘存储器', 'C', 5),
	(5, '计算机正常关机后____中的信息不会消失', 'ROM', 'RAM', 'CACHE', 'CPU', 'A', 5),
	(6, '关于因特网中的WWW服务，以下哪种说法是错误的____', 'WWW服务器中存储的通常是符合HTML规范的结构化文档', 'WWW服务器必须具有创建和编辑Web页面的功能', 'WWW客户端程序也被称为WWW浏览器', 'WWW服务器也被称为Web站点', 'B', 5),
	(7, '某系统中有13 台磁带机，K 个进程共享这些设备，每个进程最多请求使用3 台，则系统不会死锁的K值是', '不小于3', '不大于6', '不大于13', '在6与10之间', 'B', 5),
	(8, '完整的冯?诺依曼结构的计算机，其硬件系统包括____', 'CPU、内存、键盘、显示器', '运算器、控制器、键盘、显示器', 'CPU、存储器、输出设备、输入设备', 'CPU、存储器、键盘、鼠标器、显示器', 'C', 5),
	(9, '计算机的硬件系统是由____组成', 'CPU、控制器、存储器、输入设备和输出设备', '运算器、控制器、存储器、输入设备和输出', '运算器、存储器、输入设备和输出设备', 'CPU、运算器、存储器、输入设备和输出设备', 'B', 5),
	(10, '操作系统是系统资源的管理者，不能管理____', '计算机所有软件', '计算机所有硬件', '计算机所有数据', '计算机的使用者', 'D', 5),
	(11, '半导体只读存储器（ROM）与半导体随机存储器（RAM）的主要区别在于____', 'ROM 可以永久保存信息，RAM在掉电后信息会丢失', 'ROM 掉电后，信息会丢失，RAM则不会', 'ROM是内存储器，RAM是外存储器', 'ROM是外存储器，RAM是内存储器', 'A', 5),
	(12, '现在网上有个比较流行的词叫闪客，通常的把什么样的人叫做闪客', '擅长用PhotoShop绘画', '擅长用电脑制作音乐', '擅长用Flash制作动画', '擅长用电脑写作', 'C', 5),
	(13, '英文缩写URL所表示的中文含义是____', '通用串行总线', '文件传输协议', '电子邮件协议', '统一资源定位器', 'D', 5),
	(14, '目前校园网一般采用的拓扑结构为____', '总线形', '星型', '环型', '树型', 'B', 5),
	(15, '调制解调器的主要作用是实现___', '图形与图像之间的转换', '广播信号与电视信号的转换', '音频信号与视频信号的转换', '模拟信号与数字信号的转换', 'D', 5),
	(16, '操作系统的主要功能是针对计算机系统的四类资源进行有效的管理，该四类资源是____', '处理器、存储器、打印机和文件系统', '处理器、硬盘、键盘和显示器', '处理器、网络设备、I/O设备和显示器', '处理器、存储器、I/O设备和文件系', 'D', 5),
	(17, '图像数据压缩的目的是____', '为了符合ISO标准，便于处理 ', '为了符合各国的电视制式', '为了减少数据存储量，利于传输 ', '为了图像编辑的方便', 'C', 5),
	(18, '计算机将程序和数据存放在机器的______里', '控制器', '存储器', '输入/ 输出设备', '运算器', 'B', 5),
	(19, '人们通常说的扩计算机的内存，指的是', 'ROM ', 'CMOS ', 'CPU', 'RAM', 'D', 5),
	(20, '使用电子邮件时，有时收到的邮件有古怪字符，既出现了乱码，这是由于____', '病毒', '接收方操作系统有问题 ', '发送方计算机故障', '编码未统一', 'D', 5);
/*!40000 ALTER TABLE `a` ENABLE KEYS */;

-- 导出  表 exam.b 结构
CREATE TABLE IF NOT EXISTS `b` (
  `num` int(11) NOT NULL,
  `timu` varchar(200) COLLATE utf8_bin NOT NULL,
  `A` varchar(200) COLLATE utf8_bin NOT NULL,
  `B` varchar(200) COLLATE utf8_bin NOT NULL,
  `C` varchar(200) COLLATE utf8_bin NOT NULL,
  `D` varchar(200) COLLATE utf8_bin NOT NULL,
  `right` varchar(200) COLLATE utf8_bin NOT NULL,
  `selection` varchar(200) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  exam.b 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `b` DISABLE KEYS */;
INSERT INTO `b` (`num`, `timu`, `A`, `B`, `C`, `D`, `right`, `selection`, `grade`) VALUES
	(1, '中央处理器中主要包括___', '内存和计算器', '控制器和运算器', '只读存储器和随机存储器', '内存储器、控制器和运算器', 'B', '', 5),
	(2, '在Windows中，关于文件夹哪个说法是不正确的____', '各级目录称为文件夹', '不同文件夹中的文件不能有相同的文件名', '文件夹中可以存放文件和其它文件夹', '对文件夹的复制操作和文件是相同的', 'B', '', 5),
	(3, '计算机内部信息的表示及存储往往采用二进制形式，采用这种形式的最主要原因是____', '计算方式简便', '表示形式单一', '避免和十进制相混淆', '与逻辑硬件相适应', 'D', '', 5),
	(4, 'ISP指的是____', '因特网的专线接入方式', '因特网服务提供商', '拨号上网方式', '因特网内容', 'B', '', 5),
	(5, '为了指导计算机网络的互联、互通和互操作，ISO颁布了OSI参考模型，其基本结构分为____', '6层', '5层', '7层', '4层', 'C', '', 5),
	(6, 'SI（开放系统互联）参考模型的最低层是____', '传输层', '网络层', '物理层', '物理层', 'C', '', 5),
	(7, '在Word 窗口中，按住____键的同时键入字母F即可打开“文件”菜单', 'Ctrl', 'Alt', 'Shift', 'Tab', 'B', '', 5),
	(8, '网络中计算机之间的通信是通过____实现的，它们是通信双方必须遵守的约定', '网卡', '通信协议', '磁盘', '电话交换设备', 'B', '', 5),
	(9, '计算机网络的一个突出优点是', '资源共享', '运算速度快', '费用低廉', '数据传输速度快', 'A', '', 5),
	(10, 'word 具有的功能是____', '表格处理', '绘制图形', '自动更正', '以上三项都是', 'D', '', 5),
	(11, '下列不属于网络拓扑结构形式的是', '星形', '总线', '环形', '分支', 'D', '', 5),
	(12, '下列关于局域网特点的叙述中，不正确的是___', '局域网的覆盖范围有限', '误码率高', '有较高的传输速率', '相对于广域网易于建立、管理、维护和扩展', 'B', '', 5),
	(13, '在 Windows 中有两个管理系统资源的程序组，它们是____', '“我的电脑”和“控制面板”', '“资源管理器”和“控制面板”', '“我的电脑”和“资源管理器”', '“控制面板”和“开始”菜单', 'C', '', 5),
	(14, '计算机的三类总线中，不包括____', '控制总线', '地址总线', '传输总线', '数据总线', 'C', '', 5),
	(15, '在微型计算机中，内存储器，通常采用____', '光存储器', '磁表面存储器', '半导体存储器', '磁芯存储器', 'C', '', 5),
	(16, '在微机中，bit 的中文含义是____', '二进制位', '双字', '字节', '字', 'A', '', 5),
	(17, '计算机能够自动、准确、快速地按照人们的意图进行运行的最基本思想是____', '采用超大规模集成电路', '采用CPU作为中央核心部件', '采用操作系统', '存储程序和程序控制', 'D', '', 5),
	(18, '946年世界上有了第一台电子数字计算机，奠定了至今仍然在使用的计算机___', '外型结构', '总线结构', '存取结构', '体系结构', 'D', '', 5),
	(19, '我们说某计算机的内存是16MB，就是指它的容量为____字节', '16*1024*1024', '16*1000*1000', '16*1024', '16*1000', 'A', '', 5),
	(20, '通常在没有特别说明时，电子计算机都是指微机，即微型计算机。下列几项微机的别名中，哪一项不正确', 'PC机', '微电机', '微电脑', '个人电脑', 'B', '', 5);
/*!40000 ALTER TABLE `b` ENABLE KEYS */;

-- 导出  表 exam.c 结构
CREATE TABLE IF NOT EXISTS `c` (
  `num` int(11) NOT NULL,
  `timu` varchar(200) COLLATE utf8_bin NOT NULL,
  `A` varchar(200) COLLATE utf8_bin NOT NULL,
  `B` varchar(200) COLLATE utf8_bin NOT NULL,
  `C` varchar(200) COLLATE utf8_bin NOT NULL,
  `D` varchar(200) COLLATE utf8_bin NOT NULL,
  `right` varchar(200) COLLATE utf8_bin NOT NULL,
  `selectoin` varchar(200) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  exam.c 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `c` DISABLE KEYS */;
INSERT INTO `c` (`num`, `timu`, `A`, `B`, `C`, `D`, `right`, `selectoin`, `grade`) VALUES
	(1, '在Word 的编辑状态，设置了标尺，可以同时显示水平标尺和垂直标尺的视图方式是____', '普通方式', '页面方式', '大纲方式', '全屏显示方式', 'B', '', 5),
	(2, '在Windows 中，有些菜单项的右端有一个向右的箭头，则表示该菜单项____', '将弹出下一级菜单', '当前不能选取执行', '已被选中', '将弹出一个对话框', 'A', '', 5),
	(3, '现在Internet上的电子书籍多数采用PDF格式存储和传递，这种格式的文件是用____软件来打开并阅读的', 'Microsoft Office', 'Real Player', 'Adobe Acrobat Reader', 'ACDsee', 'C', '', 5),
	(4, '我们拨号上网时所用的被俗称为“猫”的设备是____', '编码解码器', '解调调制器', '调制解调器', '网络链接器', 'C', '', 5),
	(5, 'Internet与www的关系是____', '都表示互联网，只不过名称不同', 'www是Internet上的一个应用功能 ', 'Internet与www没有关系', 'www是Internet上的一种协议', 'B', '', 5),
	(6, '在下面的描述中，正确的是____', '计算机病毒只能传染给可执行文件', '计算机软件是指存储在软盘中的程序', '计算机每次启动的过程之所以相同，是因为RAM 中的所有信息在关机后不会丢失', '硬盘虽然装在主机箱内，但它属于外存', 'C', '', 5),
	(7, '在Windows 在Windows中，经常有一些菜单选项呈暗灰色，这表示', '这些项在当前无效', '系统运行发生故障', '这些项的处理程序已装入', '应用程序本身有有缺陷', 'A', '', 5),
	(8, '需要网络服务器、个人计算机、网间连接器、网线等设备外，还必须有下列哪一项硬件____', '微波接收装置', '卫星地面站', '网络接口卡', '电信局的交换设备', 'C', '', 5),
	(9, '服务器模式的局域网，其网络硬件主要包括服务器、工作站、网卡和____', '网络拓扑结构', '计算机', '传输介质', '网络协议', 'C', '', 5),
	(10, '衡量电子计算机的性能时，除了用其运算速度、字长等主要指标以外，还用哪项来表示____', '主存储器容量的大小', '外部设备的多少', '计算机的体积', '计算机的制造成本', 'A', '', 5),
	(11, '中央处理器中主要包括___', '内存和计算器', '控制器和运算器', '只读存储器和随机存储器', '内存储器、控制器和运算器', 'B', '', 5),
	(12, '在Windows中，关于文件夹哪个说法是不正确的____', '各级目录称为文件夹', '不同文件夹中的文件不能有相同的文件名', '文件夹中可以存放文件和其它文件夹', '对文件夹的复制操作和文件是相同的', 'B', '', 5),
	(13, '计算机内部信息的表示及存储往往采用二进制形式，采用这种形式的最主要原因是____', '计算方式简便', '表示形式单一', '避免和十进制相混淆', '与逻辑硬件相适应', 'D', '', 5),
	(14, 'ISP指的是___', '因特网的专线接入方式', '因特网服务提供商', '拨号上网方式', '因特网内容', 'B', '', 5),
	(15, '为了指导计算机网络的互联、互通和互操作，ISO颁布了OSI参考模型，其基本结构分为____', '6层', '5层', '7层', '4层', 'C', '', 5),
	(16, 'SI（开放系统互联）参考模型的最低层是____', '传输层', '网络层', '物理层', '应用层', 'C', '', 5),
	(17, '在Word 窗口中，按住____键的同时键入字母F即可打开“文件”菜单', 'Ctrl', 'Alt', 'Shift', 'Tab', 'B', '', 5),
	(18, '网络中计算机之间的通信是通过____实现的，它们是通信双方必须遵守的约定', '网卡', '通信协议', '磁盘', '电话交换设备', 'B', '', 5),
	(19, '计算机网络的一个突出优点是', '资源共享', '运算速度快', '费用低廉', '数据传输速度快', 'A', '', 5),
	(20, 'word 具有的功能是____', '表格处理', '绘制图形', '自动更正', '以上三项都是', 'D', '', 5);
/*!40000 ALTER TABLE `c` ENABLE KEYS */;

-- 导出  表 exam.test 结构
CREATE TABLE IF NOT EXISTS `test` (
  `testname` varchar(200) COLLATE utf8_bin NOT NULL,
  `tapper` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  exam.test 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`testname`, `tapper`) VALUES
	('A', '青眼白龙'),
	('B', '翼神龙'),
	('C', '巨神兵');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- 导出  表 exam.username 结构
CREATE TABLE IF NOT EXISTS `username` (
  `sno` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `password` varchar(200) COLLATE utf8_bin NOT NULL,
  `dept` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  exam.username 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `username` DISABLE KEYS */;
/*!40000 ALTER TABLE `username` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
