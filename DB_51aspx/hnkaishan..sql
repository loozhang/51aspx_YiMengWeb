if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_CompanyInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_CompanyInfo]

CREATE TABLE [ZT_COM_CompanyInfo] (
[InfoID] [int]  IDENTITY (1, 1)  NOT NULL,
[InfoOrder] [int]  NULL,
[Title] [text]  NULL,
[ImgUrl] [varchar]  (50) NULL,
[Body] [text]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_CompanyInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_CompanyInfo] PRIMARY KEY  NONCLUSTERED ( [InfoID] )
SET IDENTITY_INSERT [ZT_COM_CompanyInfo] ON

INSERT [ZT_COM_CompanyInfo] ([InfoID],[InfoOrder],[Title],[ImgUrl],[Body],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 4,1,'��˾���','onlinenone.jpg','&nbsp;&nbsp;&nbsp;&nbsp; �㽭��ɽѹ�����ɷ����޹�˾ϵ��ɽ�ɷ����޹�˾���㽭��ɽѹ���������޹�˾���㽭��ɽ�������޹�˾���㽭����Ͷ�ʹ������޹�˾���㽭�ķ����Ź�˾���ܿ˼��23����Ȼ�˹�ͬ�������㽭��ɽͨ�û�е���޹�˾�����������Ĺɷ����޹�˾����˾��Ӫҵ��Ϊ����ѹ�������з������������ۣ�Ŀǰ��Ҫ��ƷΪ�ݸ�ʽ����ѹ����������ʽ����ѹ�������������������㷺Ӧ���ڻ�е���졢��ɽұ�����ҵ��<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007��1�£���˾�ɹ�ʵ�����ݸ�ʽ����ѹ�����ĺ��Ĳ������ݸ����������ƣ������˹�������˾���й��г��ļ���¢�ϡ��������ҹ��ݸ����������������ڵľ��档2007��9�£���˾�����з�����������ѹ�������ƶ��ݸ�ѹ�������㽭ʡ����ó��ίԱ�����衰�㽭ʡ�ӿ췢չװ������ҵ�ص����򡪡�������̨���ף���Ʒ��֤�飬���ٻ�2008���Ľ��й����������еչ���ᡱ�𽱣� 2008��3�£���˾��Ϊ���ڿ���ѹ������ҵ�׼һ�á��й������̱ꡱ��������ҵ����˾ϵ��Ʒ�����𽥳ɳ�Ϊ��ҵ���ȵ���������Ʒ�ơ���˾��������˴�5.5kw��560kwȫ��ϵ�ݸ�ʽ��ѹ��������������Ϊ�ҹ���һ���ڸ���ҵ��ӵ������֪ʶ��Ȩ�����ļ����ͺ��ľ�������ȫ��ϵ����ģ����ѹ����������ҵ��������������й���о������˾�ƻ���������5��ʱ���ڣ���չ��Ϊ����һ����ѹ����������ҵ��</DIV>','admin','2009-7-7 16:24:38','admin','2010-8-24 9:49:20')

SET IDENTITY_INSERT [ZT_COM_CompanyInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_CustomerInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_CustomerInfo]

CREATE TABLE [ZT_COM_CustomerInfo] (
[CustomerID] [int]  IDENTITY (1, 1)  NOT NULL,
[KeepPerson] [varchar]  (50) NULL,
[Telephone] [varchar]  (200) NULL,
[Mobile] [varchar]  (200) NULL,
[FAX] [varchar]  (200) NULL,
[QQ] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[CompanyName] [varchar]  (500) NULL,
[CompanyAddress] [varchar]  (500) NULL,
[CompanyMailNum] [varchar]  (50) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_CustomerInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_CustomerInfo] PRIMARY KEY  NONCLUSTERED ( [CustomerID] )
SET IDENTITY_INSERT [ZT_COM_CustomerInfo] ON


SET IDENTITY_INSERT [ZT_COM_CustomerInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_LinkURL]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_LinkURL]

CREATE TABLE [ZT_COM_LinkURL] (
[LinkID] [int]  IDENTITY (1, 1)  NOT NULL,
[Title] [text]  NULL,
[LinkUrl] [text]  NULL,
[ImgUrl] [text]  NULL,
[LinkOrder] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_LinkURL] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_LinkURL] PRIMARY KEY  NONCLUSTERED ( [LinkID] )
SET IDENTITY_INSERT [ZT_COM_LinkURL] ON


SET IDENTITY_INSERT [ZT_COM_LinkURL] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_LiuYan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_LiuYan]

CREATE TABLE [ZT_COM_LiuYan] (
[LiuYanID] [int]  IDENTITY (1, 1)  NOT NULL,
[MainInfo] [text]  NULL,
[Body] [text]  NULL,
[Name] [varchar]  (500) NULL,
[Sex] [varchar]  (2) NULL,
[Telephone] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[Fax] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[CompanyName] [varchar]  (500) NULL,
[Address] [varchar]  (500) NULL,
[MailNum] [varchar]  (20) NULL,
[IsIndex] [varchar]  (2) NULL,
[Reply] [text]  NULL,
[ReplyTime] [datetime]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_LiuYan] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_LiuYan] PRIMARY KEY  NONCLUSTERED ( [LiuYanID] )
SET IDENTITY_INSERT [ZT_COM_LiuYan] ON

INSERT [ZT_COM_LiuYan] ([LiuYanID],[MainInfo],[Name],[Sex],[Mobile],[CompanyName]) VALUES ( 1,'fadsf','asd','1','13716319909','sdfsdf')

SET IDENTITY_INSERT [ZT_COM_LiuYan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_MemberInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_MemberInfo]

CREATE TABLE [ZT_COM_MemberInfo] (
[MemberID] [int]  IDENTITY (1, 1)  NOT NULL,
[MemberNo] [varchar]  (50) NULL,
[MemberName] [varchar]  (50) NULL,
[MemberRole] [varchar]  (50) NULL,
[Sex] [varchar]  (2) NULL,
[Birthday] [datetime]  NULL,
[IDCardNum] [varchar]  (50) NULL,
[Telephone] [varchar]  (50) NULL,
[Fax] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[School] [varchar]  (500) NULL,
[HomeAddress] [varchar]  (500) NULL,
[HomeMailNum] [varchar]  (50) NULL,
[NowAddress] [varchar]  (500) NULL,
[NowMailNum] [varchar]  (50) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [varchar]  (7000) NULL)

ALTER TABLE [ZT_COM_MemberInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_MemberInfo] PRIMARY KEY  NONCLUSTERED ( [MemberID] )
SET IDENTITY_INSERT [ZT_COM_MemberInfo] ON


SET IDENTITY_INSERT [ZT_COM_MemberInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_News]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_News]

CREATE TABLE [ZT_COM_News] (
[NewsID] [int]  IDENTITY (1, 1)  NOT NULL,
[Title] [text]  NULL,
[ImgUrl] [text]  NULL,
[Body] [text]  NULL,
[NewsTypeNo] [varchar]  (50) NULL,
[NewsTypeName] [varchar]  (50) NULL,
[NewsOrder] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_News] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_News] PRIMARY KEY  NONCLUSTERED ( [NewsID] )
SET IDENTITY_INSERT [ZT_COM_News] ON

INSERT [ZT_COM_News] ([NewsID],[Title],[ImgUrl],[Body],[NewsTypeNo],[NewsTypeName],[NewsOrder],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 19,'ף�ػ��ؿ�ɽ��е�豸���޹�˾��վ��ͨ','onlinenone.jpg','&nbsp;&nbsp;&nbsp;&nbsp; ����ף�ػ����п�ɽ�豸���޹�˾��վ��ͨ����������Ͽͻ��������������������ǽ�Ŭ����߶����ķ���','XWDT','���Ŷ�̬',1,'admin','2010-8-24 9:53:14','admin','2010-8-24 10:38:28')
INSERT [ZT_COM_News] ([NewsID],[Title],[ImgUrl],[Body],[NewsTypeNo],[NewsTypeName],[NewsOrder],[CreateBy],[CreateDate]) VALUES ( 20,'���ǵĻ�������ʡ��','onlinenone.jpg','&nbsp;&nbsp; ������ߣ��´���ʼ����̨Kaitain����ϵ��75KW�ݸ˻����͵����㽭�ٺ����û����С�����ͬ���͵�ĳ����Ʒ���ݸ˻�PK�У�Kaitainϵ�еĽ���Ч�����û����۽磬���û��ֳ����ԣ�����Ʒ�Ƶ�75KW�ݸ˻���Kaitain 75KW�ݸ˻�����ͬ�����������ÿ�����ٲ���4�����������������Ҫ���ͬ���Ĳ���������ÿСʱҪ��Ķ�ʮ���ȵ硣�����ǵĻ���̫�����ˣ����û���̾�����û����ö�̨Kaitainϵ��75KW�ݸ˻����һ̨75KW��һ̨110KW�ľ���Ʒ���ݸ˻���ʹ�ò��ã��û����֣���̨Kaitainϵ��75KW�ݸ˻��ȱ������һ̨75KW��һ̨110KW�ݸ˻���������Ҫ�󡣽�һ�����㣬ʹ��Kaitainϵ��75KW�ݸ˻�����ͬ��������ÿСʱ���ٿ��Խ�ʡ8�ȵ磬�����û�ʵ��ʹ�û�����ʱ�䣬һ̨Kaitain 75KW�ݸ˻�һ���ʡ��Ѿ��ߴ������Ԫ������������ļ۸�ֻ�Ǹ߳���5000Ԫ��������׬�����������˭�����㡣<BR>&nbsp;&nbsp; �Դ�Kaitain����ϵ�н������ͻ����У���������ǧ�ε��ֳ����ԣ���һϵ�н��ܻ����ڽ�Լ�ܺģ��������ܺ��������涼�õ����û��ĳ�ֿ϶�����Ϊ����������Ҳ�������û���ʹ�óɱ��Ľ���֮����������ϲ�á���л�㽭��ɽѹ�����ɷ����޹�˾���綥�����з��ŶӺͼ�����տ�Ĳ���������','XWDT','���Ŷ�̬',2,'admin','2010-8-24 10:25:51')
INSERT [ZT_COM_News] ([NewsID],[Title],[ImgUrl],[Body],[NewsTypeNo],[NewsTypeName],[NewsOrder],[CreateBy],[CreateDate]) VALUES ( 21,'��������ݸ˿�ѹ�������Ҳ���10%','onlinenone.jpg','&nbsp;&nbsp;&nbsp; ���ݹ����йع涨���ݸ˿���ѹ������Ч�ڽ�������ֵ��������Ч���Ļ����������3%�Ϳ�������10%������˰�Ż����ߣ����û��ɹ���ɽѹ���������ӹ�˾�����Ľ��ܸ߶�ϵ���ݸ˿�ѹ���Ϳ��Խ������ɱ���10%���⵱����ҵ����˰Ӧ��˰�<DIV>&nbsp;&nbsp;&nbsp; ֵ���Ժ����ǣ����գ���ɽѹ������˾�������JN160-8��JN250-8�����ݸ˿�ѹ���Ĺ��ҽ�����֤��������Ϊ�����ݸ˿�ѹ����ҵȡ�ù��ҽ�����֤֤����ࡢ���ǹ��ʷ�Χ��㣨�����׵����18.5ǧ�ߵ�250ǧ�߹�13�����ʵ�������ҵ������������Щ��Ʒ����Чֵ���ڽ�������ֵ��������Ч���Ļ������������3%���ϡ���ȫ�������ܹ��ҵ��Ż����ߡ�</DIV><DIV>&nbsp;&nbsp;&nbsp; ��Լ�ĵ�ѹ��û�������֧���Ĺ����ɱ����Ҳ������û������ٵ�̼�ŷ��츣��ȫ���ࡣ�����ĺ�����ҵ�������̡����е��û���Ӧ��Ŭ��ȥ����</DIV>','XWDT','���Ŷ�̬',3,'admin','2010-8-24 10:33:00')

