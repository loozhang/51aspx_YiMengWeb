<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="SysManage_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网络 - 企业网站后台管理系统</title>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-style-type" content="text/css" />    
    <!--CSS-->   
    <link href="CSS/admin.css" rel="stylesheet" type="text/css" />

    <!--JavaScript-->
    <script src="" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
     <table border="0px" cellpadding="0px" cellspacing="0px" style="background-color:#278296;width:100%; height:60px;">
        <tr>
          <td align="left" style="width:180px;"><img alt="" src="Images/zhongtuo.jpg" height="56px" width="180px" /></td>
          <td valign="top" align="right">
          <table border="0" cellpadding="0" cellspacing="0" width="400px" class="top-dh">
            <tr>
               <td style="height:30px;" align="left">
               <a href="javascript:window.top.frames['main-frame'].document.location.reload()" onclick="javascript:parent.frames['header-frame'].document.getElementById('load-div').style.display='';">刷新右边</a>
               | <a href="javascript:window.top.frames['menu-frame'].document.location.reload()" onclick="javascript:parent.frames['header-frame'].document.getElementById('load-div').style.display='';">刷新菜单</a> 
               | <asp:LinkButton ID="btnLoginOut" runat="server" onclick="btnLoginOut_Click">退出登陆</asp:LinkButton> 
               | <a href="../Index.aspx" target="_blank">预览首页</a> 
               | <a href="http://www.17kt.net" target="_blank">进入众拓网络网站</a>
               </td>
            </tr>
            <tr>
              <td style="height:30px;" align="left"><div id="load-div" style="display: none; color: #ff9900; text-align: right;"><img style="vertical-align: middle" height="16" alt="正在处理您的请求..." src="Images/top_loader.gif" width="16"/>正在处理您的请求...</div></td>
            </tr>
          </table>
          </td>
        </tr>
        <tr>
          <td colspan="2" style="background-color:#80bdcb; height:10px;"></td>
        </tr>
    </table> 
    </form>
    </body>
    </html>

