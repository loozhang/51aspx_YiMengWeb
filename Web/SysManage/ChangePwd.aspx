<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="SysManage_ChangePwd" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 修改密码</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="width:718px;font: 12px 宋体;color: #192e32;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;">欢迎来到用户管理专区——用户密码修改</td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table cellpadding="2" cellspacing="1" border="0" style="background-color:#bbdde5; width:400px;font: 12px 宋体;">
                <tr>
                    <td colspan="2" style="font-weight: bold; height: 25px; background-color: #ddeef2">修改密码</td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px; width:100px;">用户名：</td>
                    <td style=" background-color:#ffffff;width:300px;" align="left"><asp:Label ID="lblAdminNo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">原密码：</td>
                    <td style=" background-color:#ffffff;" align="left"><asp:TextBox ID="txtOldPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">新密码：</td>
                    <td style=" background-color:#ffffff;" align="left"><asp:TextBox ID="txtNewPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">新密码：</td>
                    <td  style=" background-color:#ffffff;" align="left"><asp:TextBox ID="txtOkNewPwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style=" background-color:#ffffff; height: 30px">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click"
                            Text="确    认" Width="80px" />
                        <asp:Button ID="btnReset" runat="server" CssClass="button" OnClick="btnReset_Click"
                            Text="重    置" Width="80px" /></td>
                </tr>
            </table>
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>
