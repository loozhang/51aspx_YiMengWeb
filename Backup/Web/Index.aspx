<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <link href="yiyan.css" rel="stylesheet" type="text/css" />
      <title><%=Title%></title>
      <meta name="keywords" content="<%=KeyWords %>" />
  <meta name="description" content="<%=Description%>" /> 
      <style type="text/css">
          
          
          .style3
          {
              width: 208px;
              height: 97px;
          }
          .style4
          {
              overflow: hidden;
              width: 970px;
              height: 160px;
          }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<table border="0" cellpadding="0" cellspacing="0" style="width: 1003px; background-image :url(images/_06.jpg)">
    <tr>
        <td>
            <table border="0" cellpadding="0" cellspacing="0" style="background-image: url(images/top_02.jpg); width: 1003px; height :80px">
                <tr>
                    <td align ="left" style ="background-image :url(images/logo_01.jpg) ; width :414px;height:80px" > </td>
                    <td align="left" style="width: 304px ; background-image :url(images/logo_02.jpg)"></td>
                    <td style ="background-image :url(images/_02.jpg); width :284px;height:80px">
                    <table border ="0" cellpadding ="0" cellspacing ="0" style ="width :284px; height :80px" >
                      <tr style ="height :50px"> <td style="height:32px; margin-right :10px"  ><a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=PageUrl%>');" href="#">
                          <font  style="color: #FFFFFF">设为主页</font></a>&nbsp; |&nbsp; <a onclick=" window.external.addFavorite('<%=PageUrl%>','<%=CompanyInfo%>')" href="#"><font color="#FFFFFF">加入收藏</font></a>&nbsp; |&nbsp; <a href="ContactUs.aspx">
                          <font color="#FFFFFF" >联系我们</font></a></td></tr>
                      <tr style ="height :30px"><td style ="color: #FFFFFF;"><div id="linkweb"></div><script type="text/javascript" language="javascript">setInterval("linkweb.innerHTML=new Date().toLocaleString()+' '.charAt(new Date().getDay());",1000);</script> </td> </tr>
                     </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr > <td style ="background-image :url(images/_03.jpg) ;width:1003px;height:24px"> </td> </tr>
    <tr style ="background-image :url(images/_05.jpg) ; width :1003px;height:34px"> 
       <td>  
       <table  border="0" cellpadding="0" cellspacing="0" style="width: 1003px"> 
        <td style="height :34px ;width:50px"> </td>
        <td style ="height :34px;width:90px"> <a href="Index.aspx"  style="font-size: 14px; font-weight: bold; color: #FFFFFF">公司首页</a></td>
        <td style="height :34px; width:90px"><a href="CompanyInfo.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">公司简介</a> </td>
        <td style="height :34px; width:90px"><a href="News.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">公司新闻</a> </td>
        <td style="height :34px; width:90px"><a href="Product.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">产品展示</a> </td>
        <td style="height :34px; width:90px"> <a href="RongYu.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">企业荣誉</a></td>
        <td style="height :34px; width:90px"> <a href="Sell.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">销售网络</a></td>
        <td style="height :34px; width:90px"><a href="LiuYan.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">在线留言</a> </td>
        <td style="height :34px; width:90px"><a href="ZhaoPin.aspx" style="font-size: 14px; font-weight: bold; color: #FFFFFF">人才招聘</a> </td>
        <td style="height :34px ;width:90px"><a href="ContactUs.aspx"style="font-size: 14px; font-weight: bold; color: #FFFFFF">联系我们</a> </td>
        <td style="height :34px ;width:143px"> </td>
       </table>
       </td>
     </tr>
     <tr>
        <td style="width:1003px; height:239px;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1003" height="280">
        <param name="movie" value="huixianflash.swf"/>
        <param name="quality" value="high"/>
        <param name="wmode" value="transparent" />
        <embed src="ban.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1003" height="280"></embed>
        </object>
        </td>
     </tr>
    <tr>    
        <td style="height:4px;width:1003px; background-image :url(images/_07.jpg)"></td>
    </tr>
    <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 1003px">
            <tr>
                <td style="width: 17px ;height:341px ; background-image :url(images/_06.jpg)"></td>
                <td valign="top" >
                   <table border="0" cellpadding="0" cellspacing="0" style="width: 219px;">
                        <tr style ="width :219px ; height :39px;">
                           <td align ="left" class="bt1" style =" background-image :url(images/huixian_09.jpg);width :218px; height :39px; padding-left:30px; font-size: 14px; font-weight: bold; color: #FFFFFF;"> 产品类别</td>
                        </tr>
                       <tr >
                            <td style="background-image:url(images/huixian_17.jpg); padding-left :20px ; height :187px;color: #FFFFFF; " align="center">
                                <asp:DataList ID="DLProductType" runat="server">
                                <ItemTemplate>
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 200px;color: #FFFFFF;">
                                        <tr style ="color: #FFFFFF;">
                                            <td align="left" style="height:30px; width:18px;color: #FFFFFF;"></td>
                                            <td align="left" style ="color: #FFFFFF;"><a style ="color: #FFFFFF;" href="ProductType.aspx?TypeID=<%#Eval("TypeID") %>"><%#Eval("TypeName")%></a></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                        <tr>
                            <td align ="left" style ="background-image :url(images/_14.jpg) ; height:18px; width :219px;"> </td>
                        </tr>
                        <tr>
                            <td>
                               <table border ="0" cellpadding ="0" cellspacing ="0" style="width :219px;height:97px;"> 
                                  <tr> 
                                     <td style ="background-image :url(images/_15.jpg); width :8px;height:97px"> 
                                     </td>
                                     <td> 
                                        <table border ="0" cellpadding ="0" cellspacing ="0" class="style3" >
                                            <tr><td style ="height:40px;width:207px"><a href ="ZhaoPin.aspx" ><img alt ="" src ="images/huixian_28.jpg"  /></a></td> </tr>
                                            <tr><td style ="background-image :url(images/huixian_33.jpg);height:7px; width :207px"></td></tr>
                                            <tr><td style ="height:38px;width:207px"> <a href = "RongYu.aspx" ><img  alt ="" src ="images/huixian_34.jpg" style="border :0px"  /></a></td> </tr>
                                            <tr><td style ="background-image :url(images/_35.jpg);height:12px;width:207px"></td> </tr>
                                        </table>
                                     </td>
                                     <td style ="background-image :url(images/_28.jpg);width:4px;height:97px">
                                     </td>
                                  </tr>
                               </table>
                            </td>
                        </tr>                       
