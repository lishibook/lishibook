-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 05 月 18 日 13:22
-- 服务器版本: 5.5.27
-- PHP 版本: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `lishibook`
--

-- --------------------------------------------------------

--
-- 表的结构 `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) NOT NULL,
  `iconname` varchar(400) CHARACTER SET utf8mb4 DEFAULT NULL,
  `iconurl` varchar(1024) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text NOT NULL,
  `creatorid` int(10) unsigned NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lasteditid` int(10) unsigned NOT NULL,
  `lastedittime` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `resource`
--

INSERT INTO `resource` (`id`, `name`, `iconname`, `iconurl`, `description`, `content`, `creatorid`, `createtime`, `lasteditid`, `lastedittime`, `views`) VALUES
(1, '诸葛亮', '139705145846659528.jpg', NULL, '三国时期蜀汉丞相，中国历史上著名的思想家，政治家，军事家', '<p>&nbsp;<span class="headline-content">人物生平</span></p>\r\n<h3 class="headline-2"><span class="headline-content">躬耕陇亩</span></h3>\r\n<div class="para">诸葛亮于汉灵帝光和四年（公元181年）出生在琅邪郡阳都县的一个官吏之家，诸葛氏是琅邪的望族，先祖诸葛丰曾在西汉元帝时做过司隶校尉，诸葛亮父亲诸葛圭东汉末年做过泰山郡丞；诸葛亮3岁母亲章氏病逝，诸葛亮8岁丧父，与弟弟诸葛均一起跟随由袁术任命为豫章太守的叔父诸葛玄到豫章赴任，东汉朝廷派朱皓取代了诸葛玄职务，诸葛玄就去投奔荆州刘表。<sup>[2]</sup></div>\r\n<div class="para">建安二年（197年），诸葛亮的叔父诸葛玄病逝；汉献帝已从长安李傕手中逃出，迁到了曹操的许县。诸葛亮此时已16岁，平日好念《梁父吟》，又常以管仲、乐毅比拟自己，当时的人对他都是不屑一顾，只有好友徐庶、崔州平等好友相信他的才干。<sup>[3]</sup></div>\r\n<div class="para">他与当时的襄阳名士司马徽、庞德公、黄承彦等有结交。黄承彦曾对诸葛亮说：&ldquo;听到你要选妻，我家中有一丑女，头发黄、皮肤黑，但才华可与你相配。&rdquo;诸葛亮应许这头亲事，迎娶她。当时的人都以此作笑话取乐，乡里甚至作了句谚语：&ldquo;莫作孔明择妇，正得阿承丑女&rdquo;。</div>\r\n<h3 class="headline-2"><span class="headline-content">隆中对策</span></h3>\r\n<div class="para">\r\n<div class="text_pic layoutright" style="width: 157px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="三国志12的诸葛亮" src="http://e.hiphotos.baidu.com/baike/s%3D220/sign=a709c9b7f8dcd100c99cff23428a47be/83025aafa40f4bfb6723fdee034f78f0f636189c.jpg" alt="三国志12的诸葛亮" width="157" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">三国志12的诸葛亮</p>\r\n</div>\r\n当时，当时，刘备依附于刘表，屯兵于新野。后来司马徽与刘备会面时，表示：&ldquo;那些儒生都是见识浅陋的人，岂会了解当世的事务局势？能了解当世的事务局势才是俊杰。此时只有卧龙（诸葛亮）、凤雏（庞统）。&rdquo;<sup>[4]</sup>诸葛亮又受徐庶推荐，刘备希望徐庶引亮来见，但徐庶却建议：&ldquo;这人可以去见，不可以令他屈就到此。将军宜屈尊以相访。&rdquo;<sup>[5]</sup></div>\r\n<div class="para">刘备便亲自前往拜访，去了三次才见到诸葛亮（史称&ldquo;三顾茅庐&rdquo;）。与诸葛亮相见后，刘备便叫其他人避开，对他提问：&ldquo;&ldquo;现今汉室衰败，奸臣假借皇命做事，皇上失去大权。我没有衡量自己的德行与能力，想以大义重振天下，但智慧、谋略短小、不够，所以时常失败，直至今日。不过我志向仍未平抑，先生有没有计谋可以帮助我？&rdquo;</div>\r\n<div class="para">诸葛亮遂向他陈说了三分天下之计，分析了曹操不可取，孙权可作援的形势；又详述了荆、益二州的州牧懦弱，有机可乘，而且只有拥有此二州才可争胜天下；更向刘备讲述了攻打中原的战略。这篇论说后世称之为《隆中对》。刘备听后大赞，力邀诸葛亮相助，于是诸葛亮便出山入幕。刘备常常和他议论，关系也日渐亲密。关羽、张飞等大感不悦，刘备向他们解释道：&ldquo;&ldquo;我有了孔明，就像鱼得到水般，希望诸位不要再说了。&rdquo;&rdquo;关羽、张飞等便不再抱怨。<sup>[6]</sup></div>\r\n<div class="para">诸葛亮所提出的《隆中对》是此后数十年刘备和蜀汉的基本国策。</div>\r\n<h3 class="headline-2"><span class="headline-content">赤壁大战</span></h3>\r\n<div class="para">建安十三年（208年），刘表之妻刘琦后母蔡氏屡进谗言，刘表对刘琦渐渐不悦。刘琦数次向诸葛亮请教自安之术，但诸葛亮每每推辞，刘琦便在一次饮宴时用上屋抽梯之计令诸葛亮说出解决办法，诸葛亮便反问刘琦：&ldquo;你不见到春秋时期申生在内而有危险，但重耳（指的是晋文公）在外却可得安吗？&rdquo;当时黄祖被东吴杀害，刘琦便上荐为江夏太守外求自保。同年八月，刘表病逝，其二子刘琮继位，听到曹操南下的消息，遣使投降。刘备在樊城知道后，率军队和百姓南逃，曹军在当阳长坂追上并大破刘军。<sup>[7]</sup>\r\n<div class="text_pic layoutright" style="width: 154px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="桌游《三国杀》中的诸葛亮（标准版）" src="http://d.hiphotos.baidu.com/baike/s%3D220/sign=201b61fdddc451daf2f60be986fc52a5/4b90f603738da97702dc7f88b051f8198718e3a6.jpg" alt="桌游《三国杀》中的诸葛亮（标准版）" width="154" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">桌游《三国杀》中的诸葛亮（标准版）</p>\r\n</div>\r\n</div>\r\n<div class="para">刘备败走夏口，而孙权之前又派鲁肃到来观察情况，并向刘备建议向孙权求救，诸葛亮便自荐到柴桑作说客，与鲁肃结为朋友。</div>\r\n<div class="para">到达柴桑后，诸葛亮面见孙权，先用二分法给孙权两个选择，&ldquo;如果能以吴、越的军力与中原之国抗衡，不如早和曹操断交&rdquo;；另一个选择则是激将法， &ldquo;如果认为不能抵挡，为何不停止军事行动，向北方称臣呢！&rdquo;孙权却反问诸葛亮，刘备又何解不投降。诸葛亮便提高刘备身价，说刘备有气节，绝不投降，以向孙 权显示刘备的决心。孙权大怒，誓言不会向曹操投降，但却有所担心，刘备还有多少兵力战斗。诸葛亮最后才分析两军的情况，先说出自军散兵归还和关羽水军有万 人，加上刘琦凡江夏士兵亦不下万人，再说出曹军远来疲弊，追刘备时，又用轻骑一日一夜行了三百多里，正是&ldquo;强弩之末，势不能穿鲁缟&rdquo;；而且北方人不习水 战，荆州百姓又是被逼服从曹操，不是心服；最后肯定地说曹操必定可打败。孙权十分高兴，后又受到鲁肃、周瑜的游说，决定联刘抗曹，派周瑜、程普、鲁肃等率三万水军，与曹操开战。</div>\r\n<div class="para">诸葛亮随军回到刘备处；十一月，曹操大军在赤壁遭遇孙刘联军火攻，曹操军遭受了非常大的损失，而此时曹操军中又爆发瘟疫，曹操不得已引军北还。<sup>[8]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">足食足兵</span></h3>\r\n<div class="para">赤壁之战后，刘备于建安十三年十二月平定荆南四郡，任命诸葛亮为军师中郎将，住于临烝，督令零陵、桂阳、长沙三郡，负责调整赋税，充实军资。<sup>[9]</sup></div>\r\n<div class="para">建安十六年（211年），益州牧刘璋派法正、孟达请刘备助攻张鲁。诸葛亮便与关羽、\r\n<div class="text_pic layoutleft" style="width: 190px; padding-right: 20px;" data-layout="left"><img class="editorImg  log-set-param" title="三国示意图" src="http://f.hiphotos.baidu.com/baike/s%3D220/sign=67520c6b62d0f703e2b292de38fa5148/37d3d539b6003af3d7c6861c352ac65c1038b64a.jpg" alt="三国示意图" width="190" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">三国示意图</p>\r\n</div>\r\n张飞、赵云等镇守荆州。至次年十二月，刘备与刘璋决裂，还攻成都。诸葛亮便与张飞、赵云等入蜀助阵，留关羽负责荆州防务，分兵平定各郡县，与刘备一起围成都。至建安十九年（214年），刘璋投降，刘备入主益州。</div>\r\n<div class="para">诸葛亮受金五百斤，银千斤，钱五千万，锦千匹，并受任为军师将军，署左将军府事。</div>\r\n<div class="para">每当刘备出兵征伐，诸葛亮便负责镇守成都，为刘备足食足兵，如汉中之战就替刘备提供资援。</div>\r\n<div class="para">汉献帝延康元年（220年），曹丕篡汉自立。魏黄初二年（221年），群臣听到汉献帝被害的消息，劝已成为汉中王的刘备登基为帝，刘备不答应，诸葛亮用耿纯游说刘秀登基的故事劝刘备。于是刘备才答应，任诸葛亮为丞相、录尚书事，假节；同年张飞被害，诸葛亮领司隶校尉一职。<sup>[10]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">白帝城托孤</span></h3>\r\n<div class="para">章武二年（222年）八月，刘备在东征夺回荆州的途中被打败，撤退至永安，诸葛亮大叹：&ldquo;可惜法正故去，否则必能阻止刘备东征之举。&rdquo;</div>\r\n<div class="para">\r\n<div class="text_pic layoutright" style="width: 220px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="1994央视版《三国演义》白帝托孤" src="http://e.hiphotos.baidu.com/baike/s%3D220/sign=31632c4102087bf479ec50ebc2d2575e/d62a6059252dd42a04c212a1033b5bb5c8eab8f4.jpg" alt="1994央视版《三国演义》白帝托孤" width="220" height="165" />\r\n<p class="pic-info" style="cursor: pointer;">1994央视版《三国演义》白帝托孤</p>\r\n</div>\r\n至章武三年（223年）二月，刘备病重，召诸葛亮到永安，与李严一起托付后事，刘备对诸葛亮说：&ldquo;你的才能是曹丕的十倍，必定能够安顿国家，终可成就大事。如果嗣子（刘禅）可以辅助，便辅助他；如果他没有才干，你可以自行取度。&rdquo;诸葛亮涕泣地说：&ldquo;臣必定竭尽股肱的力量，报效忠贞的节气，直到死为止！&rdquo;刘备又要刘禅视诸葛亮为父。</div>\r\n<div class="para">延至四月，刘备逝世，刘禅继位，封诸葛亮为武乡侯，开设官府办公。不久，再领益州牧，政事上的大小事务，刘禅都依赖于诸葛亮，由诸葛亮决定。本来南中地区因刘备逝世而乘机叛乱，诸葛亮因国家刚逝去君主，先不发兵，而派邓芝及陈震赴东吴修好。<sup>[11]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">南征北战</span></h3>\r\n<div class="para"><strong>南征</strong></div>\r\n<div class="para">建兴三年（225年）春天，诸葛亮率军南征，临行前刘禅赐诸葛亮金鈇钺一具，曲盖一个，前后羽葆鼓吹各一部，虎贲六十人。后诸葛亮深入不毛之地讨伐雍闿、孟获，诸葛亮采取参军马谡的建议，以攻心为主，先打败雍闿军，再七擒七纵孟获，至秋天平定所有乱事。蜀汉在南中安定并获得大量的资源，并且组建了无当飞军这支劲旅。经过长期积累，有了北伐的基础。<sup>[12-13]</sup></div>\r\n<div class="para"><strong>北伐</strong></div>\r\n<div class="para">建兴六年（228年）春，诸葛亮事先扬声走斜谷道取郿，让赵云、邓芝设疑兵吸引曹真重兵，自己率大军攻祁山（。陇右的南安、天水和安定三郡反魏附蜀，关中震响。魏明帝西镇长安，命张郃率领步骑五万人前往，大破马谡于街亭。而同时赵云寡不敌众，失利于箕谷。诸葛亮乃拔西县千余家返回汉中。第一次北伐失败。<sup>[14]</sup></div>\r\n<div class="para">同年冬，诸葛亮趁魏兵东下，关中虚弱，趁机北伐，出兵散关（今陕西省宝鸡市西南）围陈仓（今陕西省宝鸡市东），为魏将郝昭所拒，诸葛亮劝降不成，而又粮草不继，不得已退还汉中。魏将王双来追，被斩。\r\n<div class="text_pic layoutright" style="width: 218px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="诸葛亮" src="http://c.hiphotos.baidu.com/baike/s%3D220/sign=6b585be0b051f819f5250448eab54a76/42166d224f4a20a41469e10c90529822730ed082.jpg" alt="诸葛亮" width="218" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">诸葛亮</p>\r\n</div>\r\n</div>\r\n<div class="para">建兴七年（229年）春，诸葛亮遣陈式攻武都（今甘肃省成县周边）、阴平（今甘肃省文县周边）二郡。雍州刺史郭淮引兵救之，亮自出至建威（今甘肃省西和县西），郭淮退，遂得二郡。</div>\r\n<div class="para">建兴八年（230年）秋，魏军三路进攻汉中，司马懿走西城（今陕西省安康市西北），张郃走子午谷，曹真走斜谷。诸葛亮驻军于城固（今陕西省城固县东）、赤坂（今陕西省洋县东二十里）。时大雨三十余天，魏军撤退。同年，诸葛亮使魏延、吴懿西入羌中，大破魏后将军费曜（瑶）、雍州刺史郭淮于阳溪（南安郡内，当在今甘肃省武山西南一带）。<sup>[15]</sup></div>\r\n<div class="para">建兴九年（231年）二月，诸葛亮率大军攻祁山，始以木牛运。时曹真病重，司马懿都督关中诸将出拒。诸葛亮割麦于上邽（今甘肃省天水县）。司马懿追亮至卤城（今甘肃省天水市与甘谷之间），掘营自守，有&ldquo;畏蜀如畏虎&rdquo;之讥。据《汉晋春秋》记载，同年五月，诸葛亮使魏延、高翔、吴班赴拒，大破司马懿，汉军获甲首三千级，玄铠五千领，角弩三千一百张，于是司马懿退还保营。六月，李严因运粮不济呼亮还。张郃追亮退兵至木门，中箭身亡&mdash;&mdash;此为二出祁山。<sup>[16]</sup></div>\r\n<div class="para">建兴十二年（234年）二月，诸葛亮率大军出斜谷道，据武功五丈原（今陕西省岐山南），屯田于渭滨，与司马懿对於渭南，并约吴国共同发兵。期间诸葛亮既屡屡遣使者下战书，又致巾帼妇人之饰，以激怒宣王司马懿，但司马懿忍辱据守不出，并以&ldquo;千里请战&rdquo;的妙计平息将怒。诸葛亮乃分兵屯田，在魏国境内与魏国百姓共同种粮自给自足，打算长期驻扎下去，但诸葛亮却因过于操劳而病重。<sup>[17]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">病逝五丈原</span></h3>\r\n<div class="para">八月，诸葛亮病故于五丈原（宝鸡境内）享年五十四岁。杨仪等率军还，姜维等遵照诸葛亮遗嘱，秘不发丧，缓缓退军。司马懿率军追击，见蜀军帅旗飘扬，孔明羽扇纶巾坐在车里。司马懿怀疑是孔明用计诱敌，赶紧策马收兵，于是便有&ldquo;死诸葛吓走活仲达&rdquo;一事。<sup>[18]</sup></div>\r\n<div class="para">这六次用兵，出祁山只有两次；第四次是魏军主动进攻，蜀军防守，由于连日大雨，山洪暴发，冲毁栈道，蜀魏并未交战。<sup>[19]</sup></div>\r\n<div class="para">诸葛亮遗言命令部下将自己葬在汉中定军山，依山势修建坟墓，墓穴仅能容纳下棺材，穿平时的衣服入殓，不必用其他器物殉葬。</div>\r\n<div class="para">诸葛亮归葬定军山勉县的武侯墓。诸葛亮曾经上表指出自己没有多余财产，只有800株桑树和15顷土地，而自己穿的都是朝廷赐封，就算儿子都是自给自足，自己没有一点多余的财产。果然，诸葛亮直至死时也是如此，甚至在临死前，也吩咐了他下葬时只需要挖洞一个，棺木能够放进去便足够，自己则穿着平常的服装即可，不须要其他配葬物。<sup>[20]</sup>诸葛亮死后30年，他的长子诸葛瞻和长孙诸葛尚一起在绵竹之战中战死沙场。</div>\r\n<h2 class="headline-1"><span class="headline-1-index">2</span><span class="headline-content">个人成就</span></h2>\r\n<h3 class="headline-2"><span class="headline-content">政治</span></h3>\r\n<div class="para">诸葛亮作为蜀国的丞相， 安抚百姓、遵守礼制、约束官员、慎用权利，对人开诚布公、胸怀坦诚。为国尽忠效力的即使是自己的仇人也加以赏赐，玩忽职守犯法的就算是他的亲信也给予处 罚，只要诚心认罪伏法就是再重的罪也给予宽大处理，巧言令色逃避责任就是再轻的过错也要从严治理，再小的善良和功劳都给予褒奖，再小过错都予以处罚。他处 理事务简练实际，能从根本上解决问题，不计较虚名而重视实际，贪慕虚荣的事他都不做；终于使蜀国上下的人都害怕却敬仰他，使用严刑峻法却没有人有怨言，这 是因为他用心端正坦诚而对人的劝戒又十分明确正当的缘故。可以说他是治理国家的优秀人才，其才能可以与管仲、萧何相媲美。<sup>[21]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">经济</span></h3>\r\n<div class="para">\r\n<div class="album-view layoutright log-set-param" style="width: 149px; padding-left: 20px;" data-layout="right">\r\n<p class="album-div" style="height: 220px; width: 149px;"><img class="album-cover " title="诸葛亮画像" src="http://d.hiphotos.baidu.com/baike/pic/item/2934349b033b5bb5122f6eaf36d3d539b700bce3.jpg" alt="诸葛亮画像" width="149" height="220" /></p>\r\n<span class="title">诸葛亮画像</span><span class="albumCount">(25张)</span></div>\r\n诸葛亮在汉中休士劝农期间，利用了汉中的经济条件，因地制宜地采取了一系列发展生产的得力措施，使北伐军资基本上就地得到了解决，诸葛亮死后，蜀军撤退，魏军还在蜀营中&ldquo;获其图书、粮谷甚众&rdquo;。这正说明了诸葛亮休士劝农，实行军屯耕战的效果。当地人民生活好了，就可以招来更多的人口，使地广人稀的汉中重新得到发展，逐步到达人多、粮多的良性循环，使百姓&ldquo;安其居，乐其业&rdquo;。</div>\r\n<div class="para">经诸葛亮&ldquo;踵迹增筑&rdquo;的&ldquo;山河堰&rdquo;等水利工程至今还是汉中地区灌溉面积最大的水利工程。据李仪祉先 生考察而知，&ldquo;山河堰尚灌褒城田八千余亩，灌南郑县田三万零六百余亩，灌酒县七千余亩，共四万六千余亩。&rdquo;汉中市的六大名池，至今仍被利用。据考古调查统 计，全区至今尚保留有汉以来的古堰七十多处，一些堰渠经历代使用维修，一直延用至今。同时各地在继承和学习古代开发利用水利资源经验的基础上，又不断增修 了大批塘、库、陂池等水利设施。仅勉县就增修了能蓄十万立方水的水库三十七个；塘与陂池达三百多个；冬水田至今仍有五万多亩。</div>\r\n<div class="para">上述实事说明，汉中盆地古代农田水利设施至今所产生的实际效用和不断改进利用，与诸葛亮当年在汉中休上劝农时，开拓农田、兴修水利、发展生产的丰功伟绩是分不开的。<sup>[21]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">军事</span></h3>\r\n<div class="para">\r\n<div class="text_pic layoutright" style="width: 220px; padding-left: 20px;" data-layout="right"><img class="editorImg lazy-img log-set-param" title="八阵图" src="http://g.hiphotos.baidu.com/baike/s%3D220/sign=39a5b05f35fae6cd08b4ac633fb20f9e/4bed2e738bd4b31c298fc5d387d6277f9e2ff823.jpg" alt="八阵图" width="220" height="213" />\r\n<p class="pic-info" style="cursor: pointer;">八阵图</p>\r\n</div>\r\n诸 葛亮作为军事家在历代兵家也得到了较高的认可。司马懿在诸葛亮死后，看到诸葛亮的营垒，称赞其为&ldquo;天下奇才&rdquo;。唐太宗与李靖在《唐太宗李卫公问对》中多次 提到诸葛亮的治军之法与八阵图，给予了极高的评价，并且表明陈寿在《三国志》中对诸葛亮的评价是&ldquo;史官鲜克知兵，不能纪其实迹焉&rdquo;。唐朝时亦将诸葛亮评选 为武庙十哲之一，与张良、韩信、白起等九位历代兵家享同等地位。诸葛亮亦作诸多军事著述，如《南征》，《北伐》，《北出》等，对中国军事界有一定的贡献。诸葛亮在技术发明上亦有灵巧的表现，如改良连弩。诸葛亮亦推演了兵法，作八阵图，直至唐代将领李靖仍然十分推崇。</div>', 1, '2014-03-16 11:34:55', 1, NULL, 0),
(3, '曹操', '139705128636044294.jpg', NULL, '三国时期历史人物，中国历史上著名的军事家、政治家、文学家', '<h2 class="headline-1"><span class="headline-content">人物生平</span><span class="text_edit editable-title" style="margin-left: 10px;" data-edit-id="6772:%E6%9B%B9%E6%93%8D:1">编辑</span></h2>\r\n<h3 class="headline-2"><span class="headline-content">早年经历</span></h3>\r\n<div class="para">曹操，沛国谯县人（今安徽亳州），出生在官宦世家，为汉相曹参之后，曹操的父亲曹嵩是曹腾的养子，汉灵帝时官至太尉，历侍四代皇帝，有一定名望，汉桓帝时被封为费亭侯，《三国志&middot;武帝纪》中说曹嵩&ldquo;莫能审其本末&rdquo;，而在宋人裴松之注《三国志》时间接引用三国吴人所著《曹瞒传》中称曹嵩本姓夏侯，但此说可信度不高。曹嵩继承了曹腾的侯爵。<sup>[5]</sup>\r\n<div class="text_pic layoutright" style="width: 164px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="曹操画像" src="http://a.hiphotos.baidu.com/baike/s%3D220/sign=394897925c6034a82de2bf83fb1249d9/b812c8fcc3cec3fd5c6eb9e6d688d43f869427d4.jpg" alt="曹操画像" width="164" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">曹操画像<sup>[6]</sup></p>\r\n</div>\r\n</div>\r\n<div class="para">年轻时期的曹操机智警敏有随机权衡应变的能力，而且任性好侠、放荡不羁，不修品行，不研究学业，所以当时的人不认为他有什么特别的才能，只有梁国的桥玄等人认为他不平凡，桥玄对曹操说：&ldquo;天下将乱，非命世之才不能济也，能安之者，其在君乎？&rdquo;南阳何颙对他说：&ldquo;汉室将亡，安天下者，必此人也！&rdquo;南阳的许劭以知人著称，他也曾对曹操说过：&ldquo;君清平之奸贼，乱世之英雄&rdquo;（此据《后汉书&middot;许劭传》<sup>[7]</sup>，《三国志》中是&ldquo;治世之能臣，乱世之英雄&rdquo;。孙盛《异同杂语》及《三国演义》小说中作&ldquo;子治世之能臣，乱世之奸雄也。&rdquo;）</div>\r\n<div class="para">曹操早年就表现出对武艺的爱好与才能，曾经潜入张让家，被张让发觉后，手舞著戟越墙逃出，全身而退。又博览群书，尤其喜欢兵法，曾抄录古代诸家兵法韬略，还有注释《孙子兵法》的《魏武注孙子》著作传世。这些活动为他后来的军事生涯打下了稳健的基础。</div>\r\n<h3 class="headline-2"><span class="headline-content">崭露头角</span></h3>\r\n<div class="para">公元174年【甲寅年】（熹平三年），二十岁的曹操被举为孝廉，入京都洛阳为郎。不久，被任命为洛阳北部尉。洛阳为东汉都城，是皇亲贵戚聚居之地，很难治理。曹操一到职，就申明禁令、严肃法纪，造五色大棒十余根，悬于衙门左右，&ldquo;有犯禁者，皆棒杀之&rdquo;。皇帝宠幸的宦官蹇硕的叔父蹇图违禁夜行，曹操毫不留情，将蹇图用五色棒处死。于是，&ldquo;京师敛迹，无敢犯者&rdquo;。但是曹操也因此得罪了蹇硕等一些当朝权贵，碍于其父曹嵩的关系，明升暗降，曹操被调至远离洛阳的顿丘（今河南清丰）。任顿丘令。这一年，曹操二十三岁。多年后曹操给其子曹植的一封书信《戒子植》写道：&ldquo;吾昔为顿丘令，年二十三，思此时所行，无悔于今。今汝年亦二十三矣，可不勉欤！&rdquo;</div>\r\n<div class="para">公元178年（光和元年），曹操因堂妹夫滁强侯宋奇被宦官诛杀，受到牵连，被免去官职。其后，在洛阳无事可做，回到家乡谯县闲居。</div>\r\n<div class="para">公元180年（光和三年），曹操又被朝廷征召，任命为议郎。此前，大将军窦武、太傅陈蕃谋划诛杀宦官，不料其事未济反为宦官所害。曹操上书陈述窦武等人为官正直而遭陷害，致使奸邪之徒满朝，而忠良之人却得不到重用的情形，言辞恳切，但没有被汉灵帝采纳。尔后，曹操又多次上书进谏，虽偶有成效，但东汉朝政日益腐败，曹操知道无法匡正。\r\n<div class="text_pic layoutright" style="width: 220px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="曹操雕像" src="http://f.hiphotos.baidu.com/baike/s%3D220/sign=6041802643166d223c77129676210945/b3119313b07eca8050823e0a912397dda0448353.jpg" alt="曹操雕像" width="220" height="165" />\r\n<p class="pic-info" style="cursor: pointer;">曹操雕像</p>\r\n</div>\r\n</div>\r\n<div class="para">公元184年【甲子年】（中平元年），黄巾起义爆发，曹操被拜为骑都尉，受命与皇甫嵩等人合军进攻颍川的黄巾军，结果大破黄巾军，斩首数万级。随之迁为济南相。济南相任内，曹操治事如初。济南国（今山东济南一带）有县十余个，各县长吏多依附贵势，贪赃枉法，无所顾忌。曹操之前历任国相皆置之不问。曹操到职，大力整饬，一下奏免十分之八的长吏，济南震动，贪官污吏纷纷逃窜。&ldquo;政教大行，一郡清平&rdquo;。<sup>[8]</sup>当时正是东汉政治极度黑暗之时，甚至有了买官制度。朝廷徵还其为东郡太守，拜为议郎，曹操不肯迎合权贵，遂托病回归乡里，春夏读书，秋冬弋猎，暂时隐居了。<sup>[9-10]</sup></div>\r\n<div class="para">当时天下纷乱，先是发生了冀州刺史王芬联合南阳许攸、沛国周旌等地方豪强，谋划废黜灵帝立合肥侯的事件。王芬等人曾希望曹操加入他们，但被曹操拒绝，后来王芬事败自杀。接着，又有西北金城郡（今兰州）的边章、韩遂杀死刺史和太守，率兵十余万反叛朝廷。<sup>[11]</sup></div>\r\n<div class="para">公元188年（中平五年），汉灵帝为巩固统治，设置西园八校尉，曹操因其家世被任命为八校尉中的典军校尉。</div>\r\n<h3 class="headline-2"><span class="headline-content">陈留起兵</span></h3>\r\n<div class="para">公元189年（中平六年），汉灵帝驾崩，太子刘辩登基，何太后临朝听政。大将军何进想趁灵帝逝世、宦官失势之机诛灭阉党，但没有取得太后的支持。于是何进便召时任并州牧的董卓进京，胁迫何太后同意。然而此举打草惊蛇，董卓尚未抵达京城，何进已被宦官下手谋杀。同年九月，董卓入京，执掌朝政，把汉少帝废为弘农王，而改立其弟陈留王为汉献帝，又派人把弘农王母子毒死，自称太师，专擅朝政。曹操见董卓倒行逆施，不愿与其合作，遂改易姓名逃出京师洛阳（今河南洛阳东）。<sup>[12]</sup>曹操到陈留后，&ldquo;散家财，合义兵&rdquo;，且首倡义兵号召天下英雄讨伐董卓。</div>\r\n<div class="para">\r\n<div class="text_pic layoutright" style="width: 197px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="曹操画像" src="http://c.hiphotos.baidu.com/baike/s%3D220/sign=201e49f0e850352ab561220a6342fb1a/77c6a7efce1b9d16e717dc26f2deb48f8d5464a0.jpg" alt="曹操画像" width="197" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">曹操画像<sup>[13]</sup></p>\r\n</div>\r\n公元190年（初平元年）正月，袁术等人共推渤海太守袁绍为盟主，曹操任代理奋武将军，参加讨董军。二月，被联军击败的董卓胁迫献帝迁都长安（今陕西西安西北），自己则焚毁宫室，挖开王陵，劫掠人民，致使洛阳方圆200里荒芜凋敝无复人烟。而关东联军惧怕董卓精锐的凉州军的战力，无人敢向关西推进，全都屯兵酸枣（今河南延津北）一带。而曹操认为董卓&ldquo;焚烧宫室，劫迁天子，海内震动&rdquo;，应趁机与之决战，遂独自引军西进。曹操行至荥阳汴水（今河南荥阳西南），与董卓大将徐荣交锋，因为士兵数量悬殊，曹操大败，士卒死伤大半，自己也被流矢所伤，幸得堂弟曹洪所救，幸免于难。<sup>[14]</sup>回至酸枣，曹操建议诸军各据要地，再分兵西入武关（今陕西丹凤东南），围困董卓，关东诸将不肯从。关东诸军名为讨董卓，实际各自心怀鬼胎，意在伺机发展自己势力。不久，诸军之间发生摩擦，相互火拼。联合军至此解散。<sup>[15]</sup></div>\r\n<div class="para">公元191年（初平二年），曹操在东郡大败于毒、白绕、眭固、於扶罗等，袁绍表其为东郡太守。<sup>[16]</sup></div>\r\n<div class="para">公元192年（初平三年），青州黄巾军大获发展，连破兖州郡县，阵斩兖州刺史刘岱。济北相鲍信等人迎曹操出任兖州牧。曹操和鲍信合军进攻黄巾。鲍信战死。曹操&ldquo;设奇伏，昼夜会战&rdquo;，终于将黄巾击败。当年冬天，获降卒三十余万，人口百余万。曹操收其精锐，组成军队，号青州兵。又助袁绍打败刘备、单经及陶谦诸军。<sup>[17]</sup></div>\r\n<div class="para">公元193年（初平四年）春天，曹操在匡亭六百里大追击大败袁术、黑山军、南匈奴。徐州牧陶谦率军攻入兖州南部的任城，曹操率军征讨陶谦攻克徐州十余城。</div>\r\n<h3 class="headline-2"><span class="headline-content">逐鹿中原</span></h3>\r\n<div class="para">公元193年（初平四年）秋，曹操的父亲曹嵩来曹操处路上，被陶谦派兵杀害<sup>[18-19]</sup>，曹操遂进兵徐州（治郯，今山东郯城），向东南扩展势力。陶谦退守郯县。不久曹操军粮将尽，撤围回军。</div>\r\n<div class="para">次年夏，曹操再征徐州，略地至东海。曹操征徐州期间，所过大肆杀戮，一路上&ldquo;鸡犬亦尽，墟邑无复行人&rdquo;。东郡守备陈宫对曹操不满，于是与陈留太守张邈、张邈之弟张超、从事中郎许汜及王楷等同谋叛乱，迎吕布为兖州牧。吕布为当时名将，先为董卓部将，后与王允定计诛杀董卓。</div>\r\n<div class="para">当时只有鄄城（今属山东）和东郡的范（今山东范县东南）、东阿（今山东阳谷东北）两县尚在曹操掌握之中，分别由司马荀彧和寿张令程昱、东郡太守夏侯惇等坚守，形势异常危急。曹操从徐州赶回，听说吕布屯于濮阳，遂进军围攻濮阳。二军相持百余日，蝗灾大起，双方停战，曹操军还鄄城。此时，曹操失去了兖州，军粮已尽，袁绍派人来劝说想让曹操投靠他，让曹操举家迁到邺县当人质。曹操本打算答应袁绍，多亏程昱劝阻，曹操才打消这个念头。</div>\r\n<div class="para">\r\n<div class="text_pic layoutright" style="width: 220px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="东汉割据地图" src="http://b.hiphotos.baidu.com/baike/s%3D220/sign=2ddb07ccd21b0ef468e89f5cedc551a1/cefc1e178a82b901c3898cd1738da9773912ef28.jpg" alt="东汉割据地图" width="220" height="164" />\r\n<p class="pic-info" style="cursor: pointer;">东汉割据地图</p>\r\n</div>\r\n</div>\r\n<div class="para">公元195年（兴平二年），曹操整军再战吕布，三败之，破定陶、庸丘等，平定兖州。吕布逃往徐州投靠刘备。七月，因李傕、郭汜的火拼，汉献帝从长安东归，下诏让各路诸侯勤王。</div>\r\n<div class="para">公元196年（建安元年）八月，曹操迎汉献帝。辛亥，汉献帝封曹操为司隶校尉，录尚书事。庚申，迁都许昌。冬十一月丙戌，汉献帝封曹操为司空，行车骑将军事，百官总己以听。</div>\r\n<div class="para">公元197年（建安二年）春正月，曹操讨伐张绣，军队驻扎在淯水，张绣举众投降，旋即复叛，长子曹昂、侄子曹安民、猛将典韦战死。此后，曹操又两度攻击张绣，都没有彻底击破。秋九月，曹操东征袁术，袁术弃军而逃至淮河，枭袁术留守四将。</div>\r\n<div class="para">公元198年（建安三年）夏四月，曹操遣谒者裴茂率中郎将段煨讨李傕，夷三族。九月，曹操东征徐州，进攻久与他为敌的吕布。在曹军攻势之下，吕布军上下离心，十二月，吕布部将魏续、宋宪等生擒陈宫归降曹操。吕布见大势已去，下城投降。曹操将吕布、陈宫、高顺等人处死，收降吕布部将张辽以及泰山豪杰臧霸、孙观等人，初步控制了徐州。公元199年（建安四年），曹操派史涣、曹仁击破张杨旧部眭固，取得河内郡，把势力范围扩张到黄河以北。<sup>[20]</sup></div>\r\n<h3 class="headline-2"><span class="headline-content">官渡之战</span></h3>\r\n<div class="para">消灭睦固后，为了应对之后与袁绍的战争，曹操预作布置，命在青州有潜在影响的臧霸等人攻入青州，占领齐（治今山东临淄）、北海（治今山东寿光东南）等地，巩固右翼；又命大将于禁屯军黄河南岸，监视袁军。不久，张绣听从谋士贾诩之计，投降曹操，曹操大喜，拜张绣为扬武将军，解除了后顾之忧。公元199年（建安四年）十二月，曹操自率军屯于官渡（今河南中牟北），准备迎击袁绍。\r\n<div class="text_pic layoutleft" style="width: 174px; padding-right: 20px;" data-layout="left"><img class="editorImg  log-set-param" title="官渡之战" src="http://h.hiphotos.baidu.com/baike/s%3D220/sign=e3ea550a7acb0a4681228c3b5b62f63e/b3b7d0a20cf431ad24f6f4c94a36acaf2edd981e.jpg" alt="官渡之战" width="174" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">官渡之战<sup>[21]</sup></p>\r\n</div>\r\n</div>\r\n<div class="para">刘备在陶谦死后，曾一度出任徐州牧，后徐州被吕布攻占，刘备投奔曹操。曹操认为刘备是个英雄，先后表他为豫州牧、左将军。曹操攻占徐州不久，淮南袁术准备逃往青州往依袁绍，曹操派刘备去截击，袁术北上不得，呕血而死。</div>\r\n<div class="para">公元200年（建安五年）正月，董承等人谋诛曹操事泄，被曹操杀掉。刘备遂袭杀徐州刺史车胄，占据徐州。</div>\r\n<div class="para">曹操为了免于将来同袁绍作战时前后受敌，决定先消灭在徐州立足未稳的刘备。当时诸将皆怕袁绍乘机来攻许都，曹操对此胸有成竹，说：&ldquo;刘备，人杰也，今不击，必有后患。袁绍虽有大志，而见事迟，必不动也。&rdquo;遂进军，以迅雷不及掩耳之势击破刘备，刘备逃奔袁绍。</div>\r\n<div class="para">袁绍是当时北方最强大的一股势力，也是曹操统一北方最强大的敌人。袁氏一门，自袁绍曾祖袁安以下，&ldquo;四世居三公位&rdquo;，&ldquo;门生故吏遍于天下&rdquo;，势力本就很大，后袁绍取得冀、并、幽、青四州之地，实力大增，有军队数十万人。袁绍以其长子袁谭、次子袁熙、外甥高干分守青、幽、并三州，后方稳固，兵精粮足，根本不把曹操放在眼里。他挑选精兵十万、战马万匹，志在一举消灭曹操。</div>\r\n<div class="para">公元200年（建安五年），袁绍命大将颜良等人进兵白马（今河南安阳滑县），自率大军进屯黎阳（今河南浚县东），向曹操发动进攻。曹操的实力比袁绍弱得多（《三国志》中说不足一万），曹操所占的大河以南地区，地盘既小，又是四战之地，残破不堪，还没有完全恢复，物资比不上袁绍那样丰富。曹操的兵力也远不及袁绍，其总兵力大概不过几万人，投入前线的兵力据《武帝纪》说&ldquo;兵不满万，伤者十二三&rdquo;。裴松之认为此数不准确，曹操的兵力不会如此之少，但曹操兵力远逊于袁绍却是毫无疑问的。<sup>[22]</sup></div>\r\n<div class="para">袁绍大军来攻，许都震动。曹操安慰众将说：&ldquo;吾知绍之为人，志大而智小，色厉而胆薄，忌克而少威，兵多而分画不明，将骄而众令不一，土地虽广，粮食虽丰，适足以为我奉也。&rdquo;</div>\r\n<div class="para">二月，袁绍大将颜良等人围攻白马，拉开了大战的序幕。四月，曹操亲自率兵北上解白马之围，他采纳谋士荀攸之计，先进军延津（今河南延津北，白马以西），做出要渡河袭击袁军的态势，吸引袁军分兵西向，然后突然转向迅速赶往白马。曹操军突然杀到，袁军措手不及，颜良被关羽斩首<sup>[23]</sup>，袁军大败，白马之围遂解。曹操救出白马军民，沿黄河西撤。袁绍闻知，立即命文丑、刘备渡河追赶曹操。曹操见追兵渐近，命军士解鞍放马，并置辎重于道。袁军追兵大至，争抢辎重，阵形混乱。曹操率领仅有的骑兵突然杀出，大破追兵，阵斩文丑。袁军大震。曹操初战得胜，主动撤军，继续扼守官渡。</div>\r\n<div class="para">八月，袁绍大军连营而进，东西数十里，依沙堆为屯，进逼官渡。曹操分兵坚守营垒，伺机而动。袁军向曹营发动猛攻，先是作高橹、起土山，由上向曹营中射箭，接着又挖地道，欲从地下袭击曹营，皆被曹操以设投石机、挖掘沟壑之法破解。两军一攻一守，相持近二个月。久战之下，曹操处境极为困难。</div>\r\n<div class="para">十月，袁绍从河北运来粮草万余车，派大将淳于琼等带万余人看守，屯于离袁绍大营四十里的乌巢。这时袁绍谋士许攸因 向袁绍献偷袭许都之计不成，且在河北的家眷犯法被抓，心生悔恨，而来投曹操，献计让曹操偷袭乌巢。曹操大喜，跣足出迎，之后亲率精锐步骑五千人，军队人衔 枚，马勒口，换袁军军装乘夜从小路偷袭乌巢。曹操军至乌巢，命四面放火，袁军大乱，淳于琼拒营死守。袁绍闻知，急忙派兵救援，曹操左右见&ldquo;贼骑稍近，请分 兵拒之。&rdquo;曹操大怒说：&ldquo;贼在背后，乃白！&rdquo;士卒都拼死力战，因此大破袁军，斩淳于琼等，尽燔其粮草。而当袁绍听说曹操袭击乌巢时，认为这正是攻破曹操大 营的好机会，因此派去的援兵很少，而以重兵围 攻曹操大营。由于曹操预留兵力精且多，曹营未破，乌巢败讯已经传来，大将张郃、高览等人率部投降曹操，袁军溃散。袁绍弃军逃回黄河以北。曹军大获全胜，斩 首七万余级，尽获袁军辎重图书珍宝。曹操清点袁绍书信，得到自己部下勾结袁绍的信，尽烧之，说：&ldquo;当绍之强，孤犹不能自保，而况众人乎！&rdquo;</div>\r\n<div class="para">客观条件上，曹操处于劣势，但由于他能正确分析客观条件，善于听取别人的正确意见，所以能扬长避短，采用正确的战略战术，使战争向有利于自己的方面转化，经过自己主观上的努力，终于赢得了胜利。官渡之战，曹操击溃了最大的敌人袁绍，由他统一北方已是大势所趋。官渡之战也是中国战争史上以少胜多、以弱胜强的著名战例。</div>\r\n<h3 class="headline-2"><span class="headline-content">远征乌桓</span></h3>\r\n<div class="para">\r\n<div class="album-view layoutright log-set-param" style="width: 154px; padding-left: 20px;" data-layout="right">\r\n<p class="album-div" style="height: 220px; width: 154px;"><img class="album-cover " title="动漫游戏版曹操" src="http://c.hiphotos.baidu.com/baike/pic/item/37d3d539b6003af338d6b327352ac65c1038b60c.jpg" alt="动漫游戏版曹操" width="154" height="220" /></p>\r\n<span class="title">动漫游戏版曹操</span><span class="albumCount">(20张)</span></div>\r\n公元202年（建安七年），袁绍病死，袁绍的两个儿子袁谭、袁尚不和，发生火拼。袁谭不敌袁尚，向曹操乞降。</div>\r\n<div class="para">公元204年（建安九年）二月，曹操乘袁尚出兵攻打袁谭之机，进军围攻邺城（今河北临漳西，河南安阳北）。袁尚率军回救，依滏水（今滏阳河）为营，曹操进军将其营寨包围。袁尚害怕，请求投降，曹操不许。袁尚乘夜逃跑，袁军溃散。袁尚逃奔中山（今河北定县）。曹操命人拿着缴获袁尚的印绶节钺招降邺城守军，城中斗志崩溃。邺城遂被曹操攻破。从这一年起，曹操把自己的据点北迁到了冀州邺城<sup>[24]</sup>，政令军队此后皆从此出，而汉献帝的都城许县则只留些许官吏。</div>\r\n<div class="para">公元205年（建安十年）正月，曹操又以负约为名，攻灭袁谭，冀、青二州平定。于是，曹操上表让还兖州牧，改任冀州牧。袁尚兵败后，逃奔幽州刺史袁熙。不久，袁尚、袁熙又逃奔三郡乌桓。</div>\r\n<div class="para">公元206年（建安十一年），曹操攻灭高干，平定并州。</div>\r\n<div class="para">公元207年（建安十二年），曹操为了肃清袁氏残余势力，也为了彻底解决三郡乌桓入塞为害问题，决定远征乌桓。汉末，辽西、辽东、右北平三郡乌桓结合，是为三郡乌桓，其首领为辽西部的蹋顿。三郡乌桓与袁氏关系一直很好，并屡次侵扰边境，掳掠人口财物。</div>\r\n<div class="para">这年五月，曹操亲率大军到达无终（今蓟县）。时正雨季，道路积水，&ldquo;浅不通车马，深不载舟船&rdquo;。曹操从无终人田畴之议，改从一条久已断绝，但&ldquo;尚有微径可寻&rdquo;的路线进军。在田畴的引导下，曹操大军登徐无山（今河北玉田北），出卢龙塞（今河北喜峰口附近），&ldquo;堑山堙谷五百余里&rdquo;，直指乌桓老巢柳城（今辽宁朝阳南）。</div>\r\n<div class="para">八月，曹军进至离柳城不足二百里时，乌桓才发现，于是蹋顿与袁尚、袁熙等人率数万骑兵迎击。\r\n<div class="text_pic layoutright" style="width: 169px; padding-left: 20px;" data-layout="right"><img class="editorImg  log-set-param" title="远征乌桓" src="http://d.hiphotos.baidu.com/baike/s%3D220/sign=440502f971cf3bc7ec00caeee101babd/ac4bd11373f0820279a36fcb4afbfbedab641b14.jpg" alt="远征乌桓" width="169" height="220" />\r\n<p class="pic-info" style="cursor: pointer;">远征乌桓</p>\r\n</div>\r\n二军相遇，时曹军辎重在后，&ldquo;被甲者少，&rdquo;而乌桓军军势甚盛。曹操登高瞭望，见乌桓军虽多，但阵势不整，遂命大将张辽为前锋，乘乌桓军阵稍动之机，向乌桓军发动猛攻。乌桓军大乱，曹军阵斩蹋顿，大获全胜，胡、汉降者二十余万，袁尚等人逃奔割据平州的公孙康。 这时，有人劝曹操乘势进击公孙康，曹操说：&ldquo;吾方使康斩送尚、熙首，不烦兵也。&rdquo;遂率军还师。不久，公孙康果然斩杀袁尚、袁熙，并将其首级献与曹操。诸将 不明所以，曹操说：&ldquo;彼素畏尚等，吾急之则并力，缓之则自相图，其势然也。&rdquo;于是，曹操攻破三郡乌桓，也彻底肃清了袁氏势力。</div>\r\n<div class="para">十一月至易水，代郡乌丸行单于普富卢、上郡乌丸行单于那楼将其名王来贺。同年郭嘉因 水土不服、气候恶劣、日夜急行操劳过度，在曹操北归前病逝。归程途中，据《曹瞒传》记载：&ldquo;时寒且旱，二百里无复水，军又乏食，杀马数千匹以为粮，凿地入 三十馀丈乃得水。既还，科问前谏者，众莫知其故，人人皆惧。公皆厚赏之，曰：&lsquo;孤前行，乘危以徼幸，虽得之，天所佐也，故不可以为常。诸君之谏，万安之 计，是以相赏，后勿难言之。&rsquo;&rdquo;<sup>[25]</sup></div>', 1, '2014-03-17 13:44:55', 1, NULL, 0),
(4, '刘备', '139705138346644676.jpg', NULL, '三国时期历史人物', '<div class="para">刘备（公元161年－公元223年6月10日），字玄德，东汉末年幽州涿郡涿县（今河北省涿州市）人，西汉中山靖王刘胜的后代，三国时期蜀汉开国皇帝，政治家，史家又称他为先主。</div>\r\n<div class="para">刘备少年与公孙瓒拜卢植为师求学，而后参与镇压黄巾起义。与关羽、张飞先后救援过北海孔融、徐州陶谦等。陶谦病亡后将徐州让与刘备。</div>\r\n<div class="para">刘备早期颠沛流离，投靠过多个诸侯，后于赤壁之战与孙权联盟击败曹操，趁势夺取荆州，而后进取益州，建立蜀汉政权。陈寿评刘备机权干略不及曹操，但其弘毅宽厚，知人待士，百折不挠，终成帝业。刘备自己也曾说过，自己做事&ldquo;每与操反，事乃成尔&rdquo;。</div>\r\n<div class="para">公元221年，刘备在成都称帝，国号汉，年号章武，史称蜀或蜀汉，占有今四川、云南大部、贵州全部，陕西汉中和甘肃白龙江一部分。</div>\r\n<p>公元223年，刘备病逝于白帝城，终年63岁，谥号昭烈皇帝，庙号烈祖（一说太宗）<sup>[1]</sup>，葬惠陵。后世有众多文艺作品以其为主角，在成都武侯祠有昭烈庙为纪念。<sup>[2]</sup></p>', 1, '2014-03-17 13:48:12', 1, NULL, 0),
(5, '孙尚香', NULL, NULL, '', '<p><em><strong>我是孙尚香</strong></em></p>', 1, '2014-03-19 14:03:36', 1, NULL, 0),
(6, '奶茶mm', '139694743041438221.jpg', NULL, '章泽天', '<p style="text-align: left;">章泽天，女，江苏<a href="http://baike.baidu.com/view/4026.htm" target="_blank">南京</a>人，<a href="http://baike.baidu.com/view/49004.htm" target="_blank">网络红人</a>。2009年因一张手捧奶茶的照片走红网络，被称为&ldquo;<a href="http://baike.baidu.com/view/3139604.htm" target="_blank">奶茶妹妹</a>&rdquo;。章泽天于<a href="http://baike.baidu.com/view/1394194.htm" target="_blank">2014年</a>4月1日正式加入<a href="http://baike.baidu.com/view/2353.htm" target="_blank">微软</a>Bing搜索技术中心市场团队实习。aaa</p>', 1, '2014-04-08 08:34:01', 1, NULL, 0),
(7, '刘强东', '13969517544317769.jpg', NULL, '京东商城老总', '<p>京东</p>', 1, '2014-04-08 10:09:18', 1, NULL, 0),
(8, '清华大学', '139695204495428284.jpg', NULL, '清华大学', '<p>中国最好的大学，没有之一</p>', 1, '2014-04-08 10:14:20', 1, NULL, 0),
(9, '测试', '139856657384949924.jpg', NULL, '', '', 1, '2014-04-26 15:29:20', 1, NULL, 0),
(10, '测试', '139856560615283764.jpg', NULL, '', '', 1, '2014-04-27 02:27:10', 1, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `resource_focus`
--

CREATE TABLE IF NOT EXISTS `resource_focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromrid` int(10) unsigned NOT NULL,
  `torid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(400) DEFAULT NULL COMMENT 'relationship description',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_focus` (`fromrid`,`torid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `resource_focus`
--

INSERT INTO `resource_focus` (`id`, `fromrid`, `torid`, `groupid`, `desc`, `time`) VALUES
(1, 1, 3, 0, '第一个', '2014-03-24 14:49:51'),
(2, 1, 4, 0, '哈哈', '2014-03-24 14:55:14'),
(3, 1, 8, 0, NULL, '2014-04-14 13:41:22'),
(4, 3, 1, 0, NULL, '2014-04-14 13:43:58'),
(5, 3, 4, 0, NULL, '2014-04-14 13:44:16'),
(6, 4, 1, 0, NULL, '2014-04-15 13:09:04'),
(12, 3, 5, 0, NULL, '2014-04-15 13:40:06'),
(13, 3, 6, 0, NULL, '2014-04-15 13:40:08'),
(14, 3, 7, 0, NULL, '2014-04-15 13:40:08'),
(15, 3, 8, 0, NULL, '2014-04-15 13:40:09'),
(17, 1, 5, 0, NULL, '2014-04-15 13:48:42');

-- --------------------------------------------------------

--
-- 表的结构 `resource_focusgroup`
--

CREATE TABLE IF NOT EXISTS `resource_focusgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(160) NOT NULL,
  `desc` varchar(400) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `resource_topic`
--

CREATE TABLE IF NOT EXISTS `resource_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(160) NOT NULL,
  `content` text NOT NULL,
  `authorid` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastedit` timestamp NULL DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `replys` int(10) unsigned NOT NULL DEFAULT '0',
  `like` int(10) unsigned NOT NULL DEFAULT '0',
  `hate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `resource_topic_reply`
--

CREATE TABLE IF NOT EXISTS `resource_topic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `authorid` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` char(32) NOT NULL,
  `gender` int(11) DEFAULT '0' COMMENT '0未知1男2女',
  `birthday` date DEFAULT NULL,
  `iconid` varchar(255) DEFAULT NULL,
  `regip` varchar(15) DEFAULT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastip` varchar(15) DEFAULT NULL,
  `lasttime` timestamp NULL DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-管理员',
  `topics` int(10) unsigned NOT NULL DEFAULT '0',
  `collection` int(10) unsigned NOT NULL DEFAULT '0',
  `focususers` int(11) NOT NULL DEFAULT '0',
  `befocused` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被关注次数',
  `checkup` int(11) NOT NULL DEFAULT '0' COMMENT '1-已审核 0-未审核',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `gender`, `birthday`, `iconid`, `regip`, `regtime`, `lastip`, `lasttime`, `telephone`, `admin`, `topics`, `collection`, `focususers`, `befocused`, `checkup`) VALUES
(1, 'mengtao09@foxmail.com', '孟涛', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, NULL, '2014-03-09 04:50:46', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_collections`
--

CREATE TABLE IF NOT EXISTS `user_collections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_link`
--

CREATE TABLE IF NOT EXISTS `user_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromuid` int(10) unsigned NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
