/*
Navicat MySQL Data Transfer

Source Server         : 47.92.166.33
Source Server Version : 50635
Source Host           : 47.92.166.33:3306
Source Database       : ttzy

Date: 2018-11-25 10:45:32
*/


/*
-- ----------------------------
-- Table structure for resource_def
-- 	private String typeKey = RESOURCE_DEF + "ʾ����ID";	//varchar	Y	��������Դ����Key
--	private String logoUrl = "/pages/share/model.jpg";//ʾ��ͼƬ
--	private String name = "ʾ������";	//varchar	Y	��Դ��������
--	private String remark = "ʾ����ע��";	//varchar	N	��ע
-- ----------------------------*/
DROP TABLE IF EXISTS `resource_def`;
CREATE TABLE `resource_def` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `typekey` varchar(100) NOT NULL COMMENT '��Դ����Key',
  `logourl` varchar(1000) DEFAULT NULL COMMENT '��ԴlogoURL',
  `name` varchar(200) NOT NULL COMMENT '��Դ��������',
  `remark` varchar(200) DEFAULT NULL COMMENT '����',
  `rf1` varchar(200) DEFAULT NULL COMMENT 'Ԥ��1',
  `rf2` varchar(200) DEFAULT NULL COMMENT 'Ԥ��2',
  `rf3` varchar(200) DEFAULT NULL COMMENT 'Ԥ��3',
  `rf4` varchar(200) DEFAULT NULL COMMENT 'Ԥ��4',
  `rf5` varchar(200) DEFAULT NULL COMMENT 'Ԥ��5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*
