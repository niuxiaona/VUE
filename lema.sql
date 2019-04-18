-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-04-11 14:07:45
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lema`
--

-- --------------------------------------------------------

--
-- 表的结构 `lema_comment`
--

CREATE TABLE `lema_comment` (
  `id` int(11) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_comment`
--

INSERT INTO `lema_comment` (`id`, `nid`, `content`, `ctime`) VALUES
(1, 1, '哈哈哈', '2019-03-23 10:04:30'),
(2, 2, '真好', '2019-03-23 10:11:51'),
(3, 3, '哈哈哈哈', '2019-03-23 10:17:10'),
(4, 4, 'OK', '2019-03-23 10:22:51'),
(5, 5, 'yes', '2019-03-23 10:23:05'),
(6, 6, '交际', '2019-03-23 10:24:18'),
(7, 7, '水晶珠', '2019-03-23 10:25:33'),
(8, 8, '珠绣', '2019-03-23 10:27:08'),
(9, 9, '新系列', '2019-03-23 10:28:09'),
(10, 10, '巴黎', '2019-03-23 10:29:19'),
(11, 11, '北方', '2019-03-23 10:30:21'),
(12, 12, '搞定', '2019-03-23 10:31:18'),
(13, 13, '色板', '2019-03-23 10:32:11'),
(14, 14, '本机', '2019-03-23 10:33:00'),
(15, 15, '兰玉', '2019-03-23 10:34:05'),
(16, 16, '注明', '2019-03-23 10:34:55'),
(17, 17, '在古', '2019-03-23 10:35:59'),
(18, 18, '位于', '2019-03-23 10:38:57'),
(19, 19, '灵感', '2019-03-23 10:41:13'),
(20, 20, '美轮美奂', '2019-03-23 10:43:36'),
(21, 1, 'ouou', '2019-03-29 20:00:53'),
(22, 1, 'hh', '2019-03-29 20:00:58'),
(23, 1, '好呀', '2019-03-29 20:01:03'),
(24, 1, '真的吗', '2019-03-29 20:01:08'),
(25, 1, '好的', '2019-03-29 20:01:13');

-- --------------------------------------------------------

--
-- 表的结构 `lema_fournew`
--

