<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="SysManage_Main" Title="众拓网络 - 企业网站后台管理系统 - 首页"%>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网络 - 企业网站后台管理系统</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 首页</h1>
        <div class="form-div">
            <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td style="width: 50px;"><img alt="" height="22" src="Images/icon_search.gif" width="26px" border="0px"/></td>
                    <td style="width: 70px;">当前用户：</td>
                    <td style="width: 120px;"><asp:Label ID="lblAdminName" runat="server"></asp:Label></td>
                    <td style="width: 70px;">用户角色：</td>
                    <td style="width: 120px;"><asp:Label ID="lblRoleName" runat="server" Font-Size="12px"></asp:Label></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table style="vertical-align:middle;text-align:center;height: 320px;">
            <tr><td>欢迎使用众拓网站后台管理系统</td></tr>
            </table> 
        </div>
        <uc1:End ID="End1" runat="server" />
        <script type="text/javascript">
        parent.frames['header-frame'].document.getElementById('load-div').style.display='none';
        </script>
     </form>            
  </body>
</html>
          



