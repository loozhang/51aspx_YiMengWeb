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

INSERT [ZT_COM_CompanyInfo] ([InfoID],[InfoOrder],[Title],[ImgUrl],[Body],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 4,1,'公司简介','onlinenone.jpg','&nbsp;&nbsp;&nbsp;&nbsp; 浙江开山压缩机股份有限公司系开山股份有限公司、浙江开山压力容器有限公司、浙江开山铸造有限公司、浙江博鸿投资顾问有限公司、浙江四方集团公司及曹克坚等23名自然人共同发起，由浙江开山通用机械有限公司整体变更设立的股份有限公司。公司主营业务为空气压缩机的研发、生产和销售，目前主要产品为螺杆式空气压缩机、活塞式空气压缩机及其相关零配件，广泛应用于机械制造、矿山冶金等行业。<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007年1月，公司成功实现了螺杆式空气压缩机的核心部件—螺杆主机的自制，打破了国外跨国公司对中国市场的技术垄断、结束了我国螺杆主机长期依赖进口的局面。2007年9月，公司自主研发生产的两级压缩柴油移动螺杆压缩机被浙江省经济贸易委员会授予“浙江省加快发展装备制造业重点领域——国内首台（套）产品”证书，并荣获“2008第四届中国国际流体机械展览会”金奖， 2008年3月，公司成为国内空气压缩机行业首家获得“中国驰名商标”荣誉的企业，公司系列品牌已逐渐成长为行业领先的民族自主品牌。公司率先完成了从5.5kw至560kw全谱系螺杆式空压机开发生产，成为我国第一家在该行业内拥有自主知识产权、核心技术和核心竞争力的全谱系、规模化的压缩机生产企业，打造空气动力中国“芯”。公司计划从现在起5年时间内，发展成为国际一流的压缩机生产企业。</DIV>','admin','2009-7-7 16:24:38','admin','2010-8-24 9:49:20')

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

INSERT [ZT_COM_News] ([NewsID],[Title],[ImgUrl],[Body],[NewsTypeNo],[NewsTypeName],[NewsOrder],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 19,'祝贺辉县矿山机械设备有限公司网站开通','onlinenone.jpg','&nbsp;&nbsp;&nbsp;&nbsp; 热烈祝贺辉县市矿山设备有限公司网站开通，望广大新老客户积极提出宝贵意见，我们将努力提高对您的服务。','XWDT','新闻动态',1,'admin','2010-8-24 9:53:14','admin','2010-8-24 10:38:28')
INSERT [ZT_COM_News] ([NewsID],[Title],[ImgUrl],[Body],[NewsTypeNo],[NewsTypeName],[NewsOrder],[CreateBy],[CreateDate]) VALUES ( 20,'你们的机器真是省电','onlinenone.jpg','&nbsp;&nbsp; 大年初七，新春伊始，二台Kaitain节能系列75KW螺杆机被送到了浙江临海的用户手中。在与同机型的某境外品牌螺杆机PK中，Kaitain系列的节能效果让用户大开眼界，据用户现场测试，境外品牌的75KW螺杆机与Kaitain 75KW螺杆机在相同的输入电流下每分钟少产出4个立方的流量，如果要获得同样的产气量等于每小时要多耗二十几度电。“你们的机器太厉害了！”用户惊叹。该用户是用二台Kaitain系列75KW螺杆机替代一台75KW、一台110KW的境外品牌螺杆机。使用不久，用户发现，二台Kaitain系列75KW螺杆机比被替代的一台75KW、一台110KW螺杆机产气量还要大。进一步计算，使用Kaitain系列75KW螺杆机，按同等流量计每小时至少可以节省8度电，按该用户实际使用机器的时间，一台Kaitain 75KW螺杆机一年节省电费竟高达近三万元，而机器本身的价格只是高出了5000元，是赔是赚，这笔账相信谁都会算。<BR>&nbsp;&nbsp; 自从Kaitain节能系列交付到客户手中，经过数以千次的现场比试，这一系列节能机型在节约能耗，整机性能和噪声方面都得到了用户的充分肯定，作为经销商我们也看到了用户在使用成本的降低之中所带来的喜悦。感谢浙江开山压缩机股份有限公司世界顶级的研发团队和技术精湛的操作工人们','XWDT','新闻动态',2,'admin','2010-8-24 10:25:51')
INSERT [ZT_COM_News] ([NewsID],[Title],[ImgUrl],[Body],[NewsTypeNo],[NewsTypeName],[NewsOrder],[CreateBy],[CreateDate]) VALUES ( 21,'购买节能螺杆空压机，国家补贴10%','onlinenone.jpg','&nbsp;&nbsp;&nbsp; 根据国家有关规定，螺杆空气压缩机能效在节能评价值（二级能效）的基础上再提高3%就可以享受10%的所得税优惠政策，即用户采购开山压缩机及其子公司生产的节能高端系列螺杆空压机就可以将购机成本的10%抵免当年企业所得税应纳税额。<DIV>&nbsp;&nbsp;&nbsp; 值得自豪的是，近日，开山压缩机公司又完成了JN160-8、JN250-8两款螺杆空压机的国家节能认证工作，成为国内螺杆空压机行业取得国家节能认证证书最多、覆盖功率范围最广（按配套电机从18.5千瓦到250千瓦共13个功率档）的企业。而且所有这些产品的能效值均在节能评价值（二级能效）的基础上再提高了3%以上。完全可以享受国家的优惠政策。</DIV><DIV>&nbsp;&nbsp;&nbsp; 节约的电费归用户、额外支出的购机成本国家补贴给用户，减少的碳排放造福于全人类。这样的好事企业、经销商、所有的用户都应该努力去做！</DIV>','XWDT','新闻动态',3,'admin','2010-8-24 10:33:00')

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

INSERT [ZT_COM_NewsType] ([NewsTypeID],[NewsTypeNo],[NewsTypeName],[CreateBy],[CreateDate]) VALUES ( 2,'XWDT','新闻动态','admin','2010-6-7 10:28:12')

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

INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 21,'开山电固式螺杆机',1,'2010824151510.png','<P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">压缩机是一种提升气体压力的的机械。压缩机有许多结构型式，螺杆压缩机是当代最流行的结构型式。与传统的活塞压缩机相比，螺杆压缩机最突出的优点是可靠性高，此外无振动，噪音易消除，排气纯净。</P><P style="LINE-HEIGHT: 1"><STRONG><FONT style="FONT-SIZE: 15px">开山螺杆机特点:</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">经济的运行成本:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 系统采用0-100%的排气量无级调节。当用气量减小时，排气量跟着减小，电机的电流也同时降低；当不用气时，空压机空车运转，空车过久自动停机。当用气量增加时，恢复重车 。节能效果最优。 </P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">良好的环境适应性:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超常的冷却系统设计，特别适用于亚洲高温、高湿环境。优良的隔振技术和降噪措施，使开山牌螺杆空压机的安装无须专用的基础，只要留出最小的通风和维护空间，就能安置好您的压缩机。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <FONT style="FONT-SIZE: 13px"><STRONG>高效可靠的原装进口主机:</STRONG></FONT> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 采用SKK喷油双螺杆空气压缩机机头。</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK系列螺杆转子型线的设计特点：</FONT></STRONG></P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;采用源于英国技术的最新一代SKK系列螺杆转子专利型线，其结构为双边非对称的阳转子、阴转子，其型线组成曲线全部为圆弧及其包络线，齿数比的确定充分考虑了不同功率段的不同要求，小功率（≤45KW）机型为4：5，大功率（≥55KW）为5：6。本专利转子与现有其他转子相比，有两个突出的优点：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>一、</STRONG> 完全实现“曲面对曲面”啮合，从而有助于形成流体动力润滑膜，降低通过接触带的横向泄漏，提高压缩机效率；以及改善转子的加工、检验性能。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>二、</STRONG> 采用“大转子、大轴承、低转速”的设计思路，转速比其他品牌低30～50%，可以降低噪声和振动，降低排气温度，提高转子刚性，延长使用寿命，减小对杂质和油碳化物敏感性。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>三、</STRONG> 功率范围4~355KW，其中18.5~250KW均为不带齿轮箱直联，200KW和250KW更为4极电机直联，转速低至1480转/分。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>四、</STRONG> 全面符合甚至超越GB19153－2003《容积式空气压缩机能效限定值》国家标准的要求。</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK螺杆主机的设计特点：</FONT></STRONG></P><STRONG><FONT style="FONT-SIZE: 15px"><P style="LINE-HEIGHT: 1"><BR></FONT></STRONG>&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;一、</STRONG>&nbsp; SKK螺杆主机主机设计采用大转子、大轴承、低转速的思路，大功率的主要机型均采用不带齿轮箱直联，在低转速的同时，减少了故障源，改善了主机的受力状况。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>二、</STRONG>&nbsp;&nbsp;采用整体式机壳，后轴承座与压缩腔一体加工，确保同轴度、平行度和垂直度等形位公差继而确保了各运动副的合理间隙。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> 三、</STRONG>&nbsp;&nbsp;转子的轴向力和径向力由不同的轴承承受，并采用世界顶级的SKF重载轴承。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> 四、</STRONG>&nbsp; 主机进气关闭、排气打开时机，喷油口、回油口位置等均按最新研究成果设计，内压比合理，油气热交换充分。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>五、</STRONG>&nbsp;&nbsp;不但噪声低，而且噪声频率低于其他厂牌30～50%，减小对人类耳膜的刺激。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> 六、</STRONG> 轴承由循环油流进行冲洗、冷却、润滑，有效改善轴承的工作条件，降低主机的工作温度。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>七、</STRONG>&nbsp;主机结构简单合理，成熟可靠，故障率低，易于装配和维护。经国家级实验室的检验，主要性能指标如比功率、噪声、振动、可靠性等已居世界一流水准。<BR><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK螺杆主机的加工检测手段：</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp; 精加工和检测全部采用进口的国际一流的加工检测设备，如英国的外圆及端面磨床、螺杆齿形磨床。日本的加工中心。德国的转子平衡机、计量级的三坐标测量机等等，确保产品完美地实现设计要求。 </P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">优越的电控制操作系统:</FONT></STRONG>&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; 机组采用智能化的微电脑控制系统，具备强大的故障诊断和保护功能，能在无人值守的情况下24小时为您工作。如机组发生故障，系统会根据不同情况作出相应的反应，及时提示您更换另部件并作必要的维护。操作特别简单，一触即进入自动操作状态。</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">开山每一款螺杆机都支持变频:</FONT></STRONG> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; 可以根据用户要求开通变频功能，开山变频螺杆压缩机供货范围：功率从5.5kw到280kw，流量从0.6m3/min到45m3/min,排气压力从0.5Mpa到1.3Mpa，有风冷、水冷，皮带传动和直联传动多种配置。</P><P style="LINE-HEIGHT: 1"><BR><STRONG>开山变频螺杆机特点:</STRONG></P><P style="LINE-HEIGHT: 1"><STRONG><BR></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;采用国际著名品牌变频模块，采用经特别强化升降速特性的专用电机，采用一套特别适合螺杆压缩机的PID参数，控制软件经历了数百台压缩机考核，参数设置简便，人机界面亲善。为适应湿热带气候，对变频器的冷却进行了特殊设计。为支持用户自行设定最佳工作压力，增大了油气分离器滤芯的过滤面积。<BR></P><P style="LINE-HEIGHT: 1" align=left>&nbsp;</P><P style="LINE-HEIGHT: 1"></P>','开山空压机','1','admin','2010-8-24 15:15:10','admin','2010-8-24 17:40:56')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 22,'水冷固定式螺杆机',2,'2010824173657.png','<P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp; 压缩机是一种提升气体压力的的机械。压缩机有许多结构型式，螺杆压缩机是当代最流行的结构型式。与传统的活塞压缩机相比，螺杆压缩机最突出的优点是可靠性高，此外无振动，噪音易消除，排气纯净。</P><P style="LINE-HEIGHT: 1"><STRONG><FONT style="FONT-SIZE: 15px">开山螺杆机特点:</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">经济的运行成本:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 系统采用0-100%的排气量无级调节。当用气量减小时，排气量跟着减小，电机的电流也同时降低；当不用气时，空压机空车运转，空车过久自动停机。当用气量增加时，恢复重车 。节能效果最优。 </P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG><FONT style="FONT-SIZE: 13px">良好的环境适应性:</FONT></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超常的冷却系统设计，特别适用于亚洲高温、高湿环境。优良的隔振技术和降噪措施，使开山牌螺杆空压机的安装无须专用的基础，只要留出最小的通风和维护空间，就能安置好您的压缩机。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <FONT style="FONT-SIZE: 13px"><STRONG>高效可靠的原装进口主机:</STRONG></FONT> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 采用SKK喷油双螺杆空气压缩机机头。</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK系列螺杆转子型线的设计特点：</FONT></STRONG></P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;采用源于英国技术的最新一代SKK系列螺杆转子专利型线，其结构为双边非对称的阳转子、阴转子，其型线组成曲线全部为圆弧及其包络线，齿数比的确定充分考虑了不同功率段的不同要求，小功率（≤45KW）机型为4：5，大功率（≥55KW）为5：6。本专利转子与现有其他转子相比，有两个突出的优点：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>一、</STRONG> 完全实现“曲面对曲面”啮合，从而有助于形成流体动力润滑膜，降低通过接触带的横向泄漏，提高压缩机效率；以及改善转子的加工、检验性能。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>二、</STRONG> 采用“大转子、大轴承、低转速”的设计思路，转速比其他品牌低30～50%，可以降低噪声和振动，降低排气温度，提高转子刚性，延长使用寿命，减小对杂质和油碳化物敏感性。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>三、</STRONG> 功率范围4~355KW，其中18.5~250KW均为不带齿轮箱直联，200KW和250KW更为4极电机直联，转速低至1480转/分。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>四、</STRONG> 全面符合甚至超越GB19153－2003《容积式空气压缩机能效限定值》国家标准的要求。</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK螺杆主机的设计特点：</FONT></STRONG></P><STRONG><FONT style="FONT-SIZE: 15px"><P style="LINE-HEIGHT: 1"><BR></FONT></STRONG>&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;一、</STRONG>&nbsp; SKK螺杆主机主机设计采用大转子、大轴承、低转速的思路，大功率的主要机型均采用不带齿轮箱直联，在低转速的同时，减少了故障源，改善了主机的受力状况。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>二、</STRONG>&nbsp;&nbsp;采用整体式机壳，后轴承座与压缩腔一体加工，确保同轴度、平行度和垂直度等形位公差继而确保了各运动副的合理间隙。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> 三、</STRONG>&nbsp;&nbsp;转子的轴向力和径向力由不同的轴承承受，并采用世界顶级的SKF重载轴承。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> 四、</STRONG>&nbsp; 主机进气关闭、排气打开时机，喷油口、回油口位置等均按最新研究成果设计，内压比合理，油气热交换充分。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp; <STRONG>五、</STRONG>&nbsp;&nbsp;不但噪声低，而且噪声频率低于其他厂牌30～50%，减小对人类耳膜的刺激。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;<STRONG> 六、</STRONG> 轴承由循环油流进行冲洗、冷却、润滑，有效改善轴承的工作条件，降低主机的工作温度。</P><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>七、</STRONG>&nbsp;主机结构简单合理，成熟可靠，故障率低，易于装配和维护。经国家级实验室的检验，主要性能指标如比功率、噪声、振动、可靠性等已居世界一流水准。<BR><BR><STRONG><FONT style="FONT-SIZE: 15px">SKK螺杆主机的加工检测手段：</FONT></STRONG></P><STRONG></STRONG><P style="LINE-HEIGHT: 1"><BR>&nbsp;&nbsp;&nbsp;&nbsp; 精加工和检测全部采用进口的国际一流的加工检测设备，如英国的外圆及端面磨床、螺杆齿形磨床。日本的加工中心。德国的转子平衡机、计量级的三坐标测量机等等，确保产品完美地实现设计要求。 </P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">优越的电控制操作系统:</FONT></STRONG>&nbsp;</P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; 机组采用智能化的微电脑控制系统，具备强大的故障诊断和保护功能，能在无人值守的情况下24小时为您工作。如机组发生故障，系统会根据不同情况作出相应的反应，及时提示您更换另部件并作必要的维护。操作特别简单，一触即进入自动操作状态。</P><P style="LINE-HEIGHT: 1"><BR><STRONG><FONT style="FONT-SIZE: 14px">开山每一款螺杆机都支持变频:</FONT></STRONG> </P><P style="LINE-HEIGHT: 1">&nbsp;&nbsp;&nbsp; 可以根据用户要求开通变频功能，开山变频螺杆压缩机供货范围：功率从5.5kw到280kw，流量从0.6m3/min到45m3/min,排气压力从0.5Mpa到1.3Mpa，有风冷、水冷，皮带传动和直联传动多种配置。</P><P style="LINE-HEIGHT: 1"><BR><STRONG>开山变频螺杆机特点:</STRONG></P><P style="LINE-HEIGHT: 1"><STRONG><BR></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;采用国际著名品牌变频模块，采用经特别强化升降速特性的专用电机，采用一套特别适合螺杆压缩机的PID参数，控制软件经历了数百台压缩机考核，参数设置简便，人机界面亲善。为适应湿热带气候，对变频器的冷却进行了特殊设计。为支持用户自行设定最佳工作压力，增大了油气分离器滤芯的过滤面积。<BR></P><A href="http://www.kaishan-sh.com/viewproduct.asp?ID=46&amp;PTID=1&amp;PTID2=30&amp;PTID3="><FONT color=#810081></FONT></A>','开山空压机','1','admin','2010-8-24 17:36:57','admin','2010-8-24 17:41:11')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 23,'开山柴油移动式螺杆机',3,'2010824173958.png','<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 移动式螺杆空气压缩机广泛应用于矿山、水利、交通、造船、城建、能源、军工等行业。在欧美等发达国家，动力用移动式空气压缩机，可以说100%是螺杆空压机。在我国，移动式螺杆空压机正以惊人的速度替代其他种类的空压机。<BR>这是因为螺杆式压缩机具备以下主要优点：<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、可靠性高：压缩机零部件少，没有易损件，因而它运转可靠,寿命长,大修间隔期可达4~8万小时；<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、操作维护方便：自动化程度高，操作人员不必经过长时间的专业培训，可实现无人值守运转；<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、动力平衡性好：没有不平衡惯性力，可平稳地高速运转,可实现无基础运转，特别适合用作移动式压缩机，体积小，重量轻、占地面积少；<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、适应性强：具有强制输气的特点，容积流量几乎不受排气压力的影响，在宽广的转速范围内能保持高效率。<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开山集团是目前国内唯一有能力、且已经在大批量生产电动移动式和柴油移动式全系列螺杆空压机的企业。在本来是外资品牌垄断的移动螺杆空压机市场，开山牌成为一道亮丽的风景线。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开山牌电动移动式螺杆空压机，功率范围11~250kW、排气量范围覆盖至40m3/min，共15个基本型。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开山牌柴油移动式螺杆空压机，功率范围37~300kW、排气量范围覆盖至26m3/min、排气压力最高至2.2MPa，共6个基本型。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每一款基本型可根据用户需要变为不同排气量、不同排气压力的一个系列产品。<BR>开山牌柴油移动式螺杆空压机的特点。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、主机：采用大直径螺杆转子，主机与柴油机通过高弹性联轴器直联，中间没有增速齿轮，可靠性更好；主机转速与柴油机一致（不超过2400r/min），寿命更长。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、柴油机：选用东风康明斯、玉柴等国内名牌柴油机，符合欧Ⅱ排放要求，油耗低，有覆盖全国的售后服务体系，用户可得到迅速、完善的服务。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、适应性好，可根据用气量的大小，自动调节柴油机油门（排气量），不浪费一滴柴油。这相当于电动螺杆机的变频控制。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、运行参数一目了然，并具有多重提示包金报警和停机保护功能。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户对“开山牌”柴油移动式螺杆机的一致评价是：购机成本低，维护要求低，维修费用低，柴油消耗也比同类进口机要低。</P>','开山空压机','1','admin','2010-8-24 17:39:58','admin','2010-8-24 17:41:26')

INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 36,'履带式露天潜孔钻车',16,'2010824181917.png','<P>&nbsp;</P><P>&nbsp;&nbsp; “<STRONG>开山</STRONG>牌”履带式<STRONG>露天潜孔钻车</STRONG>是以气动、电动或内燃机为驱动动力；工作压力分为高、中、低风压的系列产品。具有爬坡能力大，对于崎岖不平的路面适应性强；凿岩作业稳定性好的特点。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“<STRONG>开山</STRONG>牌”履带式露天<STRONG>潜孔钻车</STRONG>可以配置各种型号的潜孔冲击器，能够钻凿不同孔径、不同深度、多种方位、多种角度的爆破孔、予裂孔、锚索锚杆孔、灌浆孔、勘测孔等，适应范围宽，凿岩效率高。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“<STRONG>开山</STRONG>牌”<STRONG>履带式</STRONG>露天<STRONG>潜孔钻车</STRONG>还可以配置干式或湿式捕尘器进行凿岩作业，有效地降低粉尘对环境的污染，保护作业人员的身体健康。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KC系列<STRONG>露天潜孔钻车</STRONG>以单一的压缩空气为动力，与潜孔冲击器配套后,可钻凿水平、垂直、倾斜等多方位爆破孔,预裂孔和锚索(杆)孔。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KY系列<STRONG>露天潜孔钻车</STRONG>以柴动(电动)为动力，通过液压传动实现行走、回转、推进（提升）和角度调整等动作。<BR><BR><STRONG>特点</STRONG> </P><UL type=square><LI>安全稳定的行走机构<BR><LI>集中控制的操纵机构<BR><LI>维修方便的液压泵组<BR><LI>安全可靠的胶管结构<BR><LI>强劲有力的推进、回转机构<BR><LI>灵活的钻臂操作<BR><LI>先进的集尘装置 </LI></UL>','开山凿岩机械设备','2','admin','2010-8-24 18:19:17','admin','2010-8-24 18:19:44')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 37,'潜孔钻机',17,'2010824182103.png','<P>&nbsp;</P><P>追求“安全高效”，真诚服务社会。“开山牌”潜孔钻机系列产品按照中国矿山特点创新设计，结构新颖、高效节能。广泛适用于中小型矿山及国防、水利、筑路、石方工程中的炮孔凿岩作业，是实现分层开采和中深孔爆破的理想工具。<BR><BR><STRONG>国内首创的气液联动钻机</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;将液压设计技术创新性地应用于轻型潜孔钻机中，高效节能，国内首创。<BR>&nbsp;&nbsp;&nbsp;&nbsp;液压马达驱动，回转扭矩大，不易卡钎。<BR>&nbsp;&nbsp;&nbsp;&nbsp;采用油缸推进，提升力强劲，利于中深孔钻进。<BR>&nbsp;&nbsp;&nbsp;&nbsp;独特的钻架锁紧机构，确保钻孔角度准确、一致。<BR>&nbsp;&nbsp;&nbsp;&nbsp;别致的配重装置，使钻机工作稳定、可靠、不移位。<BR><BR><STRONG>高效节能的电动钻机</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;以普通电机为回转动力，经济、高效、节能。<BR>&nbsp;&nbsp;&nbsp;&nbsp;采用摆线针轮减速器，回转扭矩大，凿岩效率高。<BR>&nbsp;&nbsp;&nbsp;&nbsp;新颖的过载保护，使钻机运行稳定可靠。<BR>&nbsp;&nbsp;&nbsp;&nbsp;有单顶尖、双顶尖、支座式三种支承结构可供选择，能适应任何地质地貌。<BR><BR><STRONG>高适应性的全风动钻机</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;推进、回转和冲击全部以压缩空气为动力，结构简洁、动力单一、搬迁便利。<BR>&nbsp;&nbsp;&nbsp;&nbsp;在单顶尖、双顶尖、支座式三种支承结构可供选择，能适应任何地质地貌。<BR>&nbsp;&nbsp;&nbsp;&nbsp;操纵机构集中，操作方便快捷。<BR>&nbsp;&nbsp;&nbsp;&nbsp;独特的双消声器，消声效果好，减少了环境污染。 </P>','开山凿岩机械设备','2','admin','2010-8-24 18:21:03','admin','2010-8-24 18:34:06')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 38,'手持式凿岩机',18,'2010824182305.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp;&nbsp;半个多世纪的创新经验和锲而不舍的追求，在“开山牌”凿岩机上得到完美体现。优良的品质、卓越的性能，使“开山牌”气动凿岩机广泛适用于煤炭、冶金、铁路、交通、水利、基建和国防工程中各种岩石的水平、倾斜、向下炮孔的钻凿作业。<BR><BR></P><UL square??><LI><STRONG>科学设计，精心布局。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;采用现代设计手段，对每一个产品进行性能优化，对所有操作机构按人体工学原理进行布置，保证了产品的高性能、高效率和操作的方便性、安全性。 <LI><STRONG>千锤百炼，精益求精。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;优质的材料和科学的锻造，处处体现着“质”的内涵，保证了产品的高强度、高耐磨性和耐冲击性。 <LI><STRONG>精雕细刻，点石成金。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;数控机床加工，Unicase自动线热处理，给予“质”的保证和“硬碰硬”的自信。 <LI><STRONG>科学试验，铸就精品。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;由微机控制的凿岩机出厂运行试验台，掌握着每一台产品的动态特性，避免了人为失误的发生，保证了出厂产品过硬的质量和卓越的性能。 </LI></UL>','开山凿岩机械设备','2','admin','2010-8-24 18:23:05','admin','2010-8-24 18:34:14')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 39,'气腿式凿岩机',19,'2010824182421.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 半个多世纪的创新经验和锲而不舍的追求，在“开山牌”凿岩机上得到完美体现。优良的品质、卓越的性能，使“开山牌”气动凿岩机广泛适用于煤炭、冶金、铁路、交通、水利、基建和国防工程中各种岩石的水平、倾斜、向下炮孔的钻凿作业。<BR><BR></P><UL square??><LI><STRONG>科学设计，精心布局。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;采用现代设计手段，对每一个产品进行性能优化，对所有操作机构按人体工学原理进行布置，保证了产品的高性能、高效率和操作的方便性、安全性。 <LI><STRONG>千锤百炼，精益求精。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;优质的材料和科学的锻造，处处体现着“质”的内涵，保证了产品的高强度、高耐磨性和耐冲击性。 <LI><STRONG>精雕细刻，点石成金。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;数控机床加工，Unicase自动线热处理，给予“质”的保证和“硬碰硬”的自信。 <LI><STRONG>科学试验，铸就精品。</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;由微机控制的凿岩机出厂运行试验台，掌握着每一台产品的动态特性，避免了人为失误的发生，保证了出厂产品过硬的质量和卓越的性能。 </LI></UL>','开山凿岩机械设备','2','admin','2010-8-24 18:24:21','admin','2010-8-24 18:34:24')

INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 41,'锚杆钻机',21,'2010824183539.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 我们打造的不仅是高质量的产品，更是战胜自然、追求安全幸福的永恒信念。“开山”牌锚杆机系列产品是专为锚固工程而精心研制的，主要适用于地质灾害防治中的滑坡、危岩体和控制建筑物位移等高边坡岩体锚固孔的钻凿，还可用于城市深基坑等地基锚固孔以及工程爆破孔、排水孔等的钻凿。<BR><BR></P><UL type=square><LI>重量轻，解体方便，安装和搬迁极为便利。<BR><BR><LI>钻机角度调节方便，定位准确可靠。<BR><BR><LI>全液压控制，操作灵活、方便、快捷。<BR><BR><LI>回转扭矩大，冲击力量强，凿孔效率高。<BR><BR><LI>提升力强劲，为中深孔钻井提供条件。<BR><BR><LI>采用专用跟管钻具，能在不稳定地层等恶劣地质条件下使用，成孔质量好。</LI></UL>','开山凿岩机械设备','2','admin','2010-8-24 18:35:39')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 42,'捣固机',22,'2010824183654.png','<P>&nbsp;</P><P><STRONG>用途：</STRONG> </P><UL type=circle><LI>锅炉造船冶金工业及其他行业各种金属构件的铲切，尤其是各种不规则或狭小不方便的铲切工作。<BR><BR><LI>中大型铸件的清砂，铲除浇冒口。<BR><BR><LI>基本建设和交通工程的桥梁铲切焊缝。<BR><BR><LI>各种砖墙混凝土墙的开口工作。 </LI></UL>','杭风气动工具','3','admin','2010-8-24 18:36:54','admin','2010-8-24 18:38:36')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 43,'气铲',23,'2010824183759.png','<P>&nbsp;</P><P><STRONG>用途：</STRONG> </P><UL type=circle><LI>锅炉造船冶金工业及其他行业各种金属构件的铲切，尤其是各种不规则或狭小不方便的铲切工作。<BR><BR><LI>中大型铸件的清砂，铲除浇冒口。<BR><BR><LI>基本建设和交通工程的桥梁铲切焊缝。<BR><BR><LI>各种砖墙混凝土墙的开口工作。 </LI></UL>','杭风气动工具','3','admin','2010-8-24 18:37:59','admin','2010-8-24 18:38:46')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 44,'气砂轮机',24,'2010824184212.png','<P>&nbsp;</P><P><STRONG>用途：</STRONG> </P><UL type=circle><LI>适用焊接前坡口及焊接后勤工作焊缝表面的修磨。<BR><BR><LI>金属薄板、小型钢的剖割。<BR><BR><LI>金属表面修磨、除锈、抛光。 </LI></UL>','杭风气动工具','3','admin','2010-8-24 18:42:12','admin','2010-8-24 18:42:29')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 24,'电动移动式螺杆机',4,'2010824174515.png','<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P><P>&nbsp;&nbsp;&nbsp;&nbsp;移动式<STRONG>螺杆空气压缩机</STRONG>广泛应用于矿山、水利、交通、造船、城建、能源、军工等行业。在欧美等发达国家，动力用移动式空气压缩机，可以说100%是螺杆空压机。在我国，移动式螺杆空压机正以惊人的速度替代其他种类的空压机。<BR>这是因为<STRONG>螺杆式压缩机</STRONG>具备以下主要<STRONG>优点</STRONG>：<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、可靠性高：压缩机零部件少，没有易损件，因而它运转可靠,寿命长,大修间隔期可达4~8万小时；<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、操作维护方便：自动化程度高，操作人员不必经过长时间的专业培训，可实现无人值守运转；<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、动力平衡性好：没有不平衡惯性力，可平稳地高速运转,可实现无基础运转，特别适合用作移动式压缩机，体积小，重量轻、占地面积少；<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、适应性强：具有强制输气的特点，容积流量几乎不受排气压力的影响，在宽广的转速范围内能保持高效率。<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>开山集团</STRONG>是目前国内唯一有能力、且已经在大批量生产电动移动式和柴油移动式全系列螺杆空压机的企业。在本来是外资品牌垄断的移动螺杆空压机市场，开山牌成为一道亮丽的风景线。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>开山牌</STRONG>电动移动式<STRONG>螺杆空压机</STRONG>，功率范围11~250kW、排气量范围覆盖至40m3/min，共15个基本型。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>开山牌</STRONG>柴油移动式<STRONG>螺杆空压机</STRONG>，功率范围37~300kW、排气量范围覆盖至26m3/min、排气压力最高至2.2MPa，共6个基本型。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每一款基本型可根据用户需要变为不同排气量、不同排气压力的一个系列产品。<BR><STRONG>开山牌</STRONG>柴油移动式<STRONG>螺杆空压机</STRONG>的<STRONG>特点</STRONG>。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、主机：采用大直径螺杆转子，主机与柴油机通过高弹性联轴器直联，中间没有增速齿轮，可靠性更好；主机转速与柴油机一致（不超过2400r/min），寿命更长。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、柴油机：选用东风康明斯、玉柴等国内名牌柴油机，符合欧Ⅱ排放要求，油耗低，有覆盖全国的售后服务体系，用户可得到迅速、完善的服务。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、适应性好，可根据用气量的大小，自动调节柴油机油门（排气量），不浪费一滴柴油。这相当于电动螺杆机的变频控制。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、运行参数一目了然，并具有多重提示包金报警和停机保护功能。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户对“<STRONG>开山牌</STRONG>”柴油移动式<STRONG>螺杆机</STRONG>的一致评价是：购机成本低，维护要求低，维修费用低，柴油消耗也比同类进口机要低。</P>','开山空压机','1','admin','2010-8-24 17:45:15')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 25,'电动防爆螺杆机',5,'2010824174816.png','<STRONG>用途<BR><BR></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;煤矿井下开拓巷道所需气动工具及喷浆设备由地面供给压缩空气时，因管道长，压力降低，故效率很低。本压缩机可以在井下掘进工作面附近安全运转，并可随巷道延伸向前移动，故能保持较高气压，使气动机械的效率比地面供气时提高30%至一倍，耗电下降30%，并能节约大量管道。本压缩机也适用于工程巷道施工用途。<BR><BR><STRONG>特点</STRONG><BR><BR><UL type=square><LI>&nbsp;&nbsp;&nbsp;&nbsp;采用SKK主机，结构先进，其五对六齿形齿间落差小，故回流损失小，比四对六齿形&nbsp;&nbsp;&nbsp; 提高效率10-12%，省电25%；并具有精度高，运转平稳、噪声低、可靠性高，寿命长、维&nbsp; 护费用低、油耗低等优点。<BR><LI>&nbsp;&nbsp;&nbsp;&nbsp;采用全套奥地利HOERBIGER公司气量控制系统，稳定可靠。<BR><LI>&nbsp;&nbsp;&nbsp;&nbsp;0-100负荷调整，能随着实际使用气量的多少，自动调整动率消耗。<BR><LI>&nbsp;&nbsp;&nbsp;&nbsp;使用安全可靠。具有防爆、过载、短路、断相、漏电等到保护；还具有超温、空滤堵塞、油滤堵塞、油分堵塞报警及超温停机等到保护装置，以及容调、制压阀、安全阀三重保护防止超压运行。油气分离滤芯采用进口超细玻璃纤维，使压缩空气含油量控制在3ppm以下。</LI></UL>','开山空压机','1','admin','2010-8-24 17:48:16')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 26,'KA系列活塞式空压机',6,'2010824175040.png','KA系列空气压缩机广泛应用于气动夹固、风动工具、轮胎充气，吹制工艺、喷漆、喷砂、射流元件及其他需要压缩空气的场所。<BR><UL square??><LI>强力型大机头设计，用好、用足材料，对主要零部件进行强化设计，机头尺寸、重量均大于其他厂家，安全裕度高，加上转速低，特别适合于重负荷、长时间连续运转，可靠性特别高，寿命特别长。<BR><LI>特别进行散热设计和气流设计，排气温度低，不易积碳，效率高。<BR><LI>采用环状阀组式设计，阀片材料为瑞典不锈阀片钢，阀组弹簧材料为日本进口的气阀专用弹簧钢丝，且运转中阀片没有弯曲运动，使气阀的性能及寿命指标特别好。<BR><LI>活塞环采用日本理研环，经久耐用，不上油。<BR><LI>曲轴经高频游淬火，特别耐磨。<BR><LI>有关运动件经精密平衡，运转特别平稳，噪声特别低。</LI></UL>适合24小时连续运转','开山空压机','1','admin','2010-8-24 17:50:40')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 27,'KB中压系列活塞式空压机',7,'2010824175223.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 开山牌中压系列往复活塞空气压缩机秉承低速、重载、适合连续运转的设计理念，排气温度低、振动小、噪音低、油耗低。追求低故障率、高可靠性，整机结构合理，系统简洁，控制可靠，性能稳定。已形成较为完整的品种系列，既有带储气罐的移动式，也有不带储气罐的固定式。既有单机的形式，也有适应大排量的组合机。为了更好地为吹瓶机配套，还设计开发了集吹瓶用的中压机、合模用的低压机、储气罐、过滤器、冷干机等为一体的组合机。<BR></P><UL type=circle><LI>强力型大机头设计，用好、用足材料，对主要零部件进行强化设计，机头尺寸、重量均大于其他厂家，安全性度高，加上转速低，特别适合于重负荷、长时间连续运转，可靠性特别高，寿命特别长。<BR><LI>特别进行散热设计和气流设计，排气温度低，不易积碳，效率高。<BR><LI>采用环状阀组式设计，阀片材料为瑞典不锈阀片钢，阀组弹簧材料为日本进口的气阀专用弹簧钢丝，且运转中阀片没有弯曲运动，使气阀的性能及寿命指标特别好。<BR><LI>活塞环采用日本理研环，经久耐用，不上油。<BR><LI>曲轴经高频淬火，特别耐磨。<BR><LI>有关运动件经精密平衡，动转特别平稳，噪声特别低。<BR><LI>空气滤清器芯采用进口滤纸制作，过滤及消音效果好，经久耐用。<BR><LI>前端盖内特别设计有油分离结构，呼吸阀不冒油，油耗特别低，保持机体清洁。<BR><LI>排气铜管喇叭口扩口角度设计合理并用保护套保护，避免破裂及漏气。<BR><LI>压力开关、接触器、热继电器采用进口品牌，如：“施耐德“，确保控制及保护可靠。<BR><LI>气量控制方面有气控全自动、电控全自动型、气控电控两用型（手动切换）、智能控制型（根据用气情况自动在电气控间切换）四种形式供用户选择，满足用户的不同需要。<BR><LI>可选加装智能控制器，满足用气情况复杂的用户。<BR><LI>针对中压机相对较高的压力比，专门设计了冷却能力强的中冷器，保持了较低的排气温度。 </LI></UL>','开山空压机','1','admin','2010-8-24 17:52:23')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 28,'中压组合型活塞式空压机',8,'2010824175339.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 开山牌中压系列往复活塞空气压缩机秉承低速、重载、适合连续运转的设计理念，排气温度低、振动小、噪音低、油耗低。追求低故障率、高可靠性，整机结构合理，系统简洁，控制可靠，性能稳定。已形成较为完整的品种系列，既有带储气罐的移动式，也有不带储气罐的固定式。既有单机的形式，也有适应大排量的组合机。为了更好地为吹瓶机配套，还设计开发了集吹瓶用的中压机、合模用的低压机、储气罐、过滤器、冷干机等为一体的组合机。<BR></P><UL circle??><LI>强力型大机头设计，用好、用足材料，对主要零部件进行强化设计，机头尺寸、重量均大于其他厂家，安全性度高，加上转速低，特别适合于重负荷、长时间连续运转，可靠性特别高，寿命特别长。<BR><LI>特别进行散热设计和气流设计，排气温度低，不易积碳，效率高。<BR><LI>采用环状阀组式设计，阀片材料为瑞典不锈阀片钢，阀组弹簧材料为日本进口的气阀专用弹簧钢丝，且运转中阀片没有弯曲运动，使气阀的性能及寿命指标特别好。<BR><LI>活塞环采用日本理研环，经久耐用，不上油。<BR><LI>曲轴经高频淬火，特别耐磨。<BR><LI>有关运动件经精密平衡，动转特别平稳，噪声特别低。<BR><LI>空气滤清器芯采用进口滤纸制作，过滤及消音效果好，经久耐用。<BR><LI>前端盖内特别设计有油分离结构，呼吸阀不冒油，油耗特别低，保持机体清洁。<BR><LI>排气铜管喇叭口扩口角度设计合理并用保护套保护，避免破裂及漏气。<BR><LI>压力开关、接触器、热继电器采用进口品牌，如：“施耐德“，确保控制及保护可靠。<BR><LI>气量控制方面有气控全自动、电控全自动型、气控电控两用型（手动切换）、智能控制型（根据用气情况自动在电气控间切换）四种形式供用户选择，满足用户的不同需要。<BR><LI>可选加装智能控制器，满足用气情况复杂的用户。<BR><LI>针对中压机相对较高的压力比，专门设计了冷却能力强的中冷器，保持了较低的排气温度。<BR></LI></UL>','开山空压机','1','admin','2010-8-24 17:53:39','admin','2010-8-24 17:53:52')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 29,'KS系列活塞式空压机',9,'2010824175552.png','<P>&nbsp;</P><P><STRONG>特点<BR><BR></STRONG></P><UL type=square><LI>低转速设计，运转更安静，寿命更长；<BR><LI>舌簧阀设计，效率更高；<BR><LI>空气滤清器芯采用进口滤纸制作，过滤及消音效果好，经久耐用；<BR><LI>电磁开关采用进口品牌，如：施耐德、台安等；<BR><LI>活塞环采用日本理研环，经久耐用，不上油；<BR><LI>呼吸器通道采用迷宫式结构，保证不冒油；<BR><LI>有关运动件经精密平衡，运转平稳，噪声低；<BR><LI>单向阀阀芯采用新型复合材料，保证不漏气；<BR><LI>风扇轮采用浙江大学专利技术，降温效果更佳。</LI></UL><P>适合16小时连续运转 </P>','开山空压机','1','admin','2010-8-24 17:55:43','admin','2010-8-24 17:55:52')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 30,'KJ系列活塞式空压机',10,'2010824175751.png','<P>&nbsp;</P><LI>采用市场上最流行的设计，成熟可靠，维修方便。<BR><LI>体积小、重量轻、移动方便。<BR><LI>结构简单、效率高，性价比高。<BR><LI>用材优良、工艺精湛。 </LI>','开山空压机','1','admin','2010-8-24 17:57:51')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 31,'矿用大型活塞式空压机',11,'2010824175931.png','<P>&nbsp;</P><P>经过数十年的技术创新，开山集团现已成为世界上产量最大、品种最齐、最受用户欢迎的矿山及工程用中小型空气压缩机生产厂家。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排气量1.0至26.0立方、排气压力5至10巴，有固定式、移动式，有风冷式、水冷式，有柴动型、电动型，共100多个品种，是名副其实的矿山空压机超市。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开山牌产品具有世界顶级的性能。经长期的市场检验，已在产品质量、产品性能和销售服务上建立了良好的信誉。<BR></P><UL ??square????><STRONG><LI>优化机型，为新一代节能产品。<BR><BR><LI>固定式和移动式。<BR><BR><LI>柴动型和电动型。<BR><BR><LI>玉柴、康明斯柴油机，强劲动力。<BR><BR><LI>名牌电机。<BR><BR><LI>排气量自动调节。<BR><BR><LI>多重安全保护。<BR><BR><LI>适合于大中型矿山、水利工程、道路建设、隧道开凿、石油化工、机械等场所或行业。</STRONG></LI></UL>','开山空压机','1','admin','2010-8-24 17:59:32')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 32,'矿用小型活塞式空压机',12,'2010824180051.png','<P>&nbsp;</P><P>经过数十年的技术创新，开山集团现已成为世界上产量最大、品种最齐、最受用户欢迎的矿山及工程用中小型空气压缩机生产厂家。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排气量1.0至26.0立方、排气压力5至10巴，有固定式、移动式，有风冷式、水冷式，有柴动型、电动型，共100多个品种，是名副其实的矿山空压机超市。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开山牌产品具有世界顶级的性能。经长期的市场检验，已在产品质量、产品性能和销售服务上建立了良好的信誉。<BR></P><UL ??circle????><STRONG><LI>阀片、弹簧片采用瑞典特殊钢材，经特殊处理，效率特别高，可靠性特别好。<BR><BR><LI>活塞环专门配方，单体铸造，弹性好，保证极低的润滑油消耗量。<BR><BR><LI>气缸采用硼铸铁，经久耐磨，特别适合多粉尘的野外环境。<BR><BR><LI>缸盖采用压铸工艺，流线形设计，外形美观，散热性特别好。<BR><BR><LI>曲轴采用稀土镁合金球墨铸铁，经热处理、表面淬火，具极佳的综合机械性能。<BR><BR><LI>整机结构简洁紧凑、重量轻，移动灵活。<BR><BR><LI>操作、维护简便。<BR><BR><LI>省油、省电，使用成本低。 </LI></STRONG></UL>','开山空压机','1','admin','2010-8-24 18:00:51')
INSERT [ZT_COM_Product] ([ProductID],[ProductName],[ProductOrder],[ProductImgUrl],[ProductInfo],[TypeName],[TypeNo],[CreateBy],[CreateDate]) VALUES ( 33,'水冷往复活塞式空压机',13,'2010824180227.png','<P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 经过数十年的技术创新，开山集团现已成为世界上产量最大、品种最齐、最受用户欢迎的矿山及工程用中小型空气压缩机生产厂家。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排气量1.0至26.0立方、排气压力5至10巴，有固定式、移动式，有风冷式、水冷式，有柴动型、电动型，共100多个品种，是名副其实的矿山空压机超市。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开山牌产品具有世界顶级的性能。经长期的市场检验，已在产品质量、产品性能和销售服务上建立了良好的信誉。<BR></P><UL circle??><STRONG><LI>采用全国统一设计的图纸，成熟可靠，维修方便。<BR><BR><LI>水冷机型，冷却可靠，尤其适用于粉尘多的场合。<BR><BR><LI>用材优良、工艺精湛。<BR><BR><LI>设有气量自动调节装置，运行经济。<BR><BR><LI>转速低，气阀、活塞环等易损件寿命长。 </LI></STRONG></UL>','开山空压机','1','admin','2010-8-24 18:02:27')


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

INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 24,'开山空压机','1',1,'admin','2010-8-24 15:02:49')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 25,'开山凿岩机械设备','2',2,'admin','2010-8-24 15:51:48')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 26,'杭风气动工具','3',3,'admin','2010-8-24 15:52:49')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 27,'路面机械','4',4,'admin','2010-8-24 15:53:05')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 28,'橡塑制品','5',5,'admin','2010-8-24 15:53:36','admin','2010-8-24 18:44:23')
INSERT [ZT_COM_ProductType] ([TypeID],[TypeName],[TypeNo],[TypeOrder],[CreateBy],[CreateDate]) VALUES ( 29,'缸套系列','6',6,'admin','2010-8-24 15:54:12')

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

INSERT [ZT_COM_RongYu] ([RongYuID],[Title],[ImgUrl],[Body],[RongYuTypeName],[RongYuTypeNo],[RongYuOrder],[CreateBy],[CreateDate]) VALUES ( 12,'文明单位','2010823110010.jpg','<P>本公司或得的荣誉</P><P>&nbsp;</P>','一般荣誉2','214',1,'admin','2010-8-23 11:00:10')

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

INSERT [ZT_COM_RongYuType] ([RongYuTypeID],[RongYuTypeName],[RongYuTypeNo],[RongYuTypeOrder],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 9,'一般荣誉2','214',1,'admin','2010-6-24 0:55:19','admin','2010-6-24 0:55:29')
INSERT [ZT_COM_RongYuType] ([RongYuTypeID],[RongYuTypeName],[RongYuTypeNo],[RongYuTypeOrder],[CreateBy],[CreateDate]) VALUES ( 10,'二班荣誉','erdh',2,'admin','2010-6-24 0:55:49')

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