CREATE TABLE `lema_fournew` (
  `id` int(11) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `smalltitlle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_fournew`
--

INSERT INTO `lema_fournew` (`id`, `img_url`, `title`, `smalltitlle`) VALUES
(1, 'http://127.0.0.1:3000/img/firstnew/2dd5dc26c9a32e71117902d736117a1b_380x550.jpg', '白色经典', '风格-Classic新娘'),
(2, 'http://127.0.0.1:3000/img/firstnew/5b1a2d5b53c960e4c54c204eab56b9db_380x550.jpg', '白色恋人', '风格-Classic新娘'),
(3, 'http://127.0.0.1:3000/img/firstnew/48c4d3f0213a1050f0aa2a3d36aaa06e_380x550.jpg', '复古轻奢', '风格-Classic新娘'),
(4, 'http://127.0.0.1:3000/img/firstnew/a076a97eee42103d90495d8ffac391e7_380x550.jpg', '蜜时光年', '风格-Classic新娘'),
(5, 'http://127.0.0.1:3000/img/firstnew/a9422155fee560520991ec125a660d8b_380x550.jpg', '春暖花开', '风格-Classic新娘'),
(6, 'http://127.0.0.1:3000/img/firstnew/a2db559bb95a631e569df555c78eb14b_380x550.jpg', '简欧浪漫', '风格-Classic新娘'),
(7, 'http://127.0.0.1:3000/img/firstnew/78cdc5e411eec73f8b9ca1774730c80c_380x550.jpg', '唯爱', '风格-Classic新娘'),
(8, 'http://127.0.0.1:3000/img/firstnew/e95f6f15e6c7d3bb439b7fe3a4aea389_380x550.jpg', '摘星如梦', '风格-Classic新娘'),
(9, 'http://127.0.0.1:3000/img/firstnew/06e6f7723041d72e025eaf0d2e668e6e_380x550.jpg', '星光恋人', '风格-Classic新娘'),
(10, 'http://127.0.0.1:3000/img/firstnew/67e98c40e21a85bf7b0d63a57c6ba382_380x550.jpg', '暮色晚歌', '风格-Classic新娘'),
(11, 'http://127.0.0.1:3000/img/firstnew/bfbd68272c33aa781a6e27cfe633c321_380x550.jpg', '瑾色恋曲', '风格-Classic新娘'),
(12, 'http://127.0.0.1:3000/img/firstnew/d77136b881a09fc7f30fbe8247f2bed8_380x550.jpg', '倾心一见', '风格-Classic新娘');

-- --------------------------------------------------------

--
-- 表的结构 `lema_login`
--

CREATE TABLE `lema_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(25) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_login`
--

INSERT INTO `lema_login` (`id`, `uname`, `upwd`) VALUES
(1, 'tom', '202cb962ac59075b964b07152d234b70'),
(2, 'jerry', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- 表的结构 `lema_news`
--

CREATE TABLE `lema_news` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_news`
--

INSERT INTO `lema_news` (`id`, `img_url`, `title`, `ctime`, `content`) VALUES
(1, 'http://127.0.0.1:3000/img/t019143b4a317103678.jpg', '鱼尾裙的样式，每一个褶皱栩栩如生', '2019-03-01 19:39:04', '婚礼作为走向婚姻殿堂的入口，自然神圣高贵。而当场所穿的婚纱也是很多小姐姐憧憬的对象。随着时代的不断发展，人们的思维方式也发生了不小的改变，婚纱不再只有白色或红色。很多人也开始选择黑色，粉色，紫色等。之前，婚纱蛋糕在抖音上火了，下面，大家跟小编一起来看。“婚纱蛋糕”不是一般蛋糕的大小，而是与正常身高相似的大小，也是十分惊艳。每一款蛋糕都十分逼真，不少店铺都直接做一款放在橱窗里，远远望去还以为是家婚纱店。也是吸引大批小姐姐前来欣赏。不少网友表示：一辈子应该穿一次美美的婚纱，吃一次甜甜的婚纱蛋糕，真是人间美事。这一款蛋糕做出了鱼尾裙的样式，每一个褶皱都栩栩如生。还用一颗颗紫色“珍珠”镶嵌在白色奶油上，给人看起来十分高贵。模特还配了一款珍珠项链，与衣服相呼应。而另一款是蓬蓬的大裙摆，相信萌萌的妹子一定很喜欢它。裙子的裙摆像是撒了一层椰蓉，显的像羽毛一样软绵绵的，让人感觉十分精致。'),
(2, 'http://127.0.0.1:3000/img/67631453945131220.png', '教你如何找到一辈子只穿一次的嫁衣”', '2019-03-02 19:39:04', '准新娘们大概会遇到的一个问题，就是当你在微博、小红书、婚礼纪等等一类平台寻求“婚纱到底应该网购还是实体店定制”？时，只会更加迷茫。当你们以为做实体的我们会说实体店一定比网购好？ 答案是否定的，我认为找到那一家最适合你的店才是关键，无关实体店还是网店。确认了合适的婚纱店，那么接下来就是挑选婚纱、礼服、秀禾……小编也希望通过自己对婚纱的了解帮助准新娘们挑到最适合你的婚纱，做最美的新娘。探店之前尽量去了解一些关于婚纱面料，品牌的知识，一定能用得到。婚纱店一般都是提前预约试穿的，在来之前可以预约你喜欢的礼服师，或者到了店里看到喜欢的礼服师及时更换。穿婚纱不像我们日常衣服，会比较繁琐，有的婚纱也会比较重，礼服师每天要给多位新娘试穿，也是比较辛苦的，当然了这是工作，辛苦是应该的，但我们作为顾客要对她们有稍微一点的理解，我相信礼服师会对我们更加用心，并且有什么好的优惠福利都会不留余力的告诉你。'),
(3, 'http://127.0.0.1:3000/img/1955407272296.jpg', '苏州意骏玛莎拉蒂白色情人节婚纱主题秀', '2019-03-03 19:39:04', '白色，作为纯洁、真实、诚挚、神圣的象征，在白色情人节这个充满纯洁甜蜜的日子，带给我们期盼和幸福。而婚礼上一袭洁白的婚纱更是象征着纯洁与高贵，是每个女生的向往。2019年3月17日，由苏州意骏玛莎拉蒂携手番茄高级私定婚纱举办的“诗情花意、纯真不渝”婚纱主题秀在苏州意骏展厅中浪漫开启。作为将设计美感与工艺奉为灵魂的玛莎拉蒂，和番茄高定私定婚纱在“奢华”定义上完美契合，双方携手推出此次活动，致力于为客户提供更为尊贵的非凡体验。活动当天，多位玛莎拉蒂客户与嘉宾共同体验到了玛莎拉蒂所带来的纯正艺术设计与精美绝伦高端定制婚纱的奢华之旅。　　白色作为婚纱颜色中的主流色，有着深厚的历史根源。在召主统治时期，妇女地位相对低下，人们十分看重女子的贞洁，于是这种观念反映在了婚纱上，也代表新娘如孩童般的天真无邪。在中国则寓意百合，百年好合，穿上婚纱的新娘子就像百合仙子一样。作为追求设计美感与极致体验的玛莎拉蒂，更善于发现这份源自内心的细腻。此刻的新娘们仿佛化作仙女下凡，与纯白色的玛莎拉蒂共同穿越到亚平宁半岛上恬静的摩德纳，开启一场意式主题盛宴。'),
(4, 'http://127.0.0.1:3000/img/h02.jpg', '经典回潮 穿越百年的复古情怀', '2019-03-04 19:39:04', 'LANYU品牌再次回归巴黎，于2016年1月26日举办主题为“Vintage”的新系列高级时装定制艺术展。本次艺术展展出了19件高定服装，设计师兰玉对1920-1950年复古服装风潮、东方唯美色调进行全新诠释，并邀请到超模陈碧舸到场助阵。'),
(5, 'http://127.0.0.1:3000/img/7844156.jpg', '陈碧舸演绎2016LANYU高级定制春夏系列', '2019-03-05 19:39:04', '作为唯一进驻巴黎大皇宫的高定婚纱设计师，兰玉女士已经是第五次在巴黎向时尚界展示她的创作。本次作品的灵感源自20世纪早期和中期的西方复古风潮，完全女性化的廓形；以东方唯美色调，绛红、深蓝、墨绿、香槟金、珍珠白为主色调，营造出东方女性独特的优雅矜持的“禁欲系”画风。充满设计感的西方极简廓型，融合古典东方装饰手法和精致苏绣手工艺，整个“Vintage”系列充满戏剧张力，真切表现出Art Deco风格。'),
(6, 'http://127.0.0.1:3000/img/845894556.jpg', '巴黎大皇宫内 重现30年代复古沙龙', '2019-03-21 19:39:05', '艺术展依然选择在巴黎大皇宫内进行，整个秀场被改造成30年代的复古沙龙，水晶灯的倒影折射到精美的珠绣礼服上，流光溢彩的复古摩登。一改往日恢弘的舞台设置，此次从古董吊灯、欧式古典沙发到供应茶点的宫廷式手推车，使人时刻感觉置身20世纪中期的华丽优雅。延续品牌一贯传播东方美学的初衷，每一款礼服的设计都融入古典东方元素。'),
(7, 'http://127.0.0.1:3000/img/7984144.jpg', '缘起苏绣 高端工艺打造精致细节', '2019-03-21 19:39:05', '设计师兰玉成长自苏绣世家，对手工艺有着极高的要求。LANYU Haute Couture也秉承了注重手工艺的特点。此次除了家传的“兰氏绣坊”再一次大展技艺，绣娘们贡献了最美的手工点缀于礼服上。手工珠绣、蕾丝和流苏也被大量运用于领口，后背，腰间和袖口。胸前和裙摆的位置则使用网纱、珍珠、亮片和管状手工装饰予以点缀。随处可见的珠绣、编织流苏是本次高定系列的重点，每一颗细小的水晶珠都是经验丰富的老师傅用透明线缀于薄纱之上。'),
(8, 'http://127.0.0.1:3000/img/98789456.jpg', 'LANYU高级定制春夏”Vintage”系列手工细节', '2019-03-21 19:39:05', '除了珠绣，立体装饰的花朵纹案，也成为展示服装中重手工的部分。材质上，金属光泽的丝绸面料、丝绒质地的真丝，以复古的二方和四方连续图案布满，几何的装置艺术由此明显可见。兰玉有着深切的唐宋情怀，经常把东方传统元素带到设计中。此次也不例外，云肩、缂丝等极具东方代表性的文化符号被凸显。由细密的珠串编织而成的云肩，是经十余位师傅数百小时串连而成，珍珠和水晶坠于脖颈之间，尽显流光溢彩的风情。'),
(9, 'http://127.0.0.1:3000/img/8989451.jpg', '流线型剪裁 将东方美学中的性感完美展现', '2019-03-21 19:39:05', '新系列高定展示服装线条细长且狭窄，流线型的剪裁，达到贴身的惊艳效果。穿插使用在双肩及袖筒的透明薄纱令肌肤若隐若现，使层叠的服装仍旧能透露出东方美学的性感。'),
(10, 'http://127.0.0.1:3000/img/89484151564894.jpg', '“一顾•再顾”，携不可方物之美，倾城倾国倾世', '2019-03-21 19:39:05', '7月9日，巴黎高定时装周上，中国设计师兰玉在大皇宫再度开启华丽的幕布，发布了LANYU 2015秋冬“一顾·再顾”高级定制系列。'),
(11, 'http://127.0.0.1:3000/img/983230012.jpg', '绝世之美 倾国倾城', '2019-03-21 19:39:05', '“北方有佳人，绝世而独立。一顾倾人城，再顾倾人国。宁不知倾城与倾国？佳人难再得！”西汉人李延年的诗句悠远流传，设计师兰玉则被诗中李夫人绝色善舞的风姿深深震撼，以此为灵感，这位85后的年轻设计师将自己潜心设计、融入奢美苏绣和精湛手工的心血之作一一呈现，融入独特廓形和摩登设计，再现李夫人绝世独立之美，以倾国倾城、摄人心魄的中国女性魅力征服巴黎大皇宫。'),
(12, 'http://127.0.0.1:3000/img/2002154.jpg', '经典面料 精妙剪裁', '2019-03-21 19:39:05', '这一高定系列的时装廓形汲取了汉服的特点，结合现代元素，精妙联袂出崭新的风格。精良的剪裁和褶皱细节也共同烘托出女性柔美性感的沙漏身型。面料甄选纯真丝材质的绡、生丝缎，以及汉服中最经典的手工麻（夏布）。'),
(13, 'http://127.0.0.1:3000/img/56151021023.jpg', '东方色彩 禅意化境', '2019-03-21 19:39:05', '色板则更具东方禅意化境，与LANYU品牌十年回归初心的意念遥相呼应：竹青色、鸦青色、檀色、黛蓝色和胭脂色，而淡雅的灰色、白色则与赤色相衬。'),
(14, 'http://127.0.0.1:3000/img/002156454.jpg', '解构设计打造强烈戏剧感', '2019-03-21 19:39:05', '本季最为鲜明的解构设计元素营造出前所未有的震撼效果：汉服中“交领右衽”、“系带隐扣” 的特点被突显和扩大，层层叠叠的“交领右衽”形成强烈的戏剧感。'),
(15, 'http://127.0.0.1:3000/img/4841561521.jpg', '一顾再顾 九九归一', '2019-03-21 19:39:05', '兰玉以中国传统文化中代表着无限、“九九归一”的吉祥数字“9”，演绎压轴款9层衣。在日本，传统白色婚礼服因为有12层被称为12单，因而9层衣被称为9单。与此同时，李夫人的画像则经由技艺卓绝的苏绣形式在裙摆上生动呈现，秋波流转，神采绰约，让人不禁一顾，再顾，吟唱出那曲《北方有佳人》！'),
(16, 'http://127.0.0.1:3000/img/89484151.jpg', '琴弦合奏 柔美空灵', '2019-03-21 19:39:05', '著名音乐人林海特别为LANYU 2015秋冬高定系列发布秀创作走秀音乐。作品融合了浓郁的中国与西方元素，音乐中水滴声贯穿全曲，融合着古琴柔美空灵的音色，一直到末段竹笛主旋律的出现，都在描绘李夫人的柔美之姿。而曲目中编钟的出现，展现皇家宫廷的庄严；中国民族打击乐的加入，更将全盛时期的汉朝繁荣展现的淋漓尽致。同时，西方管弦乐与西方和声的加入，烘托服装中西结合的特质。点缀其间的电子乐元素，则在赞美兰玉这位年轻而才华横溢的中国设计师。'),
(17, 'http://127.0.0.1:3000/img/10464894151.jpg', '致敬古典 征服巴黎大皇宫', '2019-03-21 19:39:05', '在LANYU 2015秋冬“一顾·再顾”高定系列致敬中国古典女性之际，大皇宫的观众也被兰玉的设计所倾倒，融汇中西的LANYU高级定制，携不可方物之美，倾城倾国倾世。'),
(18, 'http://127.0.0.1:3000/img/5648414561.jpg', '巴黎大皇宫（Grand Palais）', '2019-03-28 19:39:05', '位于巴黎香榭丽舍大道，是为了举办1900年世界博览会所兴建，是完美结合古典主义、新艺术主义以及玻璃构造的辉煌建筑杰作，如今这座迄今100年的历史建筑已成为巴黎的象征，在这里会举办国家级的庆典。 而大皇宫还意味着高级定制的最高殿堂，每年全球只有十几家品牌可以跻身于此。在这之前，必须经过法国高级时装工会严苛的资质审核。作为历史悠久的权威机构，法国高级时装工会成立于1973年，其历史可追溯至1868年，由以下三个联合会组成：高级时装协会、高级成衣设计师协会、高级男装协会。其拥有的一百多名成员，涵盖了世界各地所有的时尚奢侈品牌，以及众多服装设计大师，是世界时尚业界的权威组织和国际标志。'),
(19, 'http://127.0.0.1:3000/img/68748945.jpg', '中国设计师筑梦巴黎 兰玉高定闪耀大皇宫', '2019-03-21 19:39:05', '在巴黎高定时装周上来自中国的设计师兰玉发布了LANYU Haute Couture 2015春夏“蝶舞迷香”系列，在巴黎大皇宫展开一幅壮丽的中国画卷，以绯红、浓烈的色彩渲染出一部凄美、悲壮的古典爱情史诗。设计风格上延续品牌标志性细腰丰胸的沙漏廓形，在富丽堂皇的欧式三维立体剪裁中揉入苏绣技艺，将蕴含东方美学的兰玉礼服带到西方顶级时尚殿堂。传承千年的中国手工艺术在大皇宫焕发出迷人魅力。当设计师兰玉看到宋徽宗以“瘦金体”挥就的四个字：“蝶舞迷香”时，立即联想到化蝶般的“爱到哀伤”，这反而是女人所向往的爱情。从初遇爱人、热恋、到离伤，不同时期的女性有着不同的感受。兰玉由此获得启发，幻化出这一季廓型的灵感。 '),
(20, 'http://127.0.0.1:3000/img/151997926.jpg', '中国风“点绛唇”加红色下眼线的独特妆容', '2019-03-21 19:39:05', '当天，巴黎大皇宫(Grand Palais)被装点成当代装置艺术迷宫，中国风“点绛唇”加红色下眼线的独特妆容凸显哀伤凄美之色，红色长裙的模特穿行于纯净朦胧的迷宫中，带来震撼的视觉效果，犹如一篇篇流动的爱情箴言。设计师兰玉颠覆了传统的白色，以最能够代表东方、最炽烈的红色为基调，用朱红色、铁红色等不同的红表现女性对爱的理解，由浅至深，由灿烂至沉淀，是从懵懂到成熟的爱情历程。这也是兰玉永恒追寻的命题。“爱情是永恒的话题，我执迷于用女性的身体曲线去诠释爱情，如何将它用富有生命的设计表达出来。”她娓娓道来。 模特们在视线虚幻的艺术装置间穿行，华丽的时装流转出东方的爱情悲歌：第一部分的主题是传承，将新颖的裙装廓型与苏绣图案相结合，表达懵懂的爱意，是女性对爱情最初的理解；第二部分裙装华丽闪耀，代表热恋时的美丽与夺目。高级蕾丝定制工坊的金属光泽感蕾丝与红色水晶，将美感推向极致；第三部分则充满艺术张力，女性终于品尝爱恨别离与悲伤幻灭。红裙廓型和材质张扬恣意，裙摆如火焰般蹿动，充满撕裂的效果。悱恻动人的爱情将戏剧冲突推至高潮，如梁祝化蝶，生死契阔，为发布会写下终章。整个系列中的苏绣灵感便源自宋徽宗的古典绘画作品，以极致之美一一呈现。现场宛若时光停滞，一幕幕秀丽山水、花鸟蜂蝶在裙裾飞扬间婉转蹁跹，在苏绣艺术大师的指尖重获新生，古老的手工艺纤毫再现。其中尤为令人震撼的是对苏绣巧夺天工的演绎：大秀开场款礼服在胸前绣以花鸟图案，栩栩如生。另一款层叠如瀑的露背礼服则在真丝网纱上作绣，工艺繁复，技艺高超，精美绝伦。 ');

-- --------------------------------------------------------

--
-- 表的结构 `lema_onenew`
--

CREATE TABLE `lema_onenew` (
  `id` int(11) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `smalltitlle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_onenew`
--

INSERT INTO `lema_onenew` (`id`, `img_url`, `title`, `smalltitlle`) VALUES
(1, 'http://127.0.0.1:3000/img/firstnew/1c2847e6a3a89d94f5686c35dcec056d_380x550.jpg', '独家记忆', '风格-独家记忆'),
(2, 'http://127.0.0.1:3000/img/firstnew/5c5dcceff964e764df49d86ef7ba8c55_380x550.jpg', '爱是光年', '风格-独家记忆'),
(3, 'http://127.0.0.1:3000/img/firstnew/a6771c82474ac5638eb9e40bcd8fa3cf_380x550.jpg', '鹿向森甜', '风格-漫花森绿'),
(4, 'http://127.0.0.1:3000/img/firstnew/17688c0dc5976fb3f4dc26612ec7535c_380x550.jpg', '如约而至', '风格-漫花森绿'),
(5, 'http://127.0.0.1:3000/img/firstnew/84cb54c5bb25dd81d5b9bb146ba452f6_380x550.jpg', '戈雅的油画', '风格-漫花森绿'),
(6, 'http://127.0.0.1:3000/img/firstnew/cc18c91e7a213771f5c07086d98e319e_380x550.jpg', 'Dear花园', '风格-漫花森绿'),
(7, 'http://127.0.0.1:3000/img/firstnew/2dd5dc26c9a32e71117902d736117a1b_380x550.jpg', '白色经典', '风格-Classic新娘'),
(8, 'http://127.0.0.1:3000/img/firstnew/9dc9be8c4ee985b249b676164ed906db_380x550.jpg', '清新之白', '风格-漫花森绿'),
(9, 'http://127.0.0.1:3000/img/firstnew/2999652d5dcd3bd7b40e0f6c3bf41dbf_380x550.jpg', '甜美樱花', '风格-漫花森绿'),
(10, 'http://127.0.0.1:3000/img/firstnew/b2a6940ec49f9591008e8555d0dbb8c9_380x550.jpg', '幸运时分', '风格-独家记忆'),
(11, 'http://127.0.0.1:3000/img/firstnew/c71bb9309cd431e36936369899953816_380x550.jpg', '细语轻喃', '风格-独家记忆'),
(12, 'http://127.0.0.1:3000/img/firstnew/1d029595e7859d1bdb4882ab584359b1_380x550.jpg', '纯雪恋歌', '风格-独家记忆'),
(13, 'http://127.0.0.1:3000/img/firstnew/5b1a2d5b53c960e4c54c204eab56b9db_380x550.jpg', '白色恋人', '风格-Classic新娘'),
(14, 'http://127.0.0.1:3000/img/firstnew/48c4d3f0213a1050f0aa2a3d36aaa06e_380x550.jpg', '复古轻奢', '风格-Classic新娘');

-- --------------------------------------------------------

--
-- 表的结构 `lema_style_info`
--

CREATE TABLE `lema_style_info` (
  `nid` int(11) NOT NULL,
  `img_url1` varchar(200) DEFAULT NULL,
  `img_url2` varchar(200) DEFAULT NULL,
  `img_url3` varchar(200) DEFAULT NULL,
  `img_url4` varchar(200) DEFAULT NULL,
  `img_url5` varchar(200) DEFAULT NULL,
  `img_url6` varchar(200) DEFAULT NULL,
  `img_url7` varchar(200) DEFAULT NULL,
  `img_url8` varchar(200) DEFAULT NULL,
  `img_url9` varchar(200) DEFAULT NULL,
  `img_url10` varchar(200) DEFAULT NULL,
  `img_url11` varchar(200) DEFAULT NULL,
  `img_url12` varchar(200) DEFAULT NULL,
  `img_url13` varchar(200) DEFAULT NULL,
  `img_url14` varchar(200) DEFAULT NULL,
  `img_url15` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_style_info`
--

INSERT INTO `lema_style_info` (`nid`, `img_url1`, `img_url2`, `img_url3`, `img_url4`, `img_url5`, `img_url6`, `img_url7`, `img_url8`, `img_url9`, `img_url10`, `img_url11`, `img_url12`, `img_url13`, `img_url14`, `img_url15`) VALUES
(1, 'http://127.0.0.1:3000/img/style_info/1546222262524298.jpg', 'http://127.0.0.1:3000/img/style_info/1546222261471282.jpg', 'http://127.0.0.1:3000/img/style_info/1546222262344182.jpg', 'http://127.0.0.1:3000/img/style_info/1546222261761720.jpg', 'http://127.0.0.1:3000/img/style_info/1546222262705759.jpg', 'http://127.0.0.1:3000/img/style_info/1546222262648271.jpg', 'http://127.0.0.1:3000/img/style_info/1546222263804897.jpg', 'http://127.0.0.1:3000/img/style_info/1546222262579138.jpg', 'http://127.0.0.1:3000/img/style_info/1546222263956409.jpg', 'http://127.0.0.1:3000/img/style_info/1546222262976742.jpg', 'http://127.0.0.1:3000/img/style_info/1546222263444515.jpg', 'http://127.0.0.1:3000/img/style_info/1546222263343537.jpg', 'http://127.0.0.1:3000/img/style_info/1546222264702057.jpg', 'http://127.0.0.1:3000/img/style_info/1546222263147850.jpg', 'http://127.0.0.1:3000/img/style_info/1546222264767302.jpg'),
(2, 'http://127.0.0.1:3000/img/style_info/1540212146763673.jpg', 'http://127.0.0.1:3000/img/style_info/1540212146635750.jpg', 'http://127.0.0.1:3000/img/style_info/1540212146887971.jpg', 'http://127.0.0.1:3000/img/style_info/1540212146675207.jpg', 'http://127.0.0.1:3000/img/style_info/1540212146228999.jpg', '', '', '', '', '', '', '', '', '', ''),
(3, 'http://127.0.0.1:3000/img/style_info/1539630330691396.jpg', 'http://127.0.0.1:3000/img/style_info/1539630330750069.jpg', 'http://127.0.0.1:3000/img/style_info/1539630330582068.jpg', 'http://127.0.0.1:3000/img/style_info/1539630330280107.jpg', 'http://127.0.0.1:3000/img/style_info/1539630330508851.jpg', 'http://127.0.0.1:3000/img/style_info/1539630330770681.jpg', '', '', '', '', '', '', '', '', ''),
(4, 'http://127.0.0.1:3000/img/style_info/1547626439752915.jpg', 'http://127.0.0.1:3000/img/style_info/1547626438206093.jpg', 'http://127.0.0.1:3000/img/style_info/1547626438505047.jpg', 'http://127.0.0.1:3000/img/style_info/1547626439195257.jpg', 'http://127.0.0.1:3000/img/style_info/1547626439453224.jpg', 'http://127.0.0.1:3000/img/style_info/1547626440192268.jpg', 'http://127.0.0.1:3000/img/style_info/1547626440773881.jpg', 'http://127.0.0.1:3000/img/style_info/1547626440232255.jpg', 'http://127.0.0.1:3000/img/style_info/1547626441457640.jpg', 'http://127.0.0.1:3000/img/style_info/1547626440691587.jpg', '', '', '', '', ''),
(5, 'http://127.0.0.1:3000/img/style_info/1547626200525303.jpg', 'http://127.0.0.1:3000/img/style_info/1547626200961157.jpg', 'http://127.0.0.1:3000/img/style_info/1547626200300096.jpg', 'http://127.0.0.1:3000/img/style_info/1547626202244274.jpg', 'http://127.0.0.1:3000/img/style_info/1547626202505509.jpg', 'http://127.0.0.1:3000/img/style_info/1547626202132651.jpg', 'http://127.0.0.1:3000/img/style_info/1547626203432282.jpg', 'http://127.0.0.1:3000/img/style_info/1547626203656853.jpg', 'http://127.0.0.1:3000/img/style_info/1547626203414384.jpg', '', '', '', '', '', ''),
(6, 'http://127.0.0.1:3000/img/style_info/1540207244577895.jpg', 'http://127.0.0.1:3000/img/style_info/1540207244567432.jpg', 'http://127.0.0.1:3000/img/style_info/1540207244141822.jpg', 'http://127.0.0.1:3000/img/style_info/1540207244959424.jpg', 'http://127.0.0.1:3000/img/style_info/1540207244356194.jpg', '', '', '', '', '', '', '', '', '', ''),
(7, 'http://127.0.0.1:3000/img/style_info/1546831547597290.jpg', 'http://127.0.0.1:3000/img/style_info/1546831547505646.jpg', 'http://127.0.0.1:3000/img/style_info/1546831547380627.jpg', 'http://127.0.0.1:3000/img/style_info/1546831548921801.jpg', 'http://127.0.0.1:3000/img/style_info/1546831548840411.jpg', 'http://127.0.0.1:3000/img/style_info/1546831549784547.jpg', 'http://127.0.0.1:3000/img/style_info/1546831549935872.jpg', '', '', '', '', '', '', '', ''),
(8, 'http://127.0.0.1:3000/img/style_info/1540209791444809.jpg', 'http://127.0.0.1:3000/img/style_info/1540209792667677.jpg', 'http://127.0.0.1:3000/img/style_info/1540209792300983.jpg', 'http://127.0.0.1:3000/img/style_info/1540209792394000.jpg', 'http://127.0.0.1:3000/img/style_info/1540209792454018.jpg', '', '', '', '', '', '', '', '', '', ''),
(9, 'http://127.0.0.1:3000/img/style_info/1552886412440326.jpg', 'http://127.0.0.1:3000/img/style_info/1552886412306443.jpg', 'http://127.0.0.1:3000/img/style_info/1552886412935978.jpg', 'http://127.0.0.1:3000/img/style_info/1552886413961124.jpg', 'http://127.0.0.1:3000/img/style_info/1552886413330972.jpg', 'http://127.0.0.1:3000/img/style_info/1552886413126026.jpg', 'http://127.0.0.1:3000/img/style_info/1552886414819182.jpg', 'http://127.0.0.1:3000/img/style_info/1552886414814492.jpg', 'http://127.0.0.1:3000/img/style_info/1552886415155890.jpg', '', '', '', '', '', ''),
(10, 'http://127.0.0.1:3000/img/style_info/1552886318822529.jpg', 'http://127.0.0.1:3000/img/style_info/1552886318696482.jpg', 'http://127.0.0.1:3000/img/style_info/1552886318148044.jpg', 'http://127.0.0.1:3000/img/style_info/1552886319472929.jpg', 'http://127.0.0.1:3000/img/style_info/1552886319465625.jpg', 'http://127.0.0.1:3000/img/style_info/1552886319938229.jpg', 'http://127.0.0.1:3000/img/style_info/1552886320678292.jpg', 'http://127.0.0.1:3000/img/style_info/1552886320764301.jpg', 'http://127.0.0.1:3000/img/style_info/1552886320416329.jpg', '', '', '', '', '', ''),
(11, 'http://127.0.0.1:3000/img/style_info/1552886195165693.jpg', 'http://127.0.0.1:3000/img/style_info/1552886195920488.jpg', 'http://127.0.0.1:3000/img/style_info/1552886195371131.jpg', 'http://127.0.0.1:3000/img/style_info/1552886196303134.jpg', 'http://127.0.0.1:3000/img/style_info/1552886196950472.jpg', 'http://127.0.0.1:3000/img/style_info/1552886196580255.jpg', 'http://127.0.0.1:3000/img/style_info/1552886196640765.jpg', 'http://127.0.0.1:3000/img/style_info/1552886197304254.jpg', 'http://127.0.0.1:3000/img/style_info/1552886197235631.jpg', 'http://127.0.0.1:3000/img/style_info/1552886197622894.jpg', '', '', '', '', ''),
(12, 'http://127.0.0.1:3000/img/style_info/1552273027308011.jpg', 'http://127.0.0.1:3000/img/style_info/1552273028390155.jpg', 'http://127.0.0.1:3000/img/style_info/1552273028665160.jpg', 'http://127.0.0.1:3000/img/style_info/1552273028337703.jpg', 'http://127.0.0.1:3000/img/style_info/1552273028193059.jpg', 'http://127.0.0.1:3000/img/style_info/1552273028271653.jpg', 'http://127.0.0.1:3000/img/style_info/1552273028192146.jpg', 'http://127.0.0.1:3000/img/style_info/1552273029566634.jpg', 'http://127.0.0.1:3000/img/style_info/1552273029430314.jpg', 'http://127.0.0.1:3000/img/style_info/1552273029136860.jpg', '', '', '', '', ''),
(13, 'http://127.0.0.1:3000/img/style_info/1552272898714905.jpg', 'http://127.0.0.1:3000/img/style_info/1552272898931429.jpg', 'http://127.0.0.1:3000/img/style_info/1552272898331181.jpg', 'http://127.0.0.1:3000/img/style_info/1552272899253531.jpg', 'http://127.0.0.1:3000/img/style_info/1552272899957182.jpg', 'http://127.0.0.1:3000/img/style_info/1552272899703782.jpg', 'http://127.0.0.1:3000/img/style_info/1552272899716627.jpg', 'http://127.0.0.1:3000/img/style_info/1552272899216179.jpg', 'http://127.0.0.1:3000/img/style_info/1552272899563364.jpg', 'http://127.0.0.1:3000/img/style_info/1552272900518390.jpg', '', '', '', '', ''),
(14, 'http://127.0.0.1:3000/img/style_info/1552011597445421.jpg', 'http://127.0.0.1:3000/img/style_info/1552011597620863.jpg', 'http://127.0.0.1:3000/img/style_info/1552011597195555.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598414044.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598680785.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598246575.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598151067.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598141912.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598475904.jpg', 'http://127.0.0.1:3000/img/style_info/1552011598403299.jpg', 'http://127.0.0.1:3000/img/style_info/1552011599354298.jpg', 'http://127.0.0.1:3000/img/style_info/1552011599556997.jpg', 'http://127.0.0.1:3000/img/style_info/1552011599565014.jpg', 'http://127.0.0.1:3000/img/style_info/1552011599657695.jpg', 'http://127.0.0.1:3000/img/style_info/1552011599438019.jpg'),
(15, 'http://127.0.0.1:3000/img/style_info/1551665374369877.jpg', 'http://127.0.0.1:3000/img/style_info/1551665375916944.jpg', 'http://127.0.0.1:3000/img/style_info/1551665374772451.jpg', 'http://127.0.0.1:3000/img/style_info/1551665376451433.jpg', 'http://127.0.0.1:3000/img/style_info/1551665376925740.jpg', 'http://127.0.0.1:3000/img/style_info/1551665376498754.jpg', 'http://127.0.0.1:3000/img/style_info/1551665377780069.jpg', 'http://127.0.0.1:3000/img/style_info/1551665377527036.jpg', 'http://127.0.0.1:3000/img/style_info/1551665378466824.jpg', 'http://127.0.0.1:3000/img/style_info/1551665378341489.jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `lema_style_show`
--

CREATE TABLE `lema_style_show` (
  `lid` int(11) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `sheying` varchar(20) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `img` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_style_show`
--

INSERT INTO `lema_style_show` (`lid`, `month`, `sheying`, `style`, `img`) VALUES
(1, '2月 第1季', '刘扬', '独家路线', 'http://127.0.0.1:3000/img/1d029595e7859d1bdb4882ab584359b1_380x550.jpg'),
(2, '2月第1季', '杨震', '英式格林小镇', 'http://127.0.0.1:3000/img/a516e58be35d0ebcb3d17cba5d293c27_380x550.jpg'),
(3, '2月第1季', '李云涛', '独家线路', 'http://127.0.0.1:3000/img/f553d41af9cf4d1f215117a644e57447_380x550.jpg'),
(4, '1月第4季', '王振涛', '独家线路', 'http://127.0.0.1:3000/img/3be7501fe1e0fe8f745a57c8bb812b8e_380x550.jpg'),
(5, '1月第4季', '宋中森', '独家线路', 'http://127.0.0.1:3000/img/6fc05b8f15c487d9d84db75b7aefcf20_380x550.jpg'),
(6, '1月第1季', '卜宁', '乐品概念美学馆', 'http://127.0.0.1:3000/img/f139268d533ef2477e9343ca362b12b5_380x550.jpg'),
(7, '1月第2季', '张蔚鑫', '独家线路', 'http://127.0.0.1:3000/img/5877443f95357161ae79f762befcd26b_380x550.jpg'),
(8, '1月第2季', '王英豪', '乐品概念美学馆', 'http://127.0.0.1:3000/img/1c2847e6a3a89d94f5686c35dcec056d_380x550.jpg'),
(9, '3月第3季', '王振涛', '独家线路', 'http://127.0.0.1:3000/img/81fc117e152ae649652f21348a3799b7_380x550.jpg'),
(10, '3月第3季', '刘杨', '独家线路', 'http://127.0.0.1:3000/img/9c638b1b223b4b3a4026a54481ea256a_380x550.jpg'),
(11, '3月第3季', '施展斌', '独家线路', 'http://127.0.0.1:3000/img/d9653547e3dc765d3d16b6b6680af6ca_380x550.jpg'),
(12, '3月第2季', '王啟成', '独家线路', 'http://127.0.0.1:3000/img/c7fc94637ed01c670fbd3ca022d0cbdf_380x550.jpg'),
(13, '3月第2季', '郑克阳', '独家线路', 'http://127.0.0.1:3000/img/173d88abc49dca67d4e72811f9d400f6_380x550.jpg'),
(14, '3月第1季', '饶正晨', '独家线路', 'http://127.0.0.1:3000/img/93eafc80d9f435afc482438604d18062_380x550.jpg'),
(15, '3月第1季', '金治汜', '独家线路', 'http://127.0.0.1:3000/img/94c23d1c07428207d9dae6db2cff26f2_380x550.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lema_threenew`
--

CREATE TABLE `lema_threenew` (
  `id` int(11) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `smalltitlle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_threenew`
--

INSERT INTO `lema_threenew` (`id`, `img_url`, `title`, `smalltitlle`) VALUES
(1, 'http://127.0.0.1:3000/img/firstnew/1c2847e6a3a89d94f5686c35dcec056d_380x550.jpg', '独家记忆', '风格-独家记忆'),
(2, 'http://127.0.0.1:3000/img/firstnew/5c5dcceff964e764df49d86ef7ba8c55_380x550.jpg', '爱是光年', '风格-独家记忆'),
(3, 'http://127.0.0.1:3000/img/firstnew/b2a6940ec49f9591008e8555d0dbb8c9_380x550.jpg', '幸运时分', '风格-独家记忆'),
(4, 'http://127.0.0.1:3000/img/firstnew/c71bb9309cd431e36936369899953816_380x550.jpg', '细语轻喃', '风格-独家记忆'),
(5, 'http://127.0.0.1:3000/img/firstnew/1d029595e7859d1bdb4882ab584359b1_380x550.jpg', '纯雪恋歌', '风格-独家记忆'),
(6, 'http://127.0.0.1:3000/img/firstnew/5bdeb17e7715b2e26e4eadfaed054a4d_380x550.jpg', '仲夏已至', '风格-独家记忆'),
(7, 'http://127.0.0.1:3000/img/firstnew/2897c72f74afc7bc5bf083607ad06eee_380x550.jpg', '白色圣诞节', '风格-独家记忆'),
(8, 'http://127.0.0.1:3000/img/firstnew/7e6f69aaebfcda602ea3e38f773876ee_380x550.jpg', '羽翼之爱', '风格-独家记忆'),
(9, 'http://127.0.0.1:3000/img/firstnew/c068b9fc5da4e0b0cea2f5502cbb77e6_380x550.jpg', '甜蜜时光', '风格-独家记忆'),
(10, 'http://127.0.0.1:3000/img/firstnew/1d8c7f5b70995056513553a43ca1503f_380x550.jpg', '夕夏温存', '风格-独家记忆'),
(11, 'http://127.0.0.1:3000/img/firstnew/a15813daab2d996dc76653ea36efe913_380x550.jpg', '绘心之旅', '风格-独家记忆'),
(12, 'http://127.0.0.1:3000/img/firstnew/73f966777e83b41a49e8899ddecae777_380x550.jpg', '纯白拾光', '风格-独家记忆'),
(13, 'http://127.0.0.1:3000/img/firstnew/a75d3a5f959f6e2aa240c2aebb46f0e6_380x550.jpg', '旅途时光', '风格-独家记忆'),
(14, 'http://127.0.0.1:3000/img/firstnew/8464b84837d5aabc43129c81c0366116_380x550.jpg', '缤纷世纪', '风格-独家记忆'),
(15, 'http://127.0.0.1:3000/img/firstnew/aa498033b6b1b251e679d8fdfa69e654_380x550.jpg', '休闲假日', '风格-独家记忆'),
(16, 'http://127.0.0.1:3000/img/firstnew/a071cfc6c6ae68d6345043514dcf3e6b_380x550.jpg', '时光物语', '风格-独家记忆');

-- --------------------------------------------------------

--
-- 表的结构 `lema_twonew`
--

CREATE TABLE `lema_twonew` (
  `id` int(11) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `smalltitlle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lema_twonew`
--

INSERT INTO `lema_twonew` (`id`, `img_url`, `title`, `smalltitlle`) VALUES
(1, 'http://127.0.0.1:3000/img/firstnew/a6771c82474ac5638eb9e40bcd8fa3cf_380x550.jpg', '鹿向森甜', '风格-漫花森绿'),
(2, 'http://127.0.0.1:3000/img/firstnew/17688c0dc5976fb3f4dc26612ec7535c_380x550.jpg', '如约而至', '风格-漫花森绿'),
(3, 'http://127.0.0.1:3000/img/firstnew/84cb54c5bb25dd81d5b9bb146ba452f6_380x550.jpg', '戈雅的油画', '风格-漫花森绿'),
(4, 'http://127.0.0.1:3000/img/firstnew/cc18c91e7a213771f5c07086d98e319e_380x550.jpg', 'Dear花园', '风格-漫花森绿'),
(5, 'http://127.0.0.1:3000/img/firstnew/9dc9be8c4ee985b249b676164ed906db_380x550.jpg', '清新之白', '风格-漫花森绿'),
(6, 'http://127.0.0.1:3000/img/firstnew/2999652d5dcd3bd7b40e0f6c3bf41dbf_380x550.jpg', '甜美樱花', '风格-漫花森绿'),
(7, 'http://127.0.0.1:3000/img/firstnew/511fe4d2b1adbed572f754d093efcc36_380x550.jpg', '日光旅行', '风格-漫花森绿'),
(8, 'http://127.0.0.1:3000/img/firstnew/9f2440f36de96e004e4831b9c828402e_380x550.jpg', '芙洛拉花海', '风格-漫花森绿'),
(9, 'http://127.0.0.1:3000/img/firstnew/af7d8f62832aaf4893df3cce25d17e49_380x550.jpg', '花开伴夏', '风格-漫花森绿'),
(10, 'http://127.0.0.1:3000/img/firstnew/a512905b14dba00a33f0488c53413525_380x550.jpg', '幸福粉色系', '风格-漫花森绿'),
(11, 'http://127.0.0.1:3000/img/firstnew/6c5689cf9cf92fdd99e828b8bea4306c_380x550.jpg', '蜜糖马卡龙', '风格-漫花森绿'),
(12, 'http://127.0.0.1:3000/img/firstnew/22166ba41b72db4de8c2c98341f523b3_380x550.jpg', '花林曼舞', '风格-漫花森绿'),
(13, 'http://127.0.0.1:3000/img/firstnew/7b2107735203997b7389d5fd93b4b733_380x550.jpg', '花园秘境', '风格-漫花森绿'),
(14, 'http://127.0.0.1:3000/img/firstnew/6d44a583a51a5ea2ccce33c135462d51_380x550.jpg', '森歌蔓语', '风格-漫花森绿'),
(15, 'http://127.0.0.1:3000/img/firstnew/7822dcf588196b2517260f6bf6947a5a_380x550.jpg', '花境恋曲', '风格-漫花森绿');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lema_comment`
--
ALTER TABLE `lema_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lema_fournew`
--
ALTER TABLE `lema_fournew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lema_login`
--
ALTER TABLE `lema_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lema_news`
--
ALTER TABLE `lema_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lema_onenew`
--
ALTER TABLE `lema_onenew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lema_style_info`
--
ALTER TABLE `lema_style_info`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `lema_style_show`
--
ALTER TABLE `lema_style_show`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `lema_threenew`
--
ALTER TABLE `lema_threenew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lema_twonew`
--
ALTER TABLE `lema_twonew`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lema_comment`
--
ALTER TABLE `lema_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `lema_login`
--
ALTER TABLE `lema_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `lema_news`
--
ALTER TABLE `lema_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `lema_onenew`
--
ALTER TABLE `lema_onenew`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `lema_style_show`
--
ALTER TABLE `lema_style_show`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