SET IDENTITY_INSERT [ZT_COM_News] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_NewsType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_NewsType]

CREATE TABLE [ZT_COM_NewsType] (
[NewsTypeID] [int]  IDENTITY (1, 1)  NOT NULL,
[NewsTypeNo] [varchar]  (50) NULL,
[NewsTypeName] [varchar]  (50) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_NewsType] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_NewsType] PRIMARY KEY  NONCLUSTERED ( [NewsTypeID] )
SET IDENTITY_INSERT [ZT_COM_NewsType] ON

INSERT [ZT_COM_NewsType] ([NewsTypeID],[NewsTypeNo],[NewsTypeName],[CreateBy],[CreateDate]) VALUES ( 2,'XWDT','���Ŷ�̬','admin','2010-6-7 10:28:12')

SET IDENTITY_INSERT [ZT_COM_NewsType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_Product]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_Product]

CREATE TABLE [ZT_COM_Product] (
[ProductID] [int]  IDENTITY (1, 1)  NOT NULL,
[ProductName] [varchar]  (500) NULL,
[ProductOrder] [int]  NULL,
[ProductImgUrl] [varchar]  (100) NULL,
[ProductInfo] [text]  NULL,
[TypeName] [varchar]  (500) NULL,
[TypeNo] [varchar]  (50) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_Product] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_Product] PRIMARY KEY  NONCLUSTERED ( [ProductID] )
SET IDENTITY_INSERT [ZT_COM_Product] ON

INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 21,'��ɽ���ʽ�ݸ˻�',1,'2010824151510.png','<P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">ѹ������һ����������ѹ���ĵĻ�е��ѹ���������ṹ��ʽ���ݸ�ѹ�����ǵ��������еĽṹ��ʽ���봫ͳ�Ļ���ѹ������ȣ��ݸ�ѹ������ͻ�����ŵ��ǿɿ��Ըߣ��������񶯣�����������������������</P><P style="LINE-HEIGHT: 1"><STRONG><FONT style="FONT-SIZE: 15px">��ɽ�ݸ˻��ص�:</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">���õ����гɱ�:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ϵͳ����0-100%���������޼����ڡ�����������Сʱ�����������ż�С������ĵ���Ҳͬʱ���ͣ���������ʱ����ѹ���ճ���ת���ճ������Զ�ͣ����������������ʱ���ָ��س� ������Ч�����š� </P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">���õĻ�����Ӧ��:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��������ȴϵͳ��ƣ��ر����������޸��¡���ʪ�����������ĸ������ͽ����ʩ��ʹ��ɽ���ݸ˿�ѹ���İ�װ����ר�õĻ�����ֻҪ������С��ͨ���ά���ռ䣬���ܰ��ú�����ѹ������</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <FONT style="FONT-SIZE: 13px"><STRONG>��Ч�ɿ���ԭװ��������:</STRONG></FONT> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����SKK����˫�ݸ˿���ѹ������ͷ��</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKKϵ���ݸ�ת�����ߵ�����ص㣺</FONT></STRONG></P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;����Դ��Ӣ������������һ��SKKϵ���ݸ�ת��ר�����ߣ���ṹΪ˫�߷ǶԳƵ���ת�ӡ���ת�ӣ��������������ȫ��ΪԲ����������ߣ������ȵ�ȷ����ֿ����˲�ͬ���ʶεĲ�ͬҪ��С���ʣ���45KW������Ϊ4��5�����ʣ���55KW��Ϊ5��6����ר��ת������������ת����ȣ�������ͻ�����ŵ㣺<BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>һ��</STRONG> ��ȫʵ�֡���������桱���ϣ��Ӷ��������γ����嶯����Ĥ������ͨ���Ӵ����ĺ���й©�����ѹ����Ч�ʣ��Լ�����ת�ӵļӹ����������ܡ�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>����</STRONG> ���á���ת�ӡ�����С���ת�١������˼·��ת�ٱ�����Ʒ�Ƶ�30��50%�����Խ����������񶯣����������¶ȣ����ת�Ӹ��ԣ��ӳ�ʹ����������С�����ʺ���̼���������ԡ�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>����</STRONG> ���ʷ�Χ4~355KW������18.5~250KW��Ϊ����������ֱ����200KW��250KW��Ϊ4�����ֱ����ת�ٵ���1480ת/�֡�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>�ġ�</STRONG> ȫ�����������ԽGB19153��2003���ݻ�ʽ����ѹ������Ч�޶�ֵ�����ұ�׼��Ҫ��</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK�ݸ�����������ص㣺</FONT></STRONG></P><STRONG><FONT style="FONT-SIZE: 15px"><P style="LINE-HEIGHT: 1"><BR></FONT></STRONG>&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;һ��</STRONG>&nbsp; SKK�ݸ�����������Ʋ��ô�ת�ӡ�����С���ת�ٵ�˼·�����ʵ���Ҫ���;����ò���������ֱ�����ڵ�ת�ٵ�ͬʱ�������˹���Դ������������������״����</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>����</STRONG>&nbsp;&nbsp;��������ʽ���ǣ����������ѹ��ǻһ��ӹ���ȷ��ͬ��ȡ�ƽ�жȺʹ�ֱ�ȵ���λ����̶�ȷ���˸��˶����ĺ����϶��</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> ����</STRONG>&nbsp;&nbsp;ת�ӵ��������;������ɲ�ͬ����г��ܣ����������綥����SKF������С�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> �ġ�</STRONG>&nbsp; ���������رա�������ʱ�������Ϳڡ����Ϳ�λ�õȾ��������о��ɹ���ƣ���ѹ�Ⱥ��������Ƚ�����֡�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>�塢</STRONG>&nbsp;&nbsp;���������ͣ���������Ƶ�ʵ�����������30��50%����С�������Ĥ�Ĵ̼���</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> ����</STRONG> �����ѭ���������г�ϴ����ȴ���󻬣���Ч������еĹ������������������Ĺ����¶ȡ�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>�ߡ�</STRONG>&nbsp;�����ṹ�򵥺�������ɿ��������ʵͣ�����װ���ά���������Ҽ�ʵ���ҵļ��飬��Ҫ����ָ����ȹ��ʡ��������񶯡��ɿ��Ե��Ѿ�����һ��ˮ׼��<BR><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK�ݸ������ļӹ�����ֶΣ�</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp; ���ӹ��ͼ��ȫ�����ý��ڵĹ���һ���ļӹ�����豸����Ӣ������Բ������ĥ�����ݸ˳���ĥ�����ձ��ļӹ����ġ��¹���ת��ƽ�������������������������ȵȣ�ȷ����Ʒ������ʵ�����Ҫ�� </P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">��Խ�ĵ���Ʋ���ϵͳ:</FONT></STRONG>&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; ����������ܻ���΢���Կ���ϵͳ���߱�ǿ��Ĺ�����Ϻͱ������ܣ���������ֵ�ص������24СʱΪ������������鷢�����ϣ�ϵͳ����ݲ�ͬ���������Ӧ�ķ�Ӧ����ʱ��ʾ����������������Ҫ��ά���������ر�򵥣�һ���������Զ�����״̬��</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">��ɽÿһ���ݸ˻���֧�ֱ�Ƶ:</FONT></STRONG> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; ���Ը����û�Ҫ��ͨ��Ƶ���ܣ���ɽ��Ƶ�ݸ�ѹ����������Χ�����ʴ�5.5kw��280kw��������0.6m3/min��45m3/min,����ѹ����0.5Mpa��1.3Mpa���з��䡢ˮ�䣬Ƥ��������ֱ�������������á�</P><P style="LINE-HEIGHT: 1"><BR><STRONG>��ɽ��Ƶ�ݸ˻��ص�:</STRONG></P><P style="LINE-HEIGHT: 1"><STRONG><BR></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;���ù�������Ʒ�Ʊ�Ƶģ�飬���þ��ر�ǿ�����������Ե�ר�õ��������һ���ر��ʺ��ݸ�ѹ������PID�����������������������̨ѹ�������ˣ��������ü�㣬�˻��������ơ�Ϊ��Ӧʪ�ȴ����򣬶Ա�Ƶ������ȴ������������ơ�Ϊ֧���û������趨��ѹ���ѹ����������������������о�Ĺ��������<BR></P><P style="LINE-HEIGHT: 1" align=left>&nbsp;</P><P style="LINE-HEIGHT: 1"></P>','��ɽ��ѹ��','1','admin','2010-8-24 15:15:10','admin','2010-8-24 17:40:56')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 22,'ˮ��̶�ʽ�ݸ˻�',2,'2010824173657.png','<P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp; ѹ������һ����������ѹ���ĵĻ�е��ѹ���������ṹ��ʽ���ݸ�ѹ�����ǵ��������еĽṹ��ʽ���봫ͳ�Ļ���ѹ������ȣ��ݸ�ѹ������ͻ�����ŵ��ǿɿ��Ըߣ��������񶯣�����������������������</P><P style="LINE-HEIGHT: 1"><STRONG><FONT style="FONT-SIZE: 15px">��ɽ�ݸ˻��ص�:</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">���õ����гɱ�:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ϵͳ����0-100%���������޼����ڡ�����������Сʱ�����������ż�С������ĵ���Ҳͬʱ���ͣ���������ʱ����ѹ���ճ���ת���ճ������Զ�ͣ����������������ʱ���ָ��س� ������Ч�����š� </P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">���õĻ�����Ӧ��:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��������ȴϵͳ��ƣ��ر����������޸��¡���ʪ�����������ĸ������ͽ����ʩ��ʹ��ɽ���ݸ˿�ѹ���İ�װ����ר�õĻ�����ֻҪ������С��ͨ���ά���ռ䣬���ܰ��ú�����ѹ������</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <FONT style="FONT-SIZE: 13px"><STRONG>��Ч�ɿ���ԭװ��������:</STRONG></FONT> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����SKK����˫�ݸ˿���ѹ������ͷ��</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKKϵ���ݸ�ת�����ߵ�����ص㣺</FONT></STRONG></P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;����Դ��Ӣ������������һ��SKKϵ���ݸ�ת��ר�����ߣ���ṹΪ˫�߷ǶԳƵ���ת�ӡ���ת�ӣ��������������ȫ��ΪԲ����������ߣ������ȵ�ȷ����ֿ����˲�ͬ���ʶεĲ�ͬҪ��С���ʣ���45KW������Ϊ4��5�����ʣ���55KW��Ϊ5��6����ר��ת������������ת����ȣ�������ͻ�����ŵ㣺<BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>һ��</STRONG> ��ȫʵ�֡���������桱���ϣ��Ӷ��������γ����嶯����Ĥ������ͨ���Ӵ����ĺ���й©�����ѹ����Ч�ʣ��Լ�����ת�ӵļӹ����������ܡ�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>����</STRONG> ���á���ת�ӡ�����С���ת�١������˼·��ת�ٱ�����Ʒ�Ƶ�30��50%�����Խ����������񶯣����������¶ȣ����ת�Ӹ��ԣ��ӳ�ʹ����������С�����ʺ���̼���������ԡ�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>����</STRONG> ���ʷ�Χ4~355KW������18.5~250KW��Ϊ����������ֱ����200KW��250KW��Ϊ4�����ֱ����ת�ٵ���1480ת/�֡�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>�ġ�</STRONG> ȫ�����������ԽGB19153��2003���ݻ�ʽ����ѹ������Ч�޶�ֵ�����ұ�׼��Ҫ��</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK�ݸ�����������ص㣺</FONT></STRONG></P><STRONG><FONT style="FONT-SIZE: 15px"><P style="LINE-HEIGHT: 1"><BR></FONT></STRONG>&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;һ��</STRONG>&nbsp; SKK�ݸ�����������Ʋ��ô�ת�ӡ�����С���ת�ٵ�˼·�����ʵ���Ҫ���;����ò���������ֱ�����ڵ�ת�ٵ�ͬʱ�������˹���Դ������������������״����</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>����</STRONG>&nbsp;&nbsp;��������ʽ���ǣ����������ѹ��ǻһ��ӹ���ȷ��ͬ��ȡ�ƽ�жȺʹ�ֱ�ȵ���λ����̶�ȷ���˸��˶����ĺ����϶��</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> ����</STRONG>&nbsp;&nbsp;ת�ӵ��������;������ɲ�ͬ����г��ܣ����������綥����SKF������С�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> �ġ�</STRONG>&nbsp; ���������رա�������ʱ�������Ϳڡ����Ϳ�λ�õȾ��������о��ɹ���ƣ���ѹ�Ⱥ��������Ƚ�����֡�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>�塢</STRONG>&nbsp;&nbsp;���������ͣ���������Ƶ�ʵ�����������30��50%����С�������Ĥ�Ĵ̼���</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> ����</STRONG> �����ѭ���������г�ϴ����ȴ���󻬣���Ч������еĹ������������������Ĺ����¶ȡ�</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>�ߡ�</STRONG>&nbsp;�����ṹ�򵥺�������ɿ��������ʵͣ�����װ���ά���������Ҽ�ʵ���ҵļ��飬��Ҫ����ָ����ȹ��ʡ��������񶯡��ɿ��Ե��Ѿ�����һ��ˮ׼��<BR><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK�ݸ������ļӹ�����ֶΣ�</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp; ���ӹ��ͼ��ȫ�����ý��ڵĹ���һ���ļӹ�����豸����Ӣ������Բ������ĥ�����ݸ˳���ĥ�����ձ��ļӹ����ġ��¹���ת��ƽ�������������������������ȵȣ�ȷ����Ʒ������ʵ�����Ҫ�� </P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">��Խ�ĵ���Ʋ���ϵͳ:</FONT></STRONG>&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; ����������ܻ���΢���Կ���ϵͳ���߱�ǿ��Ĺ�����Ϻͱ������ܣ���������ֵ�ص������24СʱΪ������������鷢�����ϣ�ϵͳ����ݲ�ͬ���������Ӧ�ķ�Ӧ����ʱ��ʾ����������������Ҫ��ά���������ر�򵥣�һ���������Զ�����״̬��</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">��ɽÿһ���ݸ˻���֧�ֱ�Ƶ:</FONT></STRONG> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; ���Ը����û�Ҫ��ͨ��Ƶ���ܣ���ɽ��Ƶ�ݸ�ѹ����������Χ�����ʴ�5.5kw��280kw��������0.6m3/min��45m3/min,����ѹ����0.5Mpa��1.3Mpa���з��䡢ˮ�䣬Ƥ��������ֱ�������������á�</P><P style="LINE-HEIGHT: 1"><BR><STRONG>��ɽ��Ƶ�ݸ˻��ص�:</STRONG></P><P style="LINE-HEIGHT: 1"><STRONG><BR></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;���ù�������Ʒ�Ʊ�Ƶģ�飬���þ��ر�ǿ�����������Ե�ר�õ��������һ���ر��ʺ��ݸ�ѹ������PID�����������������������̨ѹ�������ˣ��������ü�㣬�˻��������ơ�Ϊ��Ӧʪ�ȴ����򣬶Ա�Ƶ������ȴ������������ơ�Ϊ֧���û������趨��ѹ���ѹ����������������������о�Ĺ��������<BR></P><A href="http://www.kaishan-sh.com/viewproduct.asp?ID=46&amp;PTID=1&amp;PTID2=30&amp;PTID3="><FONT color=#810081></FONT></A>','��ɽ��ѹ��','1','admin','2010-8-24 17:36:57','admin','2010-8-24 17:41:11')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 23,'��ɽ�����ƶ�ʽ�ݸ˻�',3,'2010824173958.png','<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P><P>&nbsp;&nbsp;&nbsp; �ƶ�ʽ�ݸ˿���ѹ�����㷺Ӧ���ڿ�ɽ��ˮ������ͨ���촬���ǽ�����Դ����������ҵ����ŷ���ȷ�����ң��������ƶ�ʽ����ѹ����������˵100%���ݸ˿�ѹ�������ҹ����ƶ�ʽ�ݸ˿�ѹ�����Ծ��˵��ٶ������������Ŀ�ѹ����<BR>������Ϊ�ݸ�ʽѹ�����߱�������Ҫ�ŵ㣺<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1���ɿ��Ըߣ�ѹ�����㲿���٣�û����������������ת�ɿ�,������,���޼���ڿɴ�4~8��Сʱ��<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2������ά�����㣺�Զ����̶ȸߣ�������Ա���ؾ�����ʱ���רҵ��ѵ����ʵ������ֵ����ת��<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3������ƽ���Ժã�û�в�ƽ�����������ƽ�ȵظ�����ת,��ʵ���޻�����ת���ر��ʺ������ƶ�ʽѹ���������С�������ᡢռ������٣�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4����Ӧ��ǿ������ǿ���������ص㣬�ݻ�����������������ѹ����Ӱ�죬�ڿ���ת�ٷ�Χ���ܱ��ָ�Ч�ʡ�<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ɽ������Ŀǰ����Ψһ�����������Ѿ��ڴ����������綯�ƶ�ʽ�Ͳ����ƶ�ʽȫϵ���ݸ˿�ѹ������ҵ���ڱ���������Ʒ��¢�ϵ��ƶ��ݸ˿�ѹ���г�����ɽ�Ƴ�Ϊһ�������ķ羰�ߡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ɽ�Ƶ綯�ƶ�ʽ�ݸ˿�ѹ�������ʷ�Χ11~250kW����������Χ������40m3/min����15�������͡�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ɽ�Ʋ����ƶ�ʽ�ݸ˿�ѹ�������ʷ�Χ37~300kW����������Χ������26m3/min������ѹ�������2.2MPa����6�������͡�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ÿһ������Ϳɸ����û���Ҫ��Ϊ��ͬ����������ͬ����ѹ����һ��ϵ�в�Ʒ��<BR>��ɽ�Ʋ����ƶ�ʽ�ݸ˿�ѹ�����ص㡣<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1�����������ô�ֱ���ݸ�ת�ӣ���������ͻ�ͨ���ߵ���������ֱ�����м�û�����ٳ��֣��ɿ��Ը��ã�����ת������ͻ�һ�£�������2400r/min��������������<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2�����ͻ���ѡ�ö��翵��˹�����ȹ������Ʋ��ͻ�������ŷ���ŷ�Ҫ���ͺĵͣ��и���ȫ�����ۺ������ϵ���û��ɵõ�Ѹ�١����Ƶķ���<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3����Ӧ�Ժã��ɸ����������Ĵ�С���Զ����ڲ��ͻ����ţ��������������˷�һ�β��͡����൱�ڵ綯�ݸ˻��ı�Ƶ���ơ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4�����в���һĿ��Ȼ�������ж�����ʾ���𱨾���ͣ���������ܡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û��ԡ���ɽ�ơ������ƶ�ʽ�ݸ˻���һ�������ǣ������ɱ��ͣ�ά��Ҫ��ͣ�ά�޷��õͣ���������Ҳ��ͬ����ڻ�Ҫ�͡�</P>','��ɽ��ѹ��','1','admin','2010-8-24 17:39:58','admin','2010-8-24 17:41:26')

INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 36,'�Ĵ�ʽ¶��Ǳ���공',16,'2010824181917.png','<P>&nbsp;</P><P>&nbsp;&nbsp; ��<STRONG>��ɽ</STRONG>�ơ��Ĵ�ʽ<STRONG>¶��Ǳ���공</STRONG>�����������綯����ȼ��Ϊ��������������ѹ����Ϊ�ߡ��С��ͷ�ѹ��ϵ�в�Ʒ���������������󣬶�����᫲�ƽ��·����Ӧ��ǿ��������ҵ�ȶ��Ժõ��ص㡣<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��<STRONG>��ɽ</STRONG>�ơ��Ĵ�ʽ¶��<STRONG>Ǳ���공</STRONG>�������ø����ͺŵ�Ǳ�׳�������ܹ����䲻ͬ�׾�����ͬ��ȡ����ַ�λ�����ֽǶȵı��ƿס����ѿס�ê��ê�˿ס��ཬ�ס�����׵ȣ���Ӧ��Χ������Ч�ʸߡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��<STRONG>��ɽ</STRONG>�ơ�<STRONG>�Ĵ�ʽ</STRONG>¶��<STRONG>Ǳ���공</STRONG>���������ø�ʽ��ʪʽ����������������ҵ����Ч�ؽ��ͷ۳��Ի�������Ⱦ��������ҵ��Ա�����彡����<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KCϵ��<STRONG>¶��Ǳ���공</STRONG>�Ե�һ��ѹ������Ϊ��������Ǳ�׳�������׺�,������ˮƽ����ֱ����б�ȶ෽λ���ƿ�,Ԥ�ѿ׺�ê��(��)�ס�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KYϵ��<STRONG>¶��Ǳ���공</STRONG>�Բ�(�綯)Ϊ������ͨ��Һѹ����ʵ�����ߡ���ת���ƽ����������ͽǶȵ����ȶ�����<BR><BR><STRONG>�ص�</STRONG> </P><UL type=square><LI>��ȫ�ȶ������߻���<BR><LI>���п��ƵĲ��ݻ���<BR><LI>ά�޷����Һѹ����<BR><LI>��ȫ�ɿ��Ľ��ܽṹ<BR><LI>ǿ���������ƽ�����ת����<BR><LI>������۲���<BR><LI>�Ƚ��ļ���װ�� </LI></UL>','��ɽ���һ�е�豸','2','admin','2010-8-24 18:19:17','admin','2010-8-24 18:19:44')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 37,'Ǳ�����',17,'2010824182103.png','<P>&nbsp;</P><P>׷�󡰰�ȫ��Ч������Ϸ�����ᡣ����ɽ�ơ�Ǳ�����ϵ�в�Ʒ�����й���ɽ�ص㴴����ƣ��ṹ��ӱ����Ч���ܡ��㷺��������С�Ϳ�ɽ��������ˮ������·��ʯ�������е��ڿ�������ҵ����ʵ�ֲַ㿪�ɺ�����ױ��Ƶ����빤�ߡ�<BR><BR><STRONG>�����״�����Һ�������</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;��Һѹ��Ƽ��������Ե�Ӧ��������Ǳ������У���Ч���ܣ������״���<BR>&nbsp;&nbsp;&nbsp;&nbsp;Һѹ�����������תŤ�ش󣬲��׿�ǥ��<BR>&nbsp;&nbsp;&nbsp;&nbsp;�����͸��ƽ���������ǿ������������������<BR>&nbsp;&nbsp;&nbsp;&nbsp;���ص��������������ȷ����׽Ƕ�׼ȷ��һ�¡�<BR>&nbsp;&nbsp;&nbsp;&nbsp;���µ�����װ�ã�ʹ��������ȶ����ɿ�������λ��<BR><BR><STRONG>��Ч���ܵĵ綯���</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;����ͨ���Ϊ��ת���������á���Ч�����ܡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;���ð������ּ���������תŤ�ش�����Ч�ʸߡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;��ӱ�Ĺ��ر�����ʹ��������ȶ��ɿ���<BR>&nbsp;&nbsp;&nbsp;&nbsp;�е����⡢˫���⡢֧��ʽ����֧�нṹ�ɹ�ѡ������Ӧ�κε��ʵ�ò��<BR><BR><STRONG>����Ӧ�Ե�ȫ�綯���</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;�ƽ�����ת�ͳ��ȫ����ѹ������Ϊ�������ṹ��ࡢ������һ����Ǩ������<BR>&nbsp;&nbsp;&nbsp;&nbsp;�ڵ����⡢˫���⡢֧��ʽ����֧�нṹ�ɹ�ѡ������Ӧ�κε��ʵ�ò��<BR>&nbsp;&nbsp;&nbsp;&nbsp;���ݻ������У����������ݡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;���ص�˫������������Ч���ã������˻�����Ⱦ�� </P>','��ɽ���һ�е�豸','2','admin','2010-8-24 18:21:03','admin','2010-8-24 18:34:06')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 38,'�ֳ�ʽ���һ�',18,'2010824182305.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp;&nbsp;��������͵Ĵ��¾�����ƶ������׷���ڡ���ɽ�ơ����һ��ϵõ��������֡�������Ʒ�ʡ�׿Խ�����ܣ�ʹ����ɽ�ơ��������һ��㷺������ú̿��ұ����·����ͨ��ˮ���������͹��������и�����ʯ��ˮƽ����б�������ڿ׵�������ҵ��<BR><BR></P><UL square??><LI><STRONG>��ѧ��ƣ����Ĳ��֡�</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;�����ִ�����ֶΣ���ÿһ����Ʒ���������Ż��������в������������幤ѧԭ����в��ã���֤�˲�Ʒ�ĸ����ܡ���Ч�ʺͲ����ķ����ԡ���ȫ�ԡ� <LI><STRONG>ǧ�������������󾫡�</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;���ʵĲ��ϺͿ�ѧ�Ķ��죬���������š��ʡ����ں�����֤�˲�Ʒ�ĸ�ǿ�ȡ�����ĥ�Ժ��ͳ���ԡ� <LI><STRONG>����ϸ�̣���ʯ�ɽ�</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;���ػ����ӹ���Unicase�Զ����ȴ������衰�ʡ��ı�֤�͡�Ӳ��Ӳ�������š� <LI><STRONG>��ѧ���飬���;�Ʒ��</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;��΢�����Ƶ����һ�������������̨��������ÿһ̨��Ʒ�Ķ�̬���ԣ���������Ϊʧ��ķ�������֤�˳�����Ʒ��Ӳ��������׿Խ�����ܡ� </LI></UL>','��ɽ���һ�е�豸','2','admin','2010-8-24 18:23:05','admin','2010-8-24 18:34:14')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 39,'����ʽ���һ�',19,'2010824182421.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; ��������͵Ĵ��¾�����ƶ������׷���ڡ���ɽ�ơ����һ��ϵõ��������֡�������Ʒ�ʡ�׿Խ�����ܣ�ʹ����ɽ�ơ��������һ��㷺������ú̿��ұ����·����ͨ��ˮ���������͹��������и�����ʯ��ˮƽ����б�������ڿ׵�������ҵ��<BR><BR></P><UL square??><LI><STRONG>��ѧ��ƣ����Ĳ��֡�</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;�����ִ�����ֶΣ���ÿһ����Ʒ���������Ż��������в������������幤ѧԭ����в��ã���֤�˲�Ʒ�ĸ����ܡ���Ч�ʺͲ����ķ����ԡ���ȫ�ԡ� <LI><STRONG>ǧ�������������󾫡�</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;���ʵĲ��ϺͿ�ѧ�Ķ��죬���������š��ʡ����ں�����֤�˲�Ʒ�ĸ�ǿ�ȡ�����ĥ�Ժ��ͳ���ԡ� <LI><STRONG>����ϸ�̣���ʯ�ɽ�</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;���ػ����ӹ���Unicase�Զ����ȴ������衰�ʡ��ı�֤�͡�Ӳ��Ӳ�������š� <LI><STRONG>��ѧ���飬���;�Ʒ��</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;��΢�����Ƶ����һ�������������̨��������ÿһ̨��Ʒ�Ķ�̬���ԣ���������Ϊʧ��ķ�������֤�˳�����Ʒ��Ӳ��������׿Խ�����ܡ� </LI></UL>','��ɽ���һ�е�豸','2','admin','2010-8-24 18:24:21','admin','2010-8-24 18:34:24')

INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 41,'ê�����',21,'2010824183539.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; ���Ǵ���Ĳ����Ǹ������Ĳ�Ʒ������սʤ��Ȼ��׷��ȫ�Ҹ��������������ɽ����ê�˻�ϵ�в�Ʒ��רΪê�̹��̶��������Ƶģ���Ҫ�����ڵ����ֺ������еĻ��¡�Σ����Ϳ��ƽ�����λ�Ƶȸ߱�������ê�̿׵����䣬�������ڳ�������ӵȵػ�ê�̿��Լ����̱��ƿס���ˮ�׵ȵ����䡣<BR><BR></P><UL type=square><LI>�����ᣬ���巽�㣬��װ�Ͱ�Ǩ��Ϊ������<BR><BR><LI>����Ƕȵ��ڷ��㣬��λ׼ȷ�ɿ���<BR><BR><LI>ȫҺѹ���ƣ����������㡢��ݡ�<BR><BR><LI>��תŤ�ش󣬳������ǿ�����Ч�ʸߡ�<BR><BR><LI>������ǿ����Ϊ������꾮�ṩ������<BR><BR><LI>����ר�ø�����ߣ����ڲ��ȶ��ز�ȶ��ӵ���������ʹ�ã��ɿ������á�</LI></UL>','��ɽ���һ�е�豸','2','admin','2010-8-24 18:35:39')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 42,'���̻�',22,'2010824183654.png','<P>&nbsp;</P><P><STRONG>��;��</STRONG> </P><UL type=circle><LI>��¯�촬ұ��ҵ��������ҵ���ֽ��������Ĳ��У������Ǹ��ֲ��������С������Ĳ��й�����<BR><BR><LI>�д�����������ɰ��������ð�ڡ�<BR><BR><LI>��������ͽ�ͨ���̵��������к��졣<BR><BR><LI>����שǽ������ǽ�Ŀ��ڹ����� </LI></UL>','������������','3','admin','2010-8-24 18:36:54','admin','2010-8-24 18:38:36')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 43,'����',23,'2010824183759.png','<P>&nbsp;</P><P><STRONG>��;��</STRONG> </P><UL type=circle><LI>��¯�촬ұ��ҵ��������ҵ���ֽ��������Ĳ��У������Ǹ��ֲ��������С������Ĳ��й�����<BR><BR><LI>�д�����������ɰ��������ð�ڡ�<BR><BR><LI>��������ͽ�ͨ���̵��������к��졣<BR><BR><LI>����שǽ������ǽ�Ŀ��ڹ����� </LI></UL>','������������','3','admin','2010-8-24 18:37:59','admin','2010-8-24 18:38:46')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 44,'��ɰ�ֻ�',24,'2010824184212.png','<P>&nbsp;</P><P><STRONG>��;��</STRONG> </P><UL type=circle><LI>���ú���ǰ�¿ڼ����Ӻ��ڹ�������������ĥ��<BR><BR><LI>�������塢С�͸ֵ��ʸ<BR><BR><LI>����������ĥ�����⡢�׹⡣ </LI></UL>','������������','3','admin','2010-8-24 18:42:12','admin','2010-8-24 18:42:29')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 24,'�綯�ƶ�ʽ�ݸ˻�',4,'2010824174515.png','<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P><P>&nbsp;&nbsp;&nbsp;&nbsp;�ƶ�ʽ<STRONG>�ݸ˿���ѹ����</STRONG>�㷺Ӧ���ڿ�ɽ��ˮ������ͨ���촬���ǽ�����Դ����������ҵ����ŷ���ȷ�����ң��������ƶ�ʽ����ѹ����������˵100%���ݸ˿�ѹ�������ҹ����ƶ�ʽ�ݸ˿�ѹ�����Ծ��˵��ٶ������������Ŀ�ѹ����<BR>������Ϊ<STRONG>�ݸ�ʽѹ����</STRONG>�߱�������Ҫ<STRONG>�ŵ�</STRONG>��<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1���ɿ��Ըߣ�ѹ�����㲿���٣�û����������������ת�ɿ�,������,���޼���ڿɴ�4~8��Сʱ��<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2������ά�����㣺�Զ����̶ȸߣ�������Ա���ؾ�����ʱ���רҵ��ѵ����ʵ������ֵ����ת��<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3������ƽ���Ժã�û�в�ƽ�����������ƽ�ȵظ�����ת,��ʵ���޻�����ת���ر��ʺ������ƶ�ʽѹ���������С�������ᡢռ������٣�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4����Ӧ��ǿ������ǿ���������ص㣬�ݻ�����������������ѹ����Ӱ�죬�ڿ���ת�ٷ�Χ���ܱ��ָ�Ч�ʡ�<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>��ɽ����</STRONG>��Ŀǰ����Ψһ�����������Ѿ��ڴ����������綯�ƶ�ʽ�Ͳ����ƶ�ʽȫϵ���ݸ˿�ѹ������ҵ���ڱ���������Ʒ��¢�ϵ��ƶ��ݸ˿�ѹ���г�����ɽ�Ƴ�Ϊһ�������ķ羰�ߡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>��ɽ��</STRONG>�綯�ƶ�ʽ<STRONG>�ݸ˿�ѹ��</STRONG>�����ʷ�Χ11~250kW����������Χ������40m3/min����15�������͡�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>��ɽ��</STRONG>�����ƶ�ʽ<STRONG>�ݸ˿�ѹ��</STRONG>�����ʷ�Χ37~300kW����������Χ������26m3/min������ѹ�������2.2MPa����6�������͡�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ÿһ������Ϳɸ����û���Ҫ��Ϊ��ͬ����������ͬ����ѹ����һ��ϵ�в�Ʒ��<BR><STRONG>��ɽ��</STRONG>�����ƶ�ʽ<STRONG>�ݸ˿�ѹ��</STRONG>��<STRONG>�ص�</STRONG>��<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1�����������ô�ֱ���ݸ�ת�ӣ���������ͻ�ͨ���ߵ���������ֱ�����м�û�����ٳ��֣��ɿ��Ը��ã�����ת������ͻ�һ�£�������2400r/min��������������<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2�����ͻ���ѡ�ö��翵��˹�����ȹ������Ʋ��ͻ�������ŷ���ŷ�Ҫ���ͺĵͣ��и���ȫ�����ۺ������ϵ���û��ɵõ�Ѹ�١����Ƶķ���<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3����Ӧ�Ժã��ɸ����������Ĵ�С���Զ����ڲ��ͻ����ţ��������������˷�һ�β��͡����൱�ڵ綯�ݸ˻��ı�Ƶ���ơ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4�����в���һĿ��Ȼ�������ж�����ʾ���𱨾���ͣ���������ܡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û��ԡ�<STRONG>��ɽ��</STRONG>�������ƶ�ʽ<STRONG>�ݸ˻�</STRONG>��һ�������ǣ������ɱ��ͣ�ά��Ҫ��ͣ�ά�޷��õͣ���������Ҳ��ͬ����ڻ�Ҫ�͡�</P>','��ɽ��ѹ��','1','admin','2010-8-24 17:45:15')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 25,'�綯�����ݸ˻�',5,'2010824174816.png','<STRONG>��;<BR><BR></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;ú���¿�����������������߼��罬�豸�ɵ��湩��ѹ������ʱ����ܵ�����ѹ�����ͣ���Ч�ʺܵ͡���ѹ���������ھ��¾�������渽����ȫ��ת�����������������ǰ�ƶ������ܱ��ֽϸ���ѹ��ʹ������е��Ч�ʱȵ��湩��ʱ���30%��һ�����ĵ��½�30%�����ܽ�Լ�����ܵ�����ѹ����Ҳ�����ڹ������ʩ����;��<BR><BR><STRONG>�ص�</STRONG><BR><BR><UL type=square><LI>&nbsp;&nbsp;&nbsp;&nbsp;����SKK�������ṹ�Ƚ�������������γݼ����С���ʻ�����ʧС�����Ķ�������&nbsp;&nbsp;&nbsp; ���Ч��10-12%��ʡ��25%�������о��ȸߣ���תƽ�ȡ������͡��ɿ��Ըߣ���������ά&nbsp; �����õ͡��ͺĵ͵��ŵ㡣<BR><LI>&nbsp;&nbsp;&nbsp;&nbsp;����ȫ�װµ���HOERBIGER��˾��������ϵͳ���ȶ��ɿ���<BR><LI>&nbsp;&nbsp;&nbsp;&nbsp;0-100���ɵ�����������ʵ��ʹ�������Ķ��٣��Զ������������ġ�<BR><LI>&nbsp;&nbsp;&nbsp;&nbsp;ʹ�ð�ȫ�ɿ������з��������ء���·�����ࡢ©��ȵ������������г��¡����˶��������˶������ͷֶ�������������ͣ���ȵ�����װ�ã��Լ��ݵ�����ѹ������ȫ�����ر�����ֹ��ѹ���С�����������о���ý��ڳ�ϸ������ά��ʹѹ������������������3ppm���¡�</LI></UL>','��ɽ��ѹ��','1','admin','2010-8-24 17:48:16')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 26,'KAϵ�л���ʽ��ѹ��',6,'2010824175040.png','KAϵ�п���ѹ�����㷺Ӧ���������й̡��綯���ߡ���̥���������ƹ��ա����ᡢ��ɰ������Ԫ����������Ҫѹ�������ĳ�����<BR><UL square??><LI>ǿ���ʹ��ͷ��ƣ��úá�������ϣ�����Ҫ�㲿������ǿ����ƣ���ͷ�ߴ硢�����������������ң���ȫԣ�ȸߣ�����ת�ٵͣ��ر��ʺ����ظ��ɡ���ʱ��������ת���ɿ����ر�ߣ������ر𳤡�<BR><LI>�ر����ɢ����ƺ�������ƣ������¶ȵͣ����׻�̼��Ч�ʸߡ�<BR><LI>���û�״����ʽ��ƣ���Ƭ����Ϊ��䲻�ⷧƬ�֣����鵯�ɲ���Ϊ�ձ����ڵ�����ר�õ��ɸ�˿������ת�з�Ƭû�������˶���ʹ���������ܼ�����ָ���ر�á�<BR><LI>�����������ձ����л����������ã������͡�<BR><LI>���ᾭ��Ƶ�δ���ر���ĥ��<BR><LI>�й��˶���������ƽ�⣬��ת�ر�ƽ�ȣ������ر�͡�</LI></UL>�ʺ�24Сʱ������ת','��ɽ��ѹ��','1','admin','2010-8-24 17:50:40')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 27,'KB��ѹϵ�л���ʽ��ѹ��',7,'2010824175223.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; ��ɽ����ѹϵ��������������ѹ�������е��١����ء��ʺ�������ת�������������¶ȵ͡���С�������͡��ͺĵ͡�׷��͹����ʡ��߿ɿ��ԣ������ṹ����ϵͳ��࣬���ƿɿ��������ȶ������γɽ�Ϊ������Ʒ��ϵ�У����д������޵��ƶ�ʽ��Ҳ�в��������޵Ĺ̶�ʽ�����е�������ʽ��Ҳ����Ӧ����������ϻ���Ϊ�˸��õ�Ϊ��ƿ�����ף�����ƿ����˼���ƿ�õ���ѹ������ģ�õĵ�ѹ���������ޡ�����������ɻ���Ϊһ�����ϻ���<BR></P><UL type=circle><LI>ǿ���ʹ��ͷ��ƣ��úá�������ϣ�����Ҫ�㲿������ǿ����ƣ���ͷ�ߴ硢�����������������ң���ȫ�Զȸߣ�����ת�ٵͣ��ر��ʺ����ظ��ɡ���ʱ��������ת���ɿ����ر�ߣ������ر𳤡�<BR><LI>�ر����ɢ����ƺ�������ƣ������¶ȵͣ����׻�̼��Ч�ʸߡ�<BR><LI>���û�״����ʽ��ƣ���Ƭ����Ϊ��䲻�ⷧƬ�֣����鵯�ɲ���Ϊ�ձ����ڵ�����ר�õ��ɸ�˿������ת�з�Ƭû�������˶���ʹ���������ܼ�����ָ���ر�á�<BR><LI>�����������ձ����л����������ã������͡�<BR><LI>���ᾭ��Ƶ����ر���ĥ��<BR><LI>�й��˶���������ƽ�⣬��ת�ر�ƽ�ȣ������ر�͡�<BR><LI>����������о���ý�����ֽ���������˼�����Ч���ã��������á�<BR><LI>ǰ�˸����ر�������ͷ���ṹ����������ð�ͣ��ͺ��ر�ͣ����ֻ�����ࡣ<BR><LI>����ͭ�����ȿ����ڽǶ���ƺ����ñ����ױ������������Ѽ�©����<BR><LI>ѹ�����ء��Ӵ������ȼ̵������ý���Ʒ�ƣ��磺��ʩ�͵¡���ȷ�����Ƽ������ɿ���<BR><LI>�������Ʒ���������ȫ�Զ������ȫ�Զ��͡����ص�������ͣ��ֶ��л��������ܿ����ͣ�������������Զ��ڵ����ؼ��л���������ʽ���û�ѡ�������û��Ĳ�ͬ��Ҫ��<BR><LI>��ѡ��װ���ܿ���������������������ӵ��û���<BR><LI>�����ѹ����Խϸߵ�ѹ���ȣ�ר���������ȴ����ǿ���������������˽ϵ͵������¶ȡ� </LI></UL>','��ɽ��ѹ��','1','admin','2010-8-24 17:52:23')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 28,'��ѹ����ͻ���ʽ��ѹ��',8,'2010824175339.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; ��ɽ����ѹϵ��������������ѹ�������е��١����ء��ʺ�������ת�������������¶ȵ͡���С�������͡��ͺĵ͡�׷��͹����ʡ��߿ɿ��ԣ������ṹ����ϵͳ��࣬���ƿɿ��������ȶ������γɽ�Ϊ������Ʒ��ϵ�У����д������޵��ƶ�ʽ��Ҳ�в��������޵Ĺ̶�ʽ�����е�������ʽ��Ҳ����Ӧ����������ϻ���Ϊ�˸��õ�Ϊ��ƿ�����ף�����ƿ����˼���ƿ�õ���ѹ������ģ�õĵ�ѹ���������ޡ�����������ɻ���Ϊһ�����ϻ���<BR></P><UL circle??><LI>ǿ���ʹ��ͷ��ƣ��úá�������ϣ�����Ҫ�㲿������ǿ����ƣ���ͷ�ߴ硢�����������������ң���ȫ�Զȸߣ�����ת�ٵͣ��ر��ʺ����ظ��ɡ���ʱ��������ת���ɿ����ر�ߣ������ر𳤡�<BR><LI>�ر����ɢ����ƺ�������ƣ������¶ȵͣ����׻�̼��Ч�ʸߡ�<BR><LI>���û�״����ʽ��ƣ���Ƭ����Ϊ��䲻�ⷧƬ�֣����鵯�ɲ���Ϊ�ձ����ڵ�����ר�õ��ɸ�˿������ת�з�Ƭû�������˶���ʹ���������ܼ�����ָ���ر�á�<BR><LI>�����������ձ����л����������ã������͡�<BR><LI>���ᾭ��Ƶ����ر���ĥ��<BR><LI>�й��˶���������ƽ�⣬��ת�ر�ƽ�ȣ������ر�͡�<BR><LI>����������о���ý�����ֽ���������˼�����Ч���ã��������á�<BR><LI>ǰ�˸����ر�������ͷ���ṹ����������ð�ͣ��ͺ��ر�ͣ����ֻ�����ࡣ<BR><LI>����ͭ�����ȿ����ڽǶ���ƺ����ñ����ױ������������Ѽ�©����<BR><LI>ѹ�����ء��Ӵ������ȼ̵������ý���Ʒ�ƣ��磺��ʩ�͵¡���ȷ�����Ƽ������ɿ���<BR><LI>�������Ʒ���������ȫ�Զ������ȫ�Զ��͡����ص�������ͣ��ֶ��л��������ܿ����ͣ�������������Զ��ڵ����ؼ��л���������ʽ���û�ѡ�������û��Ĳ�ͬ��Ҫ��<BR><LI>��ѡ��װ���ܿ���������������������ӵ��û���<BR><LI>�����ѹ����Խϸߵ�ѹ���ȣ�ר���������ȴ����ǿ���������������˽ϵ͵������¶ȡ�<BR></LI></UL>','��ɽ��ѹ��','1','admin','2010-8-24 17:53:39','admin','2010-8-24 17:53:52')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 29,'KSϵ�л���ʽ��ѹ��',9,'2010824175552.png','<P>&nbsp;</P><P><STRONG>�ص�<BR><BR></STRONG></P><UL type=square><LI>��ת����ƣ���ת������������������<BR><LI>��ɷ���ƣ�Ч�ʸ��ߣ�<BR><LI>����������о���ý�����ֽ���������˼�����Ч���ã��������ã�<BR><LI>��ſ��ز��ý���Ʒ�ƣ��磺ʩ�͵¡�̨���ȣ�<BR><LI>�����������ձ����л����������ã������ͣ�<BR><LI>������ͨ�������Թ�ʽ�ṹ����֤��ð�ͣ�<BR><LI>�й��˶���������ƽ�⣬��תƽ�ȣ������ͣ�<BR><LI>���򷧷�о�������͸��ϲ��ϣ���֤��©����<BR><LI>�����ֲ����㽭��ѧר������������Ч�����ѡ�</LI></UL><P>�ʺ�16Сʱ������ת </P>','��ɽ��ѹ��','1','admin','2010-8-24 17:55:43','admin','2010-8-24 17:55:52')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 30,'KJϵ�л���ʽ��ѹ��',10,'2010824175751.png','<P>&nbsp;</P><LI>�����г��������е���ƣ�����ɿ���ά�޷��㡣<BR><LI>���С�������ᡢ�ƶ����㡣<BR><LI>�ṹ�򵥡�Ч�ʸߣ��Լ۱ȸߡ�<BR><LI>�ò����������վ�տ�� </LI>','��ɽ��ѹ��','1','admin','2010-8-24 17:57:51')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 31,'���ô��ͻ���ʽ��ѹ��',11,'2010824175931.png','<P>&nbsp;</P><P>������ʮ��ļ������£���ɽ�������ѳ�Ϊ�����ϲ������Ʒ�����롢�����û���ӭ�Ŀ�ɽ����������С�Ϳ���ѹ�����������ҡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������1.0��26.0����������ѹ��5��10�ͣ��й̶�ʽ���ƶ�ʽ���з���ʽ��ˮ��ʽ���в��͡��綯�ͣ���100���Ʒ�֣���������ʵ�Ŀ�ɽ��ѹ�����С�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ɽ�Ʋ�Ʒ�������綥�������ܡ������ڵ��г����飬���ڲ�Ʒ��������Ʒ���ܺ����۷����Ͻ��������õ�������<BR></P><UL ??square????><STRONG><LI>�Ż����ͣ�Ϊ��һ�����ܲ�Ʒ��<BR><BR><LI>�̶�ʽ���ƶ�ʽ��<BR><BR><LI>���ͺ͵綯�͡�<BR><BR><LI>��񡢿���˹���ͻ���ǿ��������<BR><BR><LI>���Ƶ����<BR><BR><LI>�������Զ����ڡ�<BR><BR><LI>���ذ�ȫ������<BR><BR><LI>�ʺ��ڴ����Ϳ�ɽ��ˮ�����̡���·���衢������䡢ʯ�ͻ�������е�ȳ�������ҵ��</STRONG></LI></UL>','��ɽ��ѹ��','1','admin','2010-8-24 17:59:32')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 32,'����С�ͻ���ʽ��ѹ��',12,'2010824180051.png','<P>&nbsp;</P><P>������ʮ��ļ������£���ɽ�������ѳ�Ϊ�����ϲ������Ʒ�����롢�����û���ӭ�Ŀ�ɽ����������С�Ϳ���ѹ�����������ҡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������1.0��26.0����������ѹ��5��10�ͣ��й̶�ʽ���ƶ�ʽ���з���ʽ��ˮ��ʽ���в��͡��綯�ͣ���100���Ʒ�֣���������ʵ�Ŀ�ɽ��ѹ�����С�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ɽ�Ʋ�Ʒ�������綥�������ܡ������ڵ��г����飬���ڲ�Ʒ��������Ʒ���ܺ����۷����Ͻ��������õ�������<BR></P><UL ??circle????><STRONG><LI>��Ƭ������Ƭ�����������ֲģ������⴦��Ч���ر�ߣ��ɿ����ر�á�<BR><BR><LI>������ר���䷽���������죬���Ժã���֤���͵�������������<BR><BR><LI>���ײ�����������������ĥ���ر��ʺ϶�۳���Ұ�⻷����<BR><BR><LI>�׸ǲ���ѹ�����գ���������ƣ��������ۣ�ɢ�����ر�á�<BR><BR><LI>�������ϡ��þ�Ͻ���ī���������ȴ��������𣬾߼��ѵ��ۺϻ�е���ܡ�<BR><BR><LI>�����ṹ�����ա������ᣬ�ƶ���<BR><BR><LI>������ά����㡣<BR><BR><LI>ʡ�͡�ʡ�磬ʹ�óɱ��͡� </LI></STRONG></UL>','��ɽ��ѹ��','1','admin','2010-8-24 18:00:51')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 33,'ˮ����������ʽ��ѹ��',13,'2010824180227.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; ������ʮ��ļ������£���ɽ�������ѳ�Ϊ�����ϲ������Ʒ�����롢�����û���ӭ�Ŀ�ɽ����������С�Ϳ���ѹ�����������ҡ�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������1.0��26.0����������ѹ��5��10�ͣ��й̶�ʽ���ƶ�ʽ���з���ʽ��ˮ��ʽ���в��͡��綯�ͣ���100���Ʒ�֣���������ʵ�Ŀ�ɽ��ѹ�����С�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ɽ�Ʋ�Ʒ�������綥�������ܡ������ڵ��г����飬���ڲ�Ʒ��������Ʒ���ܺ����۷����Ͻ��������õ�������<BR></P><UL circle??><STRONG><LI>����ȫ��ͳһ��Ƶ�ͼֽ������ɿ���ά�޷��㡣<BR><BR><LI>ˮ����ͣ���ȴ�ɿ������������ڷ۳���ĳ��ϡ�<BR><BR><LI>�ò����������վ�տ��<BR><BR><LI>���������Զ�����װ�ã����о��á�<BR><BR><LI>ת�ٵͣ���������������������������� </LI></STRONG></UL>','��ɽ��ѹ��','1','admin','2010-8-24 18:02:27')