</table>  
                
 </td>
              <td style="width: 13px ; height :341px; background-image :url(images/_06.jpg)"></td>
              <td valign="top" style ="width :490px">
                  <table border ="0" cellpadding ="0" cellspacing ="0" > 
                     <tr><td  align ="left"style ="background-image :url(images/_13.jpg);width:490px; height :34px; padding-left:25px; color: #FFFFFF; font-weight: bold; font-size: 14px;"> 公司简介</td> </tr>
                      <tr> 
                         <td  style ="background-image :url(images/_06.jpg);width:490px; height :307px; color :#FFFFFF">
                              <table border ="0" cellpadding ="0" cellspacing ="0" style="width :490px; height :307px; color :#FFFFFF" >
                                  <tr>
                                        <td align="left" style="line-height: 28px; font-size:12px;color: #FFFFFF; font-family:宋体;"><img alt="" src="images/_18-21.jpg" class="tu-z" />
                                            <asp:Label ID="lblBody" runat="server" CssClass ="newlal "></asp:Label> 【<a href="CompanyInfo.aspx" style="color:#ff0000;">查看详细内容</a>】</td>
                                    </tr>
                               </table>
                         </td>
                      </tr>
                  </table>
                  
                  </td>
              <td style="width: 13px ;height:341px ; background-image :url(images/_06.jpg)">
              </td>
              <td  valign ="top">
                 <table  border ="0" cellpadding ="0" cellspacing ="0"  >
                    <tr><td align ="left"style ="background-image :url(images/_11-13.jpg);height:27px; width :230px;padding-left:30px; color: #FFFFFF; font-size: 14px; font-weight: bold;" > 联系我们 </td></tr>
                    <tr>
                      <td style ="background-image :url(images/huixian_16.jpg);height:223px ; width:230px"> 
                        <table  border ="0" cellpadding ="0" cellspacing ="0" style ="padding-left :20px;" > 
                            <tr>
                                <td align="left" style="height: 32px; color: #FFFFFF;">
                                    地&nbsp; 址：<asp:Label ID="lblLeftAddress" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 32px; color: #FFFFFF;">
                                    联系人：<asp:Label ID="lblLeftKeepPerson" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 32px;color: #FFFFFF;">
                                    手&nbsp; 机：<asp:Label ID="lblLeftMobile" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 32px;color: #FFFFFF;">
                                    电&nbsp; 话：<asp:Label ID="lblLeftTelephone" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 32px;color: #FFFFFF;">
                                    传&nbsp; 真：<asp:Label ID="lblLeftFax" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 32px;color: #FFFFFF;">
                                    邮&nbsp; 箱：<asp:Label ID="lblLeftEmail" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 32px;color: #FFFFFF;">
                                    邮&nbsp; 编：<asp:Label ID="lblLeftMailNum" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                       <td > 
                          <table  border ="0" cellpadding ="0" cellspacing ="0" > 
                              <tr  valign ="top"> 
                               <td style ="width :4px; height: 91px; background-image :url(images/_29.jpg)"> </td>
                               <td style ="width :214px;height:91px" valign ="top" >
                                 <table  border ="0" cellpadding ="0" cellspacing ="0" > 
                                   <tr> 
                                   <td style ="width:214px;height:62px"><a href = "ContactUs.aspx" ><img alt ="" src ="images/huixian_31.jpg" /></a></td>
                                   </tr>
                                   <tr>
                                    <td style ="width:214px;height:29px; background-image :url(images/_34-27.jpg)"></td>
                                   </tr>
                                 </table>
                                </td>
                               <td style ="width :12px; height:91px; background-image :url(images/huixian_32.jpg)"> </td>
                             </tr>
                          </table>
                       </td>
                    </tr>
                 </table>
              </td>
              <td style ="width:20px ;height:341px; background-image :url(images/_10-14.jpg)"></td>
           </tr>
    </table>    
    </td>
    </tr>
    <tr>
       <td > 
         <table  border ="0" cellpadding ="0" cellspacing ="0" >
               <td style ="background-image :url(images/_06.jpg); width :16px"></td>
               <td align ="left" class="bt1" style =" background-image :url(images/huixian_09.jpg);width :200px; height :39px; padding-left:30px; font-size: 14px; font-weight: bold; color: #FFFFFF;"> 产品展示</td>          
               <td style ="background-image :url(images/_06.jpg); width :12px"></td>
               <td style ="width :785px; background-image :url(images/_06.jpg)"> </td>
          </table>
       </td>
    </tr>
    <tr>
                            <td style ="background-image:url(images/huixian_52.jpg)">
                                <div id="demo" align="center" class="style4" > 
                                    <table align="left" border="0" cellpadding="0" cellspacing="0"> 
                                        <tr> 
                                            <td id="demo1" valign="top"> 
                                                <asp:Repeater ID="RPProduct" runat="server">
                                                <ItemTemplate>
                                                <table border="0" align="left" cellpadding="0" cellspacing="0" class="tu-tc"> 
                                                    <tr> 
                                                        <td>
                                                        <a href='ProductView.aspx?ProductID=<%#Eval("ProductID") %>'>
                                                        <img style="height: 134px; border:0px;" alt='<%#Eval("ProductName") %>' src='SysManage/IMG/<%#Eval("ProductImgUrl") %>'></a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td style="height:20px;color: #FFFFFF;"><%#Eval("ProductName")%></td>
                                                    </tr>
                                                </table>
                                                </ItemTemplate>
                                                </asp:Repeater>
                                            </td> 
                                            <td id="demo2" valign="top"></td>
                                        </tr>
                                    </table> 
                                </div> 
                                <script type="text/javascript" language="javascript"> 
                                var speed=1 
                                demo2.innerHTML=demo1.innerHTML 
                                function Marquee(){ 
                                if(demo2.offsetWidth-demo.scrollLeft<=0) 
                                demo.scrollLeft-=demo1.offsetWidth 
                                else{ 
                                demo.scrollLeft++ 
                                } 
                                } 
                                var MyMar=setInterval(Marquee,speed) 
                                demo.onmouseover=function() {clearInterval(MyMar)} 
                                demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)} 
                                </script>
                   </td>
              </tr>
    <tr>
            <td align="center" style="height:70px; background-image :url(images/_60.jpg)">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 700px">
                    <tr>
                        <td style="height:25px;color: #FFFFFF;" align="center">Copyriht &copy; 2009--<%=ThisYear%> <asp:Label ID="lblEndCompanyName" runat="server"></asp:Label> 地址：<asp:Label ID="lblEndAddress" runat="server"></asp:Label>  <asp:Label ID="lblEndICP" runat="server"></asp:Label> <script type="text/javascript" src="http://s70.cnzz.com/stat.php?id=1825907&web_id=1825907&show=pic" language="JavaScript" charset="gb2312"></script></td>
                    </tr>
                    <tr>
                        <td style="height:25px;color: #FFFFFF;" align="center">电话：<asp:Label ID="lblEndTelephone" runat="server"></asp:Label> 传真：<asp:Label ID="lblEndFax" runat="server"></asp:Label> 邮箱：<asp:Label ID="lblEndEmail" runat="server"></asp:Label> 全程策划：<a style ="color: #FFFFFF;" href="http://www.17kt.net" target="_blank">群拓网络</a> <a style ="color: #FFFFFF;" href="SysManage/Login.aspx" target="_blank">后台管理</a></td>
                    </tr>
                </table>
            </td>
   </tr>
 </table>
    </div>
    </form>
</body>
</html>