-- ----------------------------
-- Records of resource_def
-- ----------------------------*/
INSERT INTO `resource_def` VALUES ('1', 'RESOURCE_DEFʾ����ID', 'RESOURCE_DETAILpicture', 'ʾ������', 'ʾ����ע��', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');

/*
-- ----------------------------
-- Table structure for resource_attr
--	private String attrKey = RESOURCE_ATTR + "ʾ����ͷID"; // varchar Y ����������Key
--	private String typeKey = RESOURCE_DEF + "ʾ����ID"; // varchar Y ��Դ����Key
--  private int attrlen; // varchar Y ��Դ����
--	private String attrName = "ʾ����ͷ"; // varchar Y ������
--	private String attrLevel = "0"; // int Y ���Լ��� 0:�κ��˿ɼ�1:��Ա�ɼ� 2:����Ա�ɼ�
--	private float attrPosition = 0; // varchar Y ��Դλ��
--	private String attrType = "default"; // varchar Y �������� Ĭ�ϣ�ֱ�Ӷ�ȡͼƬ������ֵ��ͼƬ���л�ȡ
--	private String remark = "ʾ����ͷ��ע"; // varchar N ��ע
-- ----------------------------*/
DROP TABLE IF EXISTS `resource_attr`;
CREATE TABLE `resource_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `attrkey` varchar(100) NOT NULL COMMENT '��Դ����Key',
  `typekey` varchar(1000) NOT NULL COMMENT '��Դ����Key',
  `attrlen` int(11) DEFAULT NULL COMMENT '��Դ����',
  `attrname` varchar(200) NOT NULL COMMENT '��Դ������',
  `attrlevel` varchar(200) NOT NULL COMMENT '���Լ���',
  `attrposition` float(35) DEFAULT NULL COMMENT '��Դλ��',
  `attrtype` varchar(200) DEFAULT NULL COMMENT '��������',
  `remark` varchar(200) DEFAULT NULL COMMENT '����',
  `rf1` varchar(200) DEFAULT NULL COMMENT 'Ԥ��1',
  `rf2` varchar(200) DEFAULT NULL COMMENT 'Ԥ��2',
  `rf3` varchar(200) DEFAULT NULL COMMENT 'Ԥ��3',
  `rf4` varchar(200) DEFAULT NULL COMMENT 'Ԥ��4',
  `rf5` varchar(200) DEFAULT NULL COMMENT 'Ԥ��5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*
-- ----------------------------
-- Records of resource_attr
-- ----------------------------*/
INSERT INTO `resource_attr` VALUES ('1', 'RESOURCE_ATTRʾ����ͷID1', 'RESOURCE_DEFʾ����ID', 100, 'ʾ����ͷ1', '0', 1, 'default', 'ʾ����ͷ��ע1', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_attr` VALUES ('2', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 100, 'ʾ����ͷ2', '0', 2, 'default', 'ʾ����ͷ��ע2', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_attr` VALUES ('3', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 100, 'ʾ����ͷ3', '0', 4, 'default', 'ʾ����ͷ��ע3', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_attr` VALUES ('4', 'RESOURCE_ATTRʾ����ͷID4', 'RESOURCE_DEFʾ����ID', 100, 'ʾ����ͷ4', '0', 3, 'default', 'ʾ����ͷ��ע4', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');

/*
-- ----------------------------
-- Table structure for resource_detail
--	private String resourceKey; // varchar Y ��ԴKey
--	private String attrKey; // varchar Y ����Key
--	private String typeKey; // varchar Y ��Դ����Key
--	private String attrName; // varchar Y ������
--	private String attrLevel; // int Y ���Լ��� 0:�κ��˿ɼ�1:��Ա�ɼ� 2:����Ա�ɼ�
--	private String attrType; // varchar Y �������� Ĭ�ϣ�ֱ�Ӷ�ȡͼƬ������ֵ��ͼƬ���л�ȡ
--	private String attrValue; // varchar Y ����ֵ
--	private String attrState; // varchar Y ״̬
--	private String attrLastState; // varchar Y ״̬
--	private String approvalUser;// ������
--	private String approvalMess;// ������Ҋ
-- ----------------------------*/
DROP TABLE IF EXISTS `resource_detail`;
CREATE TABLE `resource_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `resourcekey` varchar(100) NOT NULL COMMENT '��ԴKey',
  `attrkey` varchar(100) NOT NULL COMMENT '��Դ����Key',
  `typekey` varchar(100) DEFAULT NULL COMMENT '��Դ����Key',
  `attrname` varchar(200) DEFAULT NULL COMMENT '������',
  `attrlevel` varchar(11) DEFAULT NULL COMMENT '���Լ���',
  `attrtype` varchar(100) DEFAULT NULL COMMENT '��������',
  `attrvalue` text DEFAULT NULL COMMENT '����ֵ',
  `attrstate` varchar(100) DEFAULT NULL COMMENT '״̬',
  `attrlaststate` varchar(100) DEFAULT NULL COMMENT 'last״̬',
  `approvaluser` varchar(100) DEFAULT NULL COMMENT '������',
  `approvalmess` varchar(200) DEFAULT NULL COMMENT '������Ҋ',
  `rf1` varchar(200) DEFAULT NULL COMMENT 'Ԥ��1',
  `rf2` varchar(200) DEFAULT NULL COMMENT 'Ԥ��2',
  `rf3` varchar(200) DEFAULT NULL COMMENT 'Ԥ��3',
  `rf4` varchar(200) DEFAULT NULL COMMENT 'Ԥ��4',
  `rf5` varchar(200) DEFAULT NULL COMMENT 'Ԥ��5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*
-- ----------------------------
-- Records of resource_detail
-- ----------------------------*/
INSERT INTO `resource_detail` VALUES ('1', 'RESOURCE_DETAILʾ��ֵID1', 'RESOURCE_ATTRʾ����ͷID1', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ1', '0', 'default', '��1ֵ1', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('2', 'RESOURCE_DETAILʾ��ֵID1', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ2', '0', 'default', '��1ֵ2', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('3', 'RESOURCE_DETAILʾ��ֵID1', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ3', '0', 'default', '��1ֵ3', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('4', 'RESOURCE_DETAILʾ��ֵID1', 'RESOURCE_ATTRʾ����ͷID4', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ4', '2', 'default', '��1ֵ4', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('5', 'RESOURCE_DETAILʾ��ֵID2', 'RESOURCE_ATTRʾ����ͷID1', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ1', '0', 'default', '��2ֵ1', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('6', 'RESOURCE_DETAILʾ��ֵID2', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ2', '0', 'picture', '/rs/file/getfile.do?filekey=RESOURCE_DETAILpicture', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('7', 'RESOURCE_DETAILʾ��ֵID2', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ3', '0', 'video', '/rs/file/getfile.do?filekey=RESOURCE_DETAILvideo', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('8', 'RESOURCE_DETAILʾ��ֵID2', 'RESOURCE_ATTRʾ����ͷID4', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ4', '2', 'default', '��2ֵ4', 'Available', 'ApprovalAdd', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('9', 'RESOURCE_DETAILʾ��ֵID3', 'RESOURCE_ATTRʾ����ͷID1', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ1', '0', 'default', '��3ֵ1', 'ApprovalAdd', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('10', 'RESOURCE_DETAILʾ��ֵID3', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ2', '0', 'default', '��3ֵ2', 'ApprovalAdd', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('11', 'RESOURCE_DETAILʾ��ֵID3', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ3', '0', 'picture', '/rs/file/getfile.do?filekey=RESOURCE_DETAILpicture', 'ApprovalAdd', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('12', 'RESOURCE_DETAILʾ��ֵID3', 'RESOURCE_ATTRʾ����ͷID4', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ4', '2', 'video', '/rs/file/getfile.do?filekey=RESOURCE_DETAILvideo', 'ApprovalAdd', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('13', 'RESOURCE_DETAILʾ��ֵID4', 'RESOURCE_ATTRʾ����ͷID1', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ1', '0', 'video', '/rs/file/getfile.do?filekey=RESOURCE_DETAILvideo', 'ApprovalDel', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('14', 'RESOURCE_DETAILʾ��ֵID4', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ2', '0', 'default', '��4ֵ2', 'ApprovalDel', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('15', 'RESOURCE_DETAILʾ��ֵID4', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ3', '0', 'default', '��4ֵ3', 'ApprovalDel', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('16', 'RESOURCE_DETAILʾ��ֵID4', 'RESOURCE_ATTRʾ����ͷID4', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ4', '2', 'picture', '/rs/file/getfile.do?filekey=RESOURCE_DETAILpicture', 'ApprovalDel', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('17', 'RESOURCE_DETAILʾ��ֵID5', 'RESOURCE_ATTRʾ����ͷID1', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ1', '0', 'picture', '/rs/file/getfile.do?filekey=RESOURCE_DETAILpicture', 'ApprovalUpdate', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('18', 'RESOURCE_DETAILʾ��ֵID5', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ2', '0', 'video', '/rs/file/getfile.do?filekey=RESOURCE_DETAILvideo', 'ApprovalUpdate', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('19', 'RESOURCE_DETAILʾ��ֵID5', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ3', '0', 'default', '��5ֵ3', 'ApprovalUpdate', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_detail` VALUES ('20', 'RESOURCE_DETAILʾ��ֵID5', 'RESOURCE_ATTRʾ����ͷID4', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ4', '2', 'default', '��5ֵ4', 'ApprovalUpdate', '', 'ϵͳ���', '', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');


/*
-- ----------------------------
-- Table structure for resource_file
--	private String resourceKey; // long Y ��ԴId
--	private String attrKey; // varchar Y ����Key
--	private String typeKey; // varchar Y ��Դ����Key
--	private String attrName; // varchar Y ������
--	private String fileKey; // varchar Y ������filekey
--	private String directory; // varchar Y �洢��Ŀ¼
--	private String relativePath; // varchar ���·��
--	private long lastmodifytime; // long Y ����޸�ʱ��
-- ----------------------------*/
DROP TABLE IF EXISTS `resource_file`;
CREATE TABLE `resource_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `resourcekey` varchar(100) NOT NULL COMMENT '��ԴKey',
  `attrkey` varchar(100) NOT NULL COMMENT '��Դ����Key',
  `typekey` varchar(100) DEFAULT NULL COMMENT '��Դ����Key',
  `attrname` varchar(200) DEFAULT NULL COMMENT '������',
  `filekey` varchar(100) NOT NULL COMMENT 'filekey',
  `directory` varchar(255) DEFAULT NULL COMMENT '�洢��Ŀ¼',
  `relativepath` varchar(255) DEFAULT NULL COMMENT '���·��',
  `lastmodifytime` varchar(100) DEFAULT NULL COMMENT '����޸�ʱ��',
  `rf1` varchar(200) DEFAULT NULL COMMENT 'Ԥ��1',
  `rf2` varchar(200) DEFAULT NULL COMMENT 'Ԥ��2',
  `rf3` varchar(200) DEFAULT NULL COMMENT 'Ԥ��3',
  `rf4` varchar(200) DEFAULT NULL COMMENT 'Ԥ��4',
  `rf5` varchar(200) DEFAULT NULL COMMENT 'Ԥ��5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*
-- ----------------------------
-- Records of resource_file
-- ----------------------------*/
INSERT INTO `resource_file` VALUES ('1', 'RESOURCE_DETAILʾ��ֵID2', 'RESOURCE_ATTRʾ����ͷID2', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ2', 'RESOURCE_DETAILpicture', '', 'RFl1381901148036.jpg', '0', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');
INSERT INTO `resource_file` VALUES ('2', 'RESOURCE_DETAILʾ��ֵID3', 'RESOURCE_ATTRʾ����ͷID3', 'RESOURCE_DEFʾ����ID', 'ʾ����ͷ3', 'RESOURCE_DETAILvideo', '', 'RFlEP40.mp4', '0', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');

/*
-- ----------------------------
-- Table structure for resource_share
--	private String shareKey; //����ID�����ڷ��ʺͻ�ȡ
--	private String shareName; //����ID�����ڷ��ʺͻ�ȡ
--	private String resourceListJson; //�������Դ�б�Json��ʽ
--	private String sendUser;		//������
--	private String templateName;		//ģ������
--	private long sendTime;			//���һ�η���ʱ��
--	private long LastTime;			//�������ʱ�䣬������˫У��
-- ----------------------------*/
DROP TABLE IF EXISTS `resource_share`;
CREATE TABLE `resource_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `sharekey` varchar(100) NOT NULL COMMENT '����Key',
  `sharename` varchar(100) DEFAULT NULL COMMENT '��������',
  `resourcelistjson` text DEFAULT NULL COMMENT '��Դ�б�',
  `senduser` varchar(100) DEFAULT NULL COMMENT '������',
  `templatename` varchar(100) NOT NULL COMMENT 'ģ������',
  `sendtime` varchar(100) DEFAULT NULL COMMENT '����ʱ��',
  `lasttime` varchar(100) DEFAULT NULL COMMENT '������ʱ��',
  `rf1` varchar(200) DEFAULT NULL COMMENT 'Ԥ��1',
  `rf2` varchar(200) DEFAULT NULL COMMENT 'Ԥ��2',
  `rf3` varchar(200) DEFAULT NULL COMMENT 'Ԥ��3',
  `rf4` varchar(200) DEFAULT NULL COMMENT 'Ԥ��4',
  `rf5` varchar(200) DEFAULT NULL COMMENT 'Ԥ��5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*
-- ----------------------------
-- Records of resource_share
-- ----------------------------*/
INSERT INTO `resource_share` VALUES ('1', 'RESOURCE_SHAREtemplatekey', 'ʾ������', '[{"typeKey":"RDfʾ����ID", "resourceKey":"RDtʾ��ֵID"}, {"typeKey":"RDfʾ����ID", "resourceKey":"RDtʾ��ֵID2"}]', 'ʾ��������', 'template0', '0', '0', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');

/*
-- ----------------------------
-- Table structure for resource_sharetemp
--	private String tempKey; //ģ��ID
--	private String tempName; //ģ�����Q
--	private String tempFilePath; //ģ��filepath
-- ----------------------------*/
DROP TABLE IF EXISTS `resource_sharetemp`;
CREATE TABLE `resource_sharetemp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `tempKey` varchar(100) NOT NULL COMMENT '����ģ��Key',
  `tempName` varchar(100) NOT NULL COMMENT '����ģ������',
  `tempFilePath` varchar(255) DEFAULT NULL COMMENT 'ģ������·��',
  `rf1` varchar(200) DEFAULT NULL COMMENT 'Ԥ��1',
  `rf2` varchar(200) DEFAULT NULL COMMENT 'Ԥ��2',
  `rf3` varchar(200) DEFAULT NULL COMMENT 'Ԥ��3',
  `rf4` varchar(200) DEFAULT NULL COMMENT 'Ԥ��4',
  `rf5` varchar(200) DEFAULT NULL COMMENT 'Ԥ��5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*
-- ----------------------------
-- Records of resource_sharetemp
-- ----------------------------*/
INSERT INTO `resource_sharetemp` VALUES ('1', 'RESOURCE_SHAREtemplatekey', 'defaultģ��', '/pages/share/template/template0.jsp', 'Ԥ��1', 'Ԥ��2', 'Ԥ��3', 'Ԥ��4', 'Ԥ��5');