INSERT [ZT_COM_WebMainInfo] ([ID],[Title],[WebURL],[CompanyName],[Address],[MailNum],[Mobile],[Fax],[Email],[QQ],[KeepPerson],[Telephone],[KeyWords],[Description],[ICP]) VALUES ( 1,'河南省辉县市矿山机械设备有限公司','http://www.dlkyjx.com','河南省辉县市矿山机械设备有限公司','河南省焦作市园林路中段','454150','15839121188','0391-3531183','hndeli@163.com','1103067667','陈思','0391-2621381','河南省焦作矿业机械设备有限公司','河南省焦作矿业机械设备有限公司','备案中')

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

INSERT [ZT_SYS_AdminInfo] ([AdminID],[AdminNo],[Password],[RoleNo],[IsLockedOut],[AdminName],[LastLoginDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 1,'admin','21232f297a57a5a743894a0e4a801fc3','admin','0','众拓网络管理员','2010-8-24 17:05:36','admin','2010-5-28 23:58:51')

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

INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow],[LastUpdateBy],[LastUpdateDate]) VALUES ( 460,'1000','系统管理','00','1','admin','2010-5-31 17:54:54')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 461,'1001','网站设置','1000','WebMainInfo.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 462,'1002','修改密码','1000','ChangePwd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 463,'1003','退出系统','1000','Login.aspx?action=logout','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 464,'1004','进入前台','1000','../Index.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 465,'1100','企业信息','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 466,'1101','企业信息列表','1100','CompanyInfoList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 467,'1102','企业信息添加','1100','CompanyInfoAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 468,'1103','企业信息修改','1100','CompanyInfoEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 469,'1104','企业信息删除','1100','CompanyInfoDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 470,'1200','新闻管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 471,'1201','新闻列表','1200','NewsList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 472,'1202','新闻添加','1200','NewsAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 473,'1203','新闻修改','1200','NewsEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 474,'1204','新闻删除','1200','NewsDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 475,'1205','类别列表','1200','NewsTypeList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 476,'1206','类别添加','1200','NewsTypeAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 477,'1207','类别修改','1200','NewsTypeEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 478,'1208','类别删除','1200','NewsTypeDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 479,'1300','产品管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 480,'1301','产品列表','1300','ProductList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 481,'1302','产品添加','1300','ProductAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 482,'1303','产品修改','1300','ProductEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 483,'1304','产品删除','1300','ProductDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 484,'1305','类别列表','1300','ProductTypeList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 485,'1306','类别添加','1300','ProductTypeAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 486,'1307','类别修改','1300','ProductTypeEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 487,'1308','类别删除','1300','ProductTypeDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 492,'1400','客户管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 493,'1401','客户列表','1400','CustomerList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 494,'1402','客户添加','1400','CustomerAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 495,'1403','客户修改','1400','CustomerEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 496,'1404','客户删除','1400','CustomerDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 497,'1500','日程管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 498,'1501','日程列表','1500','TaskList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 499,'1502','日程添加','1500','TaskAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 500,'1503','日程修改','1500','TaskEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 501,'1504','日程删除','1500','TaskDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 502,'1600','企业荣誉','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 503,'1601','荣誉列表','1600','RongYuList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 504,'1602','荣誉添加','1600','RongYuAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 505,'1603','荣誉修改','1600','RongYuEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 506,'1604','荣誉删除','1600','RongYuDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 507,'1605','类别列表','1600','RongYuTypeList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 508,'1606','类别添加','1600','RongYuTypeAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 509,'1607','类别修改','1600','RongYuTypeEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 510,'1608','类别删除','1600','RongYuTypeDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 511,'1700','信息反馈','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 512,'1701','留言信息列表','1700','LiuYanList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 513,'1702','留言信息详情','1700','LiuYanItem.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 514,'1703','留言信息删除','1700','LiuYanDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 515,'1704','留言信息回复','1700','LiuYanHuiFu.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 516,'1705','人才信息列表','1700','RenCaiList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 517,'1706','人才信息详情','1700','RenCaiItem.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 518,'1707','人才信息删除','1700','RenCaiDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 519,'1800','人才招聘','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 520,'1801','招聘列表','1800','ZhaoPinList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 521,'1802','招聘添加','1800','ZhaoPinAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 522,'1803','招聘修改','1800','ZhaoPinEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 523,'1804','招聘删除','1800','ZhaoPinDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 524,'1900','用户管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 525,'1901','用户列表','1900','AdminList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 526,'1902','用户添加','1900','AdminAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 527,'1903','用户修改','1900','AdminEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 528,'1904','用户删除','1900','AdminDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 529,'1905','角色列表','1900','RoleList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 530,'1906','角色添加','1900','RoleAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 531,'1907','角色修改','1900','RoleEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 532,'1908','角色删除','1900','RoleDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 533,'2000','菜单管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 534,'2001','菜单列表','2000','MenuList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 535,'2002','菜单添加','2000','MenuAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 536,'2003','菜单修改','2000','MenuEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 537,'2004','菜单删除','2000','MenuDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 538,'2100','日志管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 539,'2101','日志列表','2100','LogList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 540,'2102','日志删除','2100','LogDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow]) VALUES ( 541,'2200','链接管理','00','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 542,'2201','链接列表','2200','LianJieList.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 543,'2202','链接添加','2200','LianJieAdd.aspx','1')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 544,'2203','链接修改','2200','LianJieEdit.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow]) VALUES ( 545,'2204','链接删除','2200','LianJieDelete.aspx','0')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 546,'2300','优化管理','00','1','admin','2010-5-31 17:56:04','admin','2010-5-31 18:07:24')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 547,'2301','优化信息列表','2300','WebInfoList.aspx','1','admin','2010-5-31 17:56:58','admin','2010-5-31 17:59:10')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate]) VALUES ( 548,'2302','网页信息添加','2300','WebInfoAdd.aspx','1','admin','2010-5-31 18:00:42')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 549,'2303','优化信息修改','2300','WebInfoEdit.aspx','0','admin','2010-5-31 18:01:40','admin','2010-5-31 18:06:08')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 550,'2304','优化信息删除','2300','WebInfoDelete.aspx','0','admin','2010-5-31 18:02:17','admin','2010-5-31 18:03:27')
INSERT [ZT_SYS_ElementInfo] ([ElementID],[ElementCode],[ElementName],[ParentCode],[ElementLink],[ElementShow],[CreateBy],[CreateDate],[LastUpdateBy],[LastUpdateDate]) VALUES ( 551,'2305','优化信息查看','2300','WebInfoView.aspx','0','admin','2010-5-31 18:03:04','admin','2010-5-31 18:12:48')

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

INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 1,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-20 8:52:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 2,'新闻管理','成功','删除新闻','新闻标题：北京六环路天然气管线一期工程全线贯通,武陟县五大班子来我厂视察,焦作市益瑞镁合金有限公司年产5000吨阴级保护材料项目竣工剪彩仪式, 操作人：admin','127.0.0.1','admin','2010-8-20 8:54:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 3,'新闻管理','成功','删除新闻','新闻标题：国家金属腐蚀控制工程技术中心-莱钢分中心揭牌, 操作人：admin','127.0.0.1','admin','2010-8-20 8:55:10')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 4,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-21 10:07:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 5,'产品管理','成功','添加产品分类','分类名称：三班产品, 创建人：admin','127.0.0.1','admin','2010-8-21 10:07:25')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 6,'产品管理','成功','添加产品分类','分类名称：死板产品, 创建人：admin','127.0.0.1','admin','2010-8-21 10:07:41')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 7,'产品管理','成功','添加产品分类','分类名称：六班产品, 创建人：admin','127.0.0.1','admin','2010-8-21 10:08:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 8,'产品管理','成功','添加产品分类','分类名称：七版产品, 创建人：admin','127.0.0.1','admin','2010-8-21 10:08:22')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 9,'产品管理','成功','添加产品分类','分类名称：八班产品, 创建人：admin','127.0.0.1','admin','2010-8-21 10:08:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 10,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-21 10:11:06')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 11,'产品管理','成功','删除产品分类','分类名称：八班产品, 操作人：admin','127.0.0.1','admin','2010-8-21 10:11:16')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 12,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-21 11:37:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 13,'产品管理','成功','删除产品信息','产品名称：1, 操作人：admin','127.0.0.1','admin','2010-8-21 11:37:33')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 30,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 9:01:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 31,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 10:59:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 32,'荣誉管理','成功','删除荣誉','荣誉标题：13,1231,124, 操作人：admin','127.0.0.1','admin','2010-8-23 10:59:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 35,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 11:53:41')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 37,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 15:15:23')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 38,'产品管理','成功','删除产品分类','分类名称：一般产品,二班产品,三班产品,2,2,6, 操作人：admin','127.0.0.1','admin','2010-8-23 15:16:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 39,'产品管理','成功','添加产品分类','分类名称：螺杆机, 创建人：admin','127.0.0.1','admin','2010-8-23 15:19:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 40,'产品管理','成功','添加产品分类','分类名称：活塞机, 创建人：admin','127.0.0.1','admin','2010-8-23 15:19:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 41,'产品管理','成功','添加产品分类','分类名称：产品应用, 创建人：admin','127.0.0.1','admin','2010-8-23 15:19:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 42,'产品管理','成功','添加产品信息','产品名称：KAITEC 系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:23:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 52,'产品管理','成功','修改产品信息','产品名称：KAITEC 系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 16:04:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 53,'产品管理','成功','添加产品信息','产品名称：16, 操作人：admin','127.0.0.1','admin','2010-8-23 16:04:54')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 54,'产品管理','成功','添加产品信息','产品名称：17, 操作人：admin','127.0.0.1','admin','2010-8-23 16:05:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 55,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:11:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 56,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:11:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 57,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:13:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 58,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:13:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 59,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:13:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 60,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:14:43')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 61,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:15:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 62,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:15:48')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 63,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 16:32:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 64,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:32:32')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 65,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-23 16:38:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 66,'产品管理','成功','添加产品分类','分类名称：4, 创建人：admin','127.0.0.1','admin','2010-8-23 16:47:06')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 67,'产品管理','成功','添加产品分类','分类名称：5, 创建人：admin','127.0.0.1','admin','2010-8-23 16:47:13')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 68,'产品管理','成功','添加产品分类','分类名称：6, 创建人：admin','127.0.0.1','admin','2010-8-23 16:47:30')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 69,'产品管理','成功','修改产品分类','分类名称：是的发生的, 修改人：admin','127.0.0.1','admin','2010-8-23 16:47:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 70,'产品管理','成功','修改产品分类','分类名称：使得噶我饿不, 修改人：admin','127.0.0.1','admin','2010-8-23 16:47:59')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 71,'产品管理','成功','修改产品分类','分类名称：额头认为俄方, 修改人：admin','127.0.0.1','admin','2010-8-23 16:48:04')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 72,'产品管理','成功','修改产品分类','分类名称：是的发生的, 修改人：admin','127.0.0.1','admin','2010-8-23 16:48:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 73,'产品管理','成功','删除产品分类','产品分类名称：额头认为俄方, 删除人：admin','127.0.0.1','admin','2010-8-23 16:49:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 74,'产品管理','成功','删除产品分类','分类名称：使得噶我饿不,是的发生的, 操作人：admin','127.0.0.1','admin','2010-8-23 16:49:50')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 76,'产品管理','成功','修改产品分类','分类名称：工业活塞机, 修改人：admin','127.0.0.1','admin','2010-8-23 17:03:33')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 14,'产品管理','成功','删除产品信息','产品名称：11324124124, 操作人：admin','127.0.0.1','admin','2010-8-21 11:37:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 15,'产品管理','成功','添加产品信息','产品名称：1, 操作人：admin','127.0.0.1','admin','2010-8-21 11:38:08')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 16,'产品管理','成功','添加产品信息','产品名称：2, 操作人：admin','127.0.0.1','admin','2010-8-21 11:38:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 17,'产品管理','成功','添加产品信息','产品名称：3, 操作人：admin','127.0.0.1','admin','2010-8-21 11:38:40')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 18,'产品管理','成功','添加产品信息','产品名称：4, 操作人：admin','127.0.0.1','admin','2010-8-21 11:40:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 19,'产品管理','成功','添加产品信息','产品名称：5, 操作人：admin','127.0.0.1','admin','2010-8-21 11:40:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 20,'产品管理','成功','添加产品信息','产品名称：6, 操作人：admin','127.0.0.1','admin','2010-8-21 11:40:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 21,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-21 15:42:09')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 22,'产品管理','成功','删除产品分类','分类名称：七版产品, 操作人：admin','127.0.0.1','admin','2010-8-21 15:42:21')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 23,'产品管理','成功','删除产品分类','分类名称：死板产品,六班产品, 操作人：admin','127.0.0.1','admin','2010-8-21 15:42:59')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 24,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-21 15:44:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 25,'产品管理','成功','添加产品分类','分类名称：2, 创建人：admin','127.0.0.1','admin','2010-8-21 15:44:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 26,'产品管理','成功','添加产品分类','分类名称：2, 创建人：admin','127.0.0.1','admin','2010-8-21 15:45:01')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 27,'产品管理','成功','添加产品分类','分类名称：6, 创建人：admin','127.0.0.1','admin','2010-8-21 15:45:21')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 28,'产品管理','成功','添加产品分类','分类名称：7, 创建人：admin','127.0.0.1','admin','2010-8-21 15:45:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 29,'产品管理','成功','删除产品分类','分类名称：7, 操作人：admin','127.0.0.1','admin','2010-8-21 15:46:55')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 33,'荣誉管理','成功','添加荣誉','荣誉名称：文明单位操作人：admin','127.0.0.1','admin','2010-8-23 11:00:10')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 34,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 11:11:31')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 36,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 14:36:22')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 43,'产品管理','成功','添加产品信息','产品名称：柴油移动螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:36:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 44,'产品管理','成功','添加产品信息','产品名称：KAITAIN低压系列, 操作人：admin','127.0.0.1','admin','2010-8-23 15:38:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 45,'产品管理','成功','添加产品信息','产品名称：KAITEC低压系列, 操作人：admin','127.0.0.1','admin','2010-8-23 15:39:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 46,'产品管理','成功','添加产品信息','产品名称：电动移动螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:42:16')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 47,'产品管理','成功','添加产品信息','产品名称：KAITAIN 系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:43:34')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 48,'产品管理','成功','添加产品信息','产品名称：电动防爆螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:44:26')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 49,'产品管理','成功','修改产品信息','产品名称：电动防爆螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:47:19')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 50,'产品管理','成功','添加产品信息','产品名称：风冷固定螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:48:04')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 51,'产品管理','成功','添加产品信息','产品名称：水冷固定螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-23 15:49:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 75,'产品管理','成功','修改产品分类','分类名称：电动螺杆机, 修改人：admin','127.0.0.1','admin','2010-8-23 16:55:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 77,'产品管理','成功','添加产品分类','分类名称：矿用活塞机, 创建人：admin','127.0.0.1','admin','2010-8-23 17:14:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 78,'产品管理','成功','添加产品分类','分类名称：柴油螺杆机, 创建人：admin','127.0.0.1','admin','2010-8-23 17:15:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 79,'产品管理','成功','修改产品分类','分类名称：柴油螺杆机, 修改人：admin','127.0.0.1','admin','2010-8-23 17:15:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 80,'产品管理','成功','添加产品分类','分类名称：低压系列螺杆机, 创建人：admin','127.0.0.1','admin','2010-8-23 17:15:50')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 81,'产品管理','成功','添加产品分类','分类名称：KAITEC高端系列, 创建人：admin','127.0.0.1','admin','2010-8-23 17:16:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 82,'产品管理','成功','添加产品分类','分类名称：KAITAIN节能系列, 创建人：admin','127.0.0.1','admin','2010-8-23 17:16:25')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 83,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-23 17:18:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 84,'产品管理','成功','修改产品分类','分类名称：产品应用, 修改人：admin','127.0.0.1','admin','2010-8-23 17:18:38')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 85,'产品管理','成功','修改产品分类','分类名称：产品应用, 修改人：admin','127.0.0.1','admin','2010-8-23 17:18:47')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 86,'产品管理','成功','删除产品分类','产品分类名称：产品应用, 删除人：admin','127.0.0.1','admin','2010-8-23 17:19:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 87,'产品管理','成功','添加产品分类','分类名称：产品应用, 创建人：admin','127.0.0.1','admin','2010-8-23 17:19:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 88,'产品管理','成功','修改产品分类','分类名称：8产品应用, 修改人：admin','127.0.0.1','admin','2010-8-23 17:20:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 89,'产品管理','成功','删除产品分类','产品分类名称：8产品应用, 删除人：admin','127.0.0.1','admin','2010-8-23 17:20:49')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 90,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-24 9:47:14')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 91,'公司信息管理','成功','修改公司信息','信息标题：公司简介, 修改人：admin','127.0.0.1','admin','2010-8-24 9:49:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 92,'新闻管理','成功','删除新闻','新闻标题：长江大桥表面喷涂防腐工程耗资5000万元,茂名石化攻关防腐技术增效显著,管道完整性管理为管道“体检”,桥梁混凝土防腐涂装方案与腐蚀机理,新技术:电泳防腐防止金属腐蚀, 操作人：admin','127.0.0.1','admin','2010-8-24 9:50:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 93,'新闻管理','成功','添加新闻','新闻标题：祝贺辉县矿山机械设备有限公司网站开通, 创建人：admin','127.0.0.1','admin','2010-8-24 9:53:14')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 94,'新闻管理','成功','添加新闻','新闻标题：你们的机器真是省电, 创建人：admin','127.0.0.1','admin','2010-8-24 10:25:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 95,'新闻管理','成功','添加新闻','新闻标题：购买节能螺杆空压机，国家补贴10%, 创建人：admin','127.0.0.1','admin','2010-8-24 10:33:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 96,'新闻管理','成功','修改新闻','新闻标题：祝贺辉县矿山机械设备有限公司网站开通, 修改人：admin','127.0.0.1','admin','2010-8-24 10:38:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 102,'产品管理','成功','添加产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 15:15:10')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 103,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-24 15:50:41')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 104,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 15:50:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 105,'产品管理','成功','添加产品分类','分类名称：开山凿岩机械设备, 创建人：admin','127.0.0.1','admin','2010-8-24 15:51:48')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 106,'产品管理','成功','添加产品分类','分类名称：杭风气动工具, 创建人：admin','127.0.0.1','admin','2010-8-24 15:52:49')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 107,'产品管理','成功','添加产品分类','分类名称：路面机械, 创建人：admin','127.0.0.1','admin','2010-8-24 15:53:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 108,'产品管理','成功','添加产品分类','分类名称：香酥制品, 创建人：admin','127.0.0.1','admin','2010-8-24 15:53:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 109,'产品管理','成功','添加产品分类','分类名称：缸套系列, 创建人：admin','127.0.0.1','admin','2010-8-24 15:54:12')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 110,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 15:55:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 111,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 15:56:01')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 114,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-24 17:05:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 145,'产品管理','成功','添加产品信息','产品名称：KAITEC系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:18:00')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 146,'产品管理','成功','添加产品信息','产品名称：履带式露天潜孔钻车, 操作人：admin','127.0.0.1','admin','2010-8-24 18:19:17')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 147,'产品管理','成功','修改产品信息','产品名称：履带式露天潜孔钻车, 操作人：admin','127.0.0.1','admin','2010-8-24 18:19:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 148,'产品管理','成功','添加产品信息','产品名称：潜孔钻机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:21:03')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 149,'产品管理','成功','添加产品信息','产品名称：手持式凿岩机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:23:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 150,'产品管理','成功','添加产品信息','产品名称：气腿式凿岩机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:24:21')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 151,'产品管理','成功','添加产品信息','产品名称：气动工具, 操作人：admin','127.0.0.1','admin','2010-8-24 18:33:54')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 152,'产品管理','成功','修改产品信息','产品名称：潜孔钻机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:34:06')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 153,'产品管理','成功','修改产品信息','产品名称：手持式凿岩机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:34:14')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 154,'产品管理','成功','修改产品信息','产品名称：气腿式凿岩机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:34:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 155,'产品管理','成功','添加产品信息','产品名称：锚杆钻机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:35:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 156,'产品管理','成功','添加产品信息','产品名称：捣固机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:36:54')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 157,'产品管理','成功','添加产品信息','产品名称：气铲, 操作人：admin','127.0.0.1','admin','2010-8-24 18:37:59')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 158,'产品管理','成功','修改产品信息','产品名称：捣固机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:38:36')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 159,'产品管理','成功','修改产品信息','产品名称：气铲, 操作人：admin','127.0.0.1','admin','2010-8-24 18:38:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 160,'产品管理','成功','添加产品信息','产品名称：气砂轮机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:42:12')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 161,'产品管理','成功','修改产品信息','产品名称：气砂轮机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:42:29')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 162,'产品管理','成功','修改产品分类','分类名称：橡塑制品, 修改人：admin','127.0.0.1','admin','2010-8-24 18:44:23')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 97,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-24 14:48:16')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 98,'产品管理','成功','删除产品信息','产品名称：1,2,3,4,5,6,KAITEC 系列螺杆机,柴油移动螺杆机,KAITAIN低压系列,KAITEC低压系列, 操作人：admin','127.0.0.1','admin','2010-8-24 15:01:20')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 99,'产品管理','成功','删除产品信息','产品名称：电动移动螺杆机,KAITAIN 系列螺杆机,电动防爆螺杆机,风冷固定螺杆机,水冷固定螺杆机,16,17, 操作人：admin','127.0.0.1','admin','2010-8-24 15:01:24')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 100,'产品管理','成功','删除产品分类','分类名称：电动螺杆机,工业活塞机,矿用活塞机,柴油螺杆机,KAITEC高端系列,KAITAIN节能系列,低压系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 15:02:05')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 101,'产品管理','成功','添加产品分类','分类名称：开山空压机, 创建人：admin','127.0.0.1','admin','2010-8-24 15:02:49')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 112,'登陆退出','成功','系统登陆','管理员登陆系统','127.0.0.1','admin','2010-8-24 16:01:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 113,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 16:01:46')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 143,'产品管理','成功','添加产品信息','产品名称：KAITAIN系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:09:28')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 144,'产品管理','成功','修改产品信息','产品名称：KAITAIN系列螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:13:33')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 115,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:16:44')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 116,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:21:37')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 117,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:25:01')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 118,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:25:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 119,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:26:31')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 120,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:28:30')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 121,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:29:04')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 122,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:30:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 123,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:31:35')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 124,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:34:43')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 125,'产品管理','成功','添加产品信息','产品名称：水冷固定式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:36:57')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 126,'产品管理','成功','修改产品信息','产品名称：水冷固定式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:37:27')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 127,'产品管理','成功','添加产品信息','产品名称：开山柴油移动式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:39:58')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 128,'产品管理','成功','修改产品信息','产品名称：开山电固式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:40:56')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 129,'产品管理','成功','修改产品信息','产品名称：水冷固定式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:41:11')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 130,'产品管理','成功','修改产品信息','产品名称：开山柴油移动式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:41:26')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 131,'产品管理','成功','添加产品信息','产品名称：电动移动式螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:45:15')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 132,'产品管理','成功','添加产品信息','产品名称：电动防爆螺杆机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:48:17')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 133,'产品管理','成功','添加产品信息','产品名称：KA系列活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:50:40')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 134,'产品管理','成功','添加产品信息','产品名称：KB中压系列活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:52:23')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 135,'产品管理','成功','添加产品信息','产品名称：中压组合型活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:53:39')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 136,'产品管理','成功','修改产品信息','产品名称：中压组合型活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:53:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 137,'产品管理','成功','添加产品信息','产品名称：KS系列活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:55:43')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 138,'产品管理','成功','修改产品信息','产品名称：KS系列活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:55:52')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 139,'产品管理','成功','添加产品信息','产品名称：KJ系列活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:57:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 140,'产品管理','成功','添加产品信息','产品名称：矿用大型活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 17:59:32')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 141,'产品管理','成功','添加产品信息','产品名称：矿用小型活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:00:51')
INSERT [ZT_SYS_LogInfo] ([LogID],[LogType],[OperatorType],[FuncName],[OperatorInfo],[LoginIP],[CreateBy],[CreateDate]) VALUES ( 142,'产品管理','成功','添加产品信息','产品名称：水冷往复活塞式空压机, 操作人：admin','127.0.0.1','admin','2010-8-24 18:02:27')

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

INSERT [ZT_SYS_RoleInfo] ([RoleID],[RoleNo],[RoleName],[RoleElements],[LastUpdateBy],[LastUpdateDate],[Status]) VALUES ( 1,'admin','系统管理员','1001,1002,1003,1004,1101,1102,1103,1104,1201,1202,1203,1204,1205,1206,1207,1208,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1401,1402,1403,1404,1501,1502,1503,1504,1601,1602,1603,1604,1605,1606,1607,1608,1701,1702,1703,1704,1705,1706,1707,1801,1802,1803,1804,1901,1902,1903,1904,1905,1906,1907,1908,2001,2002,2003,2004,2101,2102,2201,2202,2203,2204,2301,2302,2303,2304,2305','admin','2010-5-31 18:06:40','1')

SET IDENTITY_INSERT [ZT_SYS_RoleInfo] OFF