SET IDENTITY_INSERT [ZT_COM_Product] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_ProductType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_ProductType]

CREATE TABLE [ZT_COM_ProductType] (
[TypeID] [int]  IDENTITY (1, 1)  NOT NULL,
[TypeName] [varchar]  (500) NULL,
[TypeNo] [varchar]  (50) NULL,
[TypeOrder] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_ProductType] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_ProductType] PRIMARY KEY  NONCLUSTERED ( [TypeID] )
SET IDENTITY_INSERT [ZT_COM_ProductType] ON

INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 24,'��ɽ��ѹ��','1',1,'admin','2010-8-24 15:02:49')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 25,'��ɽ���һ�е�豸','2',2,'admin','2010-8-24 15:51:48')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 26,'������������','3',3,'admin','2010-8-24 15:52:49')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 27,'·���е','4',4,'admin','2010-8-24 15:53:05')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 28,'������Ʒ','5',5,'admin','2010-8-24 15:53:36','admin','2010-8-24 18:44:23')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 29,'����ϵ��','6',6,'admin','2010-8-24 15:54:12')

SET IDENTITY_INSERT [ZT_COM_ProductType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_RenCai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_RenCai]

CREATE TABLE [ZT_COM_RenCai] (
[RenCaiID] [int]  IDENTITY (1, 1)  NOT NULL,
[Position] [varchar]  (500) NULL,
[Name] [varchar]  (50) NULL,
[Sex] [varchar]  (2) NULL,
[Birthday] [datetime]  NULL,
[Address] [text]  NULL,
[Telephone] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[School] [varchar]  (500) NULL,
[Resume] [text]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_RenCai] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_RenCai] PRIMARY KEY  NONCLUSTERED ( [RenCaiID] )
SET IDENTITY_INSERT [ZT_COM_RenCai] ON


