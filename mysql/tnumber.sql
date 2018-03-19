/*
SQLyog v10.2 
MySQL - 5.7.19 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `tnumber` (
	`id` int (100) unsigned NOT NULL auto_increment,
	`train_number` varchar (300),
	`train_type` varchar (300),
	`start_station` varchar (300),
	`end_station` varchar (300),
	`days` int (100),
	`start_time` int (100),
	`end_time` int (100),
	PRIMARY KEY  (`id`)
); 
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('1','1148','普客火车','宝鸡','连云港','1','57600','34272');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('2','1461','普客火车','北京','上海','1','41544','25812');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('3','D101','动车','北京','哈尔滨','0','48564','77004');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('4','D11','动车','北京','沈阳','0','44532','62640');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('5','D17','动车','北京','沈阳','0','32940','50904');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('6','D19','动车','北京','长春','0','51048','73728');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('7','D44','动车','北京','大连','0','23580','47088');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('8','D6657','动车','北京','保定','0','46800','52488');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('9','D6752','动车','包头','呼和浩特','0','28800','33300');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('10','K1025','快速火车','兰州','青岛','2','84816','26918');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('11','K1118','快速火车','北京','包头','1','45072','21672');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('12','K1177','快速火车','北京','银川','1','48060','21816');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('13','K1306','快速火车','银川','西安','1','59148','29412');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('14','K132','快速火车','兰州','深圳','2','47376','32976');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('15','K1364','快速火车','成都','北京','2','79200','19512');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('16','K1382','快速火车','包头','哈尔滨','1','43272','54792');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('17','K1526','快速火车','邯郸','哈尔滨','1','36432','37080');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('18','K1566','快速火车','包头','大连','1','48708','70164');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('19','K1612','快速火车','北京','连云港','1','32940','83088');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('20','K1616','快速火车','成都','银川','1','55116','73728');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('21','K166','快速火车','昆明','西安','2','69840','22608');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('22','K180','快速火车','郑州','北京','1','79632','22176');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('23','K196','快速火车','成都','呼和浩特','2','54360','83088');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('24','K220','快速火车','邯郸','银川','1','66312','68580');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('25','K228','快速火车','兰州','广州','2','76788','43668');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('26','K2288','快速火车','长春','昆明','2','68724','19224');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('27','K290','快速火车','上海','成都','1','30636','76860');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('28','K368','快速火车','敦煌','西安','1','32832','33372');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('29','K386','快速火车','成都','沈阳','2','45144','21780');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('30','K41','快速火车','北京','敦煌','2','77040','43920');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('31','K4318','快速火车','库尔勒','北京','2','55440','5400');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('32','K4356','快速火车','南京','库尔勒','3','14760','50940');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('33','K45','快速火车','北京','福州','1','37440','77580');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('34','K473','快速火车','北京','昆明','2','58176','43704');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('35','K508','快速火车','贵阳','北京','2','79596','54792');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('36','K598','快速火车','包头','广州','2','62280','40032');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('37','K601','快速火车','北京','太原','1','80028','29520');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('38','K656','快速火车','杭州','呼和浩特','2','76860','43632');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('39','K692','快速火车','昆明','呼和浩特','2','41076','44424');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('40','K709','快速火车','包头','青岛','1','33732','36648');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('41','K7708','快速火车','石家庄','北京','0','36720','52092');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('42','K7722','快速火车','邯郸','保定','0','26388','40212');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('43','K7773','快速火车','北京','衡水','0','34056','47448');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('44','K805','快速火车','上海','保定','1','44424','39780');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('45','K858','快速火车','兰州','成都','1','44496','48168');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('46','K869','快速火车','郑州','成都','1','48024','48132');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('47','K880','快速火车','成都','西安','1','45180','19548');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('48','T112','特快火车','杭州','兰州','1','36828','45288');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('49','T122','特快火车','长春','广州','2','76608','37728');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('50','T232','特快火车','西安','北京','1','62568','21888');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('51','T31','特快火车','北京','杭州','1','59544','32508');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('52','T368','特快火车','大连','广州','2','55116','19080');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('53','T42','特快火车','西安','北京','1','69804','33444');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('54','T56','特快火车','宝鸡','天津','1','65412','45144');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('55','T64','特快火车','合肥','北京','1','66060','20016');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('56','T7','特快火车','北京','成都','1','59040','73296');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('57','T7016','特快火车','宝鸡','西安','0','28908','34488');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('58','Z126','直达特快火车','厦门','兰州','1','25416','41004');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('59','Z235','直达特快火车','哈尔滨','广州','2','77184','29808');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('60','Z270','直达特快火车','呼和浩特','上海','1','36360','41724');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('61','Z281','直达特快火车','包头','杭州','1','37044','44028');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('62','Z318','直达特快火车','包头','北京','0','47700','77400');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('63','Z320','直达特快火车','包头','大同','0','25200','44964');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('64','Z4','直达特快火车','重庆','北京','1','54288','36360');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('65','Z50','直达特快火车','成都','北京','1','41112','36072');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('66','Z7','直达特快火车','北京','青岛','1','79488','22860');
insert into `tnumber` (`id`, `train_number`, `train_type`, `start_station`, `end_station`, `days`, `start_time`, `end_time`) values('67','Z76','直达特快火车','兰州','北京','1','62820','51552');
