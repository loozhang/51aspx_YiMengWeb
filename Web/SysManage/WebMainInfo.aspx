<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="WebMainInfo.aspx.cs" Inherits="SysManage_WebMainInfo" Title="众拓网络 - 企业网站后台管理系统 - 网站信息设置" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 网站信息设置</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="width:718px;font: 12px 宋体;color: #192e32;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到网站信息设置专区</td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table cellpadding="3" cellspacing="1" border="0" style="background-color:#bbdde5; width:718px;font: 12px 宋体;color: #192e32;">
                <tr>
                    <td colspan="2" style="font-weight: bold; height: 25px; background-color: #ddeef2">网站信息设置</td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">网站标题：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtTitle" runat="server" Width="400px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">网站网址：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtWebURL" runat="server" Width="400px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">公司名称：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtCompanyName" runat="server" Width="400px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">公司地址：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtAddress" runat="server" Width="400px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">公司邮编：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtMailNum" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">公司电话：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtTelephone" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">公司传真：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtFax" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style=" background-color:#ffffff; height: 25px;">公司邮箱：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtEmail" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">联 系 人：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtKeepPerson" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">手　　机：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtMobile" runat="server" Width="260px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">联系 QQ：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtQQ" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">关 键 字：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtKeyWords" runat="server" Width="400px" Height="70px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>  
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">网站描述：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtDescription" runat="server" Width="400px" Height="70px" TextMode="MultiLine"></asp:TextBox></td>
                </tr> 
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">ICP 备案：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtICP" runat="server" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color:#ffffff; height: 30px">
                    <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click" Text="提    交" Width="80px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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