SET IDENTITY_INSERT [ZT_COM_RenCai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_RongYu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_RongYu]

CREATE TABLE [ZT_COM_RongYu] (
[RongYuID] [int]  IDENTITY (1, 1)  NOT NULL,
[Title] [text]  NULL,
[ImgUrl] [text]  NULL,
[Body] [text]  NULL,
[RongYuTypeName] [varchar]  (500) NULL,
[RongYuTypeNo] [varchar]  (50) NULL,
[RongYuOrder] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_RongYu] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_RongYu] PRIMARY KEY  NONCLUSTERED ( [RongYuID] )
SET IDENTITY_INSERT [ZT_COM_RongYu] ON

INSERT [ZT_COM_RongYu] ([RongYuID],[Title],[ImgUrl],[Body],[RongYuTypeName],[RongYuTypeNo],[RongYuOrder],[CreateBy],[CreateDate]) VALUES ( 12,'������λ','2010823110010.jpg','<P>����˾��õ�����</P><P>&nbsp;</P>','һ������2','214',1,'admin','2010-8-23 11:00:10')

SET IDENTITY_INSERT [ZT_COM_RongYu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_RongYuType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_RongYuType]

CREATE TABLE [ZT_COM_RongYuType] (
[RongYuTypeID] [int]  IDENTITY (1, 1)  NOT NULL,
[RongYuTypeName] [varchar]  (500) NULL,
[RongYuTypeNo] [varchar]  (50) NULL,
[RongYuTypeOrder] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_RongYuType] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_RongYuType] PRIMARY KEY  NONCLUSTERED ( [RongYuTypeID] )
SET IDENTITY_INSERT [ZT_COM_RongYuType] ON

INSERT [ZT_COM_RongYuType] ([RongYuTypeID],[RongYuTypeName],[RongYuTypeNo],[RongYuTypeOrder],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 9,'һ������2','214',1,'admin','2010-6-24 0:55:19','admin','2010-6-24 0:55:29')
INSERT [ZT_COM_RongYuType] ([RongYuTypeID],[RongYuTypeName],[RongYuTypeNo],[RongYuTypeOrder],[CreateBy],[CreateDate]) VALUES ( 10,'��������','erdh',2,'admin','2010-6-24 0:55:49')

SET IDENTITY_INSERT [ZT_COM_RongYuType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_WebInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_WebInfo]

CREATE TABLE [ZT_COM_WebInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FilePath] [varchar]  (500) NULL,
[WebURL] [text]  NULL,
[Title] [text]  NULL,
[KeyWords] [text]  NULL,
[Description] [text]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_WebInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_WebInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ZT_COM_WebInfo] ON


SET IDENTITY_INSERT [ZT_COM_WebInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_WebMainInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_WebMainInfo]

CREATE TABLE [ZT_COM_WebMainInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[Title] [text]  NULL,
[WebURL] [varchar]  (100) NULL,
[CompanyName] [varchar]  (500) NULL,
[Address] [text]  NULL,
[MailNum] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[Fax] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[KeepPerson] [varchar]  (50) NULL,
[Telephone] [varchar]  (50) NULL,
[KeyWords] [text]  NULL,
[Description] [text]  NULL,
[ICP] [varchar]  (50) NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_WebMainInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_WebMainInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ZT_COM_WebMainInfo] ON

INSERT [ZT_COM_WebMainInfo] ([ID],[Title],[WebURL],[CompanyName],[Address],[MailNum],[Mobile],[Fax],[Email],[QQ],[KeepPerson],[Telephone],[KeyWords],[Description],[ICP]) VALUES ( 1,'����ʡ�����п�ɽ��е�豸���޹�˾','http://www.dlkyjx.com','����ʡ�����п�ɽ��е�豸���޹�˾','����ʡ������԰��·�ж�','454150','15839121188','0391-3531183','hndeli@163.com','1103067667','��˼','0391-2621381','����ʡ������ҵ��е�豸���޹�˾','����ʡ������ҵ��е�豸���޹�˾','������')

SET IDENTITY_INSERT [ZT_COM_WebMainInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_COM_ZhaoPin]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_COM_ZhaoPin]

