<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="AdminEdit.aspx.cs" Inherits="SysManage_AdminEdit" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
       <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 管理员信息编辑</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="width:718px;font: 12px 宋体;color: #192e32;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;">欢迎来到用户管理专区—— <a href="AdminList.aspx">返回用户列表</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table cellpadding="3" cellspacing="1" border="0" style="background-color:#bbdde5; width:400px;font: 12px 宋体;color: #192e32;">
                <tr>
                    <td colspan="2" style="font-weight: bold; height: 25px; background-color: #ddeef2">修改管理员信息</td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">用户名：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:Label ID="lblAdminNo" runat="server" Text=""></asp:Label></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">密&nbsp;&nbsp;码：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="120px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">用户角色：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:DropDownList ID="txtRole" runat="server" Width="120px"></asp:DropDownList></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">锁定账号：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:DropDownList ID="txtIsLockedOut" runat="server">
                        <asp:ListItem Value="0">否</asp:ListItem>
                        <asp:ListItem Value="1">是</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>    
                <tr>
                    <td colspan="2" style="background-color:#ffffff; height: 30px">
                    <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click" Text="提    交" Width="80px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" CssClass="button" OnClick="btnReset_Click" Text="重    置" Width="80px" />
                    </td>
                </tr>
            </table>
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>