CREATE TABLE [ZT_COM_ZhaoPin] (
[ZhaoPinID] [int]  IDENTITY (1, 1)  NOT NULL,
[Position] [varchar]  (500) NULL,
[ZhaoPinOrder] [int]  NULL,
[Address] [text]  NULL,
[Number] [int]  NULL,
[Salary] [text]  NULL,
[StartDate] [datetime]  NULL,
[EndDate] [datetime]  NULL,
[Body] [text]  NULL,
[YingPin] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_COM_ZhaoPin] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_COM_ZhaoPin] PRIMARY KEY  NONCLUSTERED ( [ZhaoPinID] )
SET IDENTITY_INSERT [ZT_COM_ZhaoPin] ON

INSERT [ZT_COM_ZhaoPin] ([ZhaoPinID],[Position],[ZhaoPinOrder],[Address],[Number],[Salary],[EndDate],[Body],[YingPin],[CreateBy],[CreateDate]) VALUES ( 7,'1',1,'1',1,'1','1988-12-6 0:00:00','132',0,'admin','2010-6-24 1:13:37')

SET IDENTITY_INSERT [ZT_COM_ZhaoPin] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_SYS_AdminInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_SYS_AdminInfo]

CREATE TABLE [ZT_SYS_AdminInfo] (
[AdminID] [int]  IDENTITY (1, 1)  NOT NULL,
[AdminNo] [varchar]  (50) NULL,
[Password] [varchar]  (50) NULL,
[RoleNo] [varchar]  (50) NULL,
[IsLockedOut] [varchar]  (2) NULL,
[AdminName] [varchar]  (50) NULL,
[Sex] [varchar]  (2) NULL,
[LastLoginDate] [datetime]  NULL,
[IDCardNum] [varchar]  (50) NULL,
[Telephone] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[HomeAddress] [varchar]  (500) NULL,
[HomeMailNum] [varchar]  (50) NULL,
[NowAddress] [varchar]  (500) NULL,
[NowMailNum] [varchar]  (50) NULL,
[CompanyAddress] [varchar]  (500) NULL,
[CompanyMailNum] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [varchar]  (7000) NULL)

ALTER TABLE [ZT_SYS_AdminInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_SYS_AdminInfo] PRIMARY KEY  NONCLUSTERED ( [AdminID] )
SET IDENTITY_INSERT [ZT_SYS_AdminInfo] ON

INSERT [ZT_SYS_AdminInfo] ([AdminID],[AdminNo],[Password],[RoleNo],[IsLockedOut],[AdminName],[LastLoginDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 1,'admin','21232f297a57a5a743894a0e4a801fc3','admin','0','�����������Ա','2010-8-24 17:05:36','admin','2010-5-28 23:58:51')

SET IDENTITY_INSERT [ZT_SYS_AdminInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_SYS_ElementInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_SYS_ElementInfo]

CREATE TABLE [ZT_SYS_ElementInfo] (
[ElementID] [int]  IDENTITY (1, 1)  NOT NULL,
[ElementCode] [varchar]  (50) NULL,
[ElementName] [varchar]  (50) NULL,
[ElementDesc] [varchar]  (7000) NULL,
[ParentCode] [varchar]  (50) NULL,
[ElementLink] [varchar]  (500) NULL,
[ElementPicLink] [varchar]  (500) NULL,
[ElementShow] [varchar]  (2) NULL,
[SequenceNo] [int]  NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [varchar]  (7000) NULL)

ALTER TABLE [ZT_SYS_ElementInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_SYS_ElementInfo] PRIMARY KEY  NONCLUSTERED ( [ElementID] )
SET IDENTITY_INSERT [ZT_SYS_ElementInfo] ON

INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow],[LastUpdateBy],[LastUpdateDate]) VALUES ( 460,'1000','ϵͳ����','00','1','admin','2010-5-31 17:54:54')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 461,'1001','��վ����','1000','WebMainInfo.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 462,'1002','�޸�����','1000','ChangePwd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 463,'1003','�˳�ϵͳ','1000','Login.aspx?action=logout','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 464,'1004','����ǰ̨','1000','../Index.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 465,'1100','��ҵ��Ϣ','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 466,'1101','��ҵ��Ϣ�б�','1100','CompanyInfoList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 467,'1102','��ҵ��Ϣ���','1100','CompanyInfoAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 468,'1103','��ҵ��Ϣ�޸�','1100','CompanyInfoEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 469,'1104','��ҵ��Ϣɾ��','1100','CompanyInfoDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 470,'1200','���Ź���','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 471,'1201','�����б�','1200','NewsList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 472,'1202','�������','1200','NewsAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 473,'1203','�����޸�','1200','NewsEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 474,'1204','����ɾ��','1200','NewsDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 475,'1205','����б�','1200','NewsTypeList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 476,'1206','������','1200','NewsTypeAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 477,'1207','����޸�','1200','NewsTypeEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 478,'1208','���ɾ��','1200','NewsTypeDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 479,'1300','��Ʒ����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 480,'1301','��Ʒ�б�','1300','ProductList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 481,'1302','��Ʒ���','1300','ProductAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 482,'1303','��Ʒ�޸�','1300','ProductEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 483,'1304','��Ʒɾ��','1300','ProductDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 484,'1305','����б�','1300','ProductTypeList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 485,'1306','������','1300','ProductTypeAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 486,'1307','����޸�','1300','ProductTypeEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 487,'1308','���ɾ��','1300','ProductTypeDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 492,'1400','�ͻ�����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 493,'1401','�ͻ��б�','1400','CustomerList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 494,'1402','�ͻ����','1400','CustomerAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 495,'1403','�ͻ��޸�','1400','CustomerEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 496,'1404','�ͻ�ɾ��','1400','CustomerDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 497,'1500','�ճ̹���','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 498,'1501','�ճ��б�','1500','TaskList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 499,'1502','�ճ����','1500','TaskAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 500,'1503','�ճ��޸�','1500','TaskEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 501,'1504','�ճ�ɾ��','1500','TaskDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 502,'1600','��ҵ����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 503,'1601','�����б�','1600','RongYuList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 504,'1602','�������','1600','RongYuAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 505,'1603','�����޸�','1600','RongYuEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 506,'1604','����ɾ��','1600','RongYuDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 507,'1605','����б�','1600','RongYuTypeList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 508,'1606','������','1600','RongYuTypeAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 509,'1607','����޸�','1600','RongYuTypeEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 510,'1608','���ɾ��','1600','RongYuTypeDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 511,'1700','��Ϣ����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 512,'1701','������Ϣ�б�','1700','LiuYanList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 513,'1702','������Ϣ����','1700','LiuYanItem.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 514,'1703','������Ϣɾ��','1700','LiuYanDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 515,'1704','������Ϣ�ظ�','1700','LiuYanHuiFu.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 516,'1705','�˲���Ϣ�б�','1700','RenCaiList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 517,'1706','�˲���Ϣ����','1700','RenCaiItem.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 518,'1707','�˲���Ϣɾ��','1700','RenCaiDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 519,'1800','�˲���Ƹ','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 520,'1801','��Ƹ�б�','1800','ZhaoPinList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 521,'1802','��Ƹ���','1800','ZhaoPinAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 522,'1803','��Ƹ�޸�','1800','ZhaoPinEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 523,'1804','��Ƹɾ��','1800','ZhaoPinDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 524,'1900','�û�����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 525,'1901','�û��б�','1900','AdminList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 526,'1902','�û����','1900','AdminAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 527,'1903','�û��޸�','1900','AdminEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 528,'1904','�û�ɾ��','1900','AdminDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 529,'1905','��ɫ�б�','1900','RoleList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 530,'1906','��ɫ���','1900','RoleAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 531,'1907','��ɫ�޸�','1900','RoleEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 532,'1908','��ɫɾ��','1900','RoleDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 533,'2000','�˵�����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 534,'2001','�˵��б�','2000','MenuList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 535,'2002','�˵����','2000','MenuAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 536,'2003','�˵��޸�','2000','MenuEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 537,'2004','�˵�ɾ��','2000','MenuDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 538,'2100','��־����','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 539,'2101','��־�б�','2100','LogList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 540,'2102','��־ɾ��','2100','LogDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 541,'2200','���ӹ���','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 542,'2201','�����б�','2200','LianJieList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 543,'2202','�������','2200','LianJieAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 544,'2203','�����޸�','2200','LianJieEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 545,'2204','����ɾ��','2200','LianJieDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 546,'2300','�Ż�����','00','1','admin','2010-5-31 17:56:04','admin','2010-5-31 18:07:24')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 547,'2301','�Ż���Ϣ�б�','2300','WebInfoList.aspx','1','admin','2010-5-31 17:56:58','admin','2010-5-31 17:59:10')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate]) VALUES ( 548,'2302','��ҳ��Ϣ���','2300','WebInfoAdd.aspx','1','admin','2010-5-31 18:00:42')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 549,'2303','�Ż���Ϣ�޸�','2300','WebInfoEdit.aspx','0','admin','2010-5-31 18:01:40','admin','2010-5-31 18:06:08')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 550,'2304','�Ż���Ϣɾ��','2300','WebInfoDelete.aspx','0','admin','2010-5-31 18:02:17','admin','2010-5-31 18:03:27')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 551,'2305','�Ż���Ϣ�鿴','2300','WebInfoView.aspx','0','admin','2010-5-31 18:03:04','admin','2010-5-31 18:12:48')

SET IDENTITY_INSERT [ZT_SYS_ElementInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_SYS_LogInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_SYS_LogInfo]

CREATE TABLE [ZT_SYS_LogInfo] (
[LogID] [int]  IDENTITY (1, 1)  NOT NULL,
[LogType] [varchar]  (50) NULL,
[OperatorType] [varchar]  (50) NULL,
[FuncName] [varchar]  (50) NULL,
[OperatorInfo] [text]  NULL,
[LoginIP] [varchar]  (50) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Remark] [text]  NULL)

ALTER TABLE [ZT_SYS_LogInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_SYS_LogInfo] PRIMARY KEY  NONCLUSTERED ( [LogID] )
SET IDENTITY_INSERT [ZT_SYS_LogInfo] ON

INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 1,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-20 8:52:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 2,'���Ź���','�ɹ�','ɾ������','���ű��⣺��������·��Ȼ������һ�ڹ���ȫ�߹�ͨ,���������������ҳ��Ӳ�,����������þ�Ͻ����޹�˾���5000����������������Ŀ����������ʽ, �����ˣ�admin','127.0.0.1','admin','2010-8-20 8:54:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 3,'���Ź���','�ɹ�','ɾ������','���ű��⣺���ҽ�����ʴ���ƹ��̼�������-���ַ����Ľ���, �����ˣ�admin','127.0.0.1','admin','2010-8-20 8:55:10')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 4,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-21 10:07:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 5,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ������Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 10:07:25')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 6,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ������Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 10:07:41')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 7,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ������Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 10:08:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 8,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ��߰��Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 10:08:22')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 9,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ��˰��Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 10:08:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 10,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-21 10:11:06')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 11,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ��˰��Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 10:11:16')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 12,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-21 11:37:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 13,'��Ʒ����','�ɹ�','ɾ����Ʒ��Ϣ','��Ʒ���ƣ�1, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:37:33')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 30,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 9:01:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 31,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 10:59:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 32,'��������','�ɹ�','ɾ������','�������⣺13,1231,124, �����ˣ�admin','127.0.0.1','admin','2010-8-23 10:59:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 35,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 11:53:41')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 37,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 15:15:23')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 38,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ�һ���Ʒ,�����Ʒ,�����Ʒ,2,2,6, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:16:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 39,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ��ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:19:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 40,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�������, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:19:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 41,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ���ƷӦ��, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:19:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 42,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITEC ϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:23:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 52,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITEC ϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:04:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 53,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�16, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:04:54')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 54,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�17, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:05:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 55,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:11:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 56,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:11:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 57,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:13:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 58,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:13:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 59,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:13:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 60,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:14:43')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 61,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:15:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 62,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:15:48')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 63,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 16:32:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 64,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:32:32')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 65,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:38:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 66,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�4, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:47:06')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 67,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�5, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:47:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 68,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�6, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:47:30')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 69,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ��ǵķ�����, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:47:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 70,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ�ʹ�ø��Ҷ���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:47:59')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 71,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ���ͷ��Ϊ��, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:48:04')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 72,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ��ǵķ�����, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:48:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 73,'��Ʒ����','�ɹ�','ɾ����Ʒ����','��Ʒ�������ƣ���ͷ��Ϊ��, ɾ���ˣ�admin','127.0.0.1','admin','2010-8-23 16:49:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 74,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ�ʹ�ø��Ҷ���,�ǵķ�����, �����ˣ�admin','127.0.0.1','admin','2010-8-23 16:49:50')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 76,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ���ҵ������, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 17:03:33')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 14,'��Ʒ����','�ɹ�','ɾ����Ʒ��Ϣ','��Ʒ���ƣ�11324124124, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:37:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 15,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�1, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:38:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 16,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�2, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:38:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 17,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�3, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:38:40')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 18,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�4, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:40:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 19,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�5, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:40:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 20,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�6, �����ˣ�admin','127.0.0.1','admin','2010-8-21 11:40:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 21,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-21 15:42:09')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 22,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ��߰��Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:42:21')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 23,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ������Ʒ,�����Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:42:59')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 24,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-21 15:44:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 25,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�2, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:44:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 26,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�2, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:45:01')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 27,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�6, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:45:21')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 28,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�7, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:45:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 29,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ�7, �����ˣ�admin','127.0.0.1','admin','2010-8-21 15:46:55')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 33,'��������','�ɹ�','�������','�������ƣ�������λ�����ˣ�admin','127.0.0.1','admin','2010-8-23 11:00:10')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 34,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 11:11:31')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 36,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 14:36:22')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 43,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ������ƶ��ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:36:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 44,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITAIN��ѹϵ��, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:38:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 45,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITEC��ѹϵ��, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:39:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 46,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ��綯�ƶ��ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:42:16')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 47,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITAIN ϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:43:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 48,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ��綯�����ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:44:26')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 49,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ��綯�����ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:47:19')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 50,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�����̶��ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:48:04')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 51,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�ˮ��̶��ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 15:49:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 75,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ��綯�ݸ˻�, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 16:55:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 77,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ����û�����, �����ˣ�admin','127.0.0.1','admin','2010-8-23 17:14:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 78,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ������ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 17:15:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 79,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ������ݸ˻�, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 17:15:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 80,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ���ѹϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-23 17:15:50')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 81,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�KAITEC�߶�ϵ��, �����ˣ�admin','127.0.0.1','admin','2010-8-23 17:16:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 82,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�KAITAIN����ϵ��, �����ˣ�admin','127.0.0.1','admin','2010-8-23 17:16:25')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 83,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-23 17:18:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 84,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ���ƷӦ��, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 17:18:38')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 85,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ���ƷӦ��, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 17:18:47')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 86,'��Ʒ����','�ɹ�','ɾ����Ʒ����','��Ʒ�������ƣ���ƷӦ��, ɾ���ˣ�admin','127.0.0.1','admin','2010-8-23 17:19:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 87,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ���ƷӦ��, �����ˣ�admin','127.0.0.1','admin','2010-8-23 17:19:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 88,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ�8��ƷӦ��, �޸��ˣ�admin','127.0.0.1','admin','2010-8-23 17:20:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 89,'��Ʒ����','�ɹ�','ɾ����Ʒ����','��Ʒ�������ƣ�8��ƷӦ��, ɾ���ˣ�admin','127.0.0.1','admin','2010-8-23 17:20:49')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 90,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-24 9:47:14')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 91,'��˾��Ϣ����','�ɹ�','�޸Ĺ�˾��Ϣ','��Ϣ���⣺��˾���, �޸��ˣ�admin','127.0.0.1','admin','2010-8-24 9:49:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 92,'���Ź���','�ɹ�','ɾ������','���ű��⣺�������ű�����Ϳ�������̺���5000��Ԫ,ï��ʯ�����ط���������Ч����,�ܵ������Թ���Ϊ�ܵ�����족,��������������Ϳװ�����븯ʴ����,�¼���:��Ӿ������ֹ������ʴ, �����ˣ�admin','127.0.0.1','admin','2010-8-24 9:50:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 93,'���Ź���','�ɹ�','�������','���ű��⣺ף�ػ��ؿ�ɽ��е�豸���޹�˾��վ��ͨ, �����ˣ�admin','127.0.0.1','admin','2010-8-24 9:53:14')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 94,'���Ź���','�ɹ�','�������','���ű��⣺���ǵĻ�������ʡ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 10:25:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 95,'���Ź���','�ɹ�','�������','���ű��⣺��������ݸ˿�ѹ�������Ҳ���10%, �����ˣ�admin','127.0.0.1','admin','2010-8-24 10:33:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 96,'���Ź���','�ɹ�','�޸�����','���ű��⣺ף�ػ��ؿ�ɽ��е�豸���޹�˾��վ��ͨ, �޸��ˣ�admin','127.0.0.1','admin','2010-8-24 10:38:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 102,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:15:10')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 103,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-24 15:50:41')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 104,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:50:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 105,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ���ɽ���һ�е�豸, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:51:48')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 106,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�������������, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:52:49')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 107,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�·���е, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:53:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 108,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�������Ʒ, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:53:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 109,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ�����ϵ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:54:12')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 110,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:55:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 111,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:56:01')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 114,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-24 17:05:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 145,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITECϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:18:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 146,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ��Ĵ�ʽ¶��Ǳ���공, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:19:17')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 147,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ��Ĵ�ʽ¶��Ǳ���공, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:19:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 148,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�Ǳ�����, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:21:03')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 149,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ��ֳ�ʽ���һ�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:23:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 150,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�����ʽ���һ�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:24:21')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 151,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ���������, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:33:54')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 152,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�Ǳ�����, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:34:06')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 153,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ��ֳ�ʽ���һ�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:34:14')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 154,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�����ʽ���һ�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:34:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 155,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�ê�����, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:35:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 156,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ����̻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:36:54')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 157,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�����, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:37:59')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 158,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ����̻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:38:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 159,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�����, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:38:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 160,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ���ɰ�ֻ�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:42:12')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 161,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɰ�ֻ�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:42:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 162,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ����','�������ƣ�������Ʒ, �޸��ˣ�admin','127.0.0.1','admin','2010-8-24 18:44:23')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 97,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-24 14:48:16')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 98,'��Ʒ����','�ɹ�','ɾ����Ʒ��Ϣ','��Ʒ���ƣ�1,2,3,4,5,6,KAITEC ϵ���ݸ˻�,�����ƶ��ݸ˻�,KAITAIN��ѹϵ��,KAITEC��ѹϵ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:01:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 99,'��Ʒ����','�ɹ�','ɾ����Ʒ��Ϣ','��Ʒ���ƣ��綯�ƶ��ݸ˻�,KAITAIN ϵ���ݸ˻�,�綯�����ݸ˻�,����̶��ݸ˻�,ˮ��̶��ݸ˻�,16,17, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:01:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 100,'��Ʒ����','�ɹ�','ɾ����Ʒ����','�������ƣ��綯�ݸ˻�,��ҵ������,���û�����,�����ݸ˻�,KAITEC�߶�ϵ��,KAITAIN����ϵ��,��ѹϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:02:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 101,'��Ʒ����','�ɹ�','��Ӳ�Ʒ����','�������ƣ���ɽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 15:02:49')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 112,'��½�˳�','�ɹ�','ϵͳ��½','����Ա��½ϵͳ','127.0.0.1','admin','2010-8-24 16:01:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 113,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 16:01:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 143,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITAINϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:09:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 144,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�KAITAINϵ���ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:13:33')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 115,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:16:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 116,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:21:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 117,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:25:01')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 118,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:25:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 119,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:26:31')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 120,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:28:30')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 121,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:29:04')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 122,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:30:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 123,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:31:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 124,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:34:43')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 125,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�ˮ��̶�ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:36:57')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 126,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�ˮ��̶�ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:37:27')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 127,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ�����ƶ�ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:39:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 128,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ���ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:40:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 129,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�ˮ��̶�ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:41:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 130,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ɽ�����ƶ�ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:41:26')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 131,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ��綯�ƶ�ʽ�ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:45:15')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 132,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ��綯�����ݸ˻�, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:48:17')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 133,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KAϵ�л���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:50:40')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 134,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KB��ѹϵ�л���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:52:23')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 135,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ���ѹ����ͻ���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:53:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 136,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ���ѹ����ͻ���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:53:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 137,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KSϵ�л���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:55:43')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 138,'��Ʒ����','�ɹ�','�޸Ĳ�Ʒ��Ϣ','��Ʒ���ƣ�KSϵ�л���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:55:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 139,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�KJϵ�л���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:57:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 140,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ����ô��ͻ���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 17:59:32')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 141,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�����С�ͻ���ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:00:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 142,'��Ʒ����','�ɹ�','��Ӳ�Ʒ��Ϣ','��Ʒ���ƣ�ˮ����������ʽ��ѹ��, �����ˣ�admin','127.0.0.1','admin','2010-8-24 18:02:27')

SET IDENTITY_INSERT [ZT_SYS_LogInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ZT_SYS_RoleInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ZT_SYS_RoleInfo]

CREATE TABLE [ZT_SYS_RoleInfo] (
[RoleID] [int]  IDENTITY (1, 1)  NOT NULL,
[RoleNo] [varchar]  (50) NULL,
[RoleName] [varchar]  (50) NULL,
[RoleDesc] [varchar]  (500) NULL,
[RoleElements] [varchar]  (7000) NULL,
[CreateBy] [varchar]  (50) NULL,
[CreateDate] [datetime]  NULL,
[LastUpdateBy] [varchar]  (50) NULL,
[LastUpdateDate] [datetime]  NULL,
[Status] [varchar]  (2) NULL,
[Remark] [varchar]  (7000) NULL)

ALTER TABLE [ZT_SYS_RoleInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ZT_SYS_RoleInfo] PRIMARY KEY  NONCLUSTERED ( [RoleID] )
SET IDENTITY_INSERT [ZT_SYS_RoleInfo] ON

INSERT [ZT_SYS_RoleInfo] ([RoleID],[RoleNo],[RoleName],[RoleElements],[LastUpdateBy],[LastUpdateDate],[Status]) VALUES ( 1,'admin','ϵͳ����Ա','1001,1002,1003,1004,1101,1102,1103,1104,1201,1202,1203,1204,1205,1206,1207,1208,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1401,1402,1403,1404,1501,1502,1503,1504,1601,1602,1603,1604,1605,1606,1607,1608,1701,1702,1703,1704,1705,1706,1707,1801,1802,1803,1804,1901,1902,1903,1904,1905,1906,1907,1908,2001,2002,2003,2004,2101,2102,2201,2202,2203,2204,2301,2302,2303,2304,2305','admin','2010-5-31 18:06:40','1')

SET IDENTITY_INSERT [ZT_SYS_RoleInfo] OFF
