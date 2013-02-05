<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="NewsTypeEdit.aspx.cs" Inherits="SysManage_NewsTypeEdit" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 新闻类别编辑</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到新闻类别专区 —— <a href="NewsTypeList.aspx">返回新闻类别列表</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table cellpadding="3" cellspacing="1" border="0" style="background-color:#bbdde5; width:400px;font: 12px 宋体;" >
                <tr>
                    <td colspan="2" style="font-weight: bold; height: 25px; background-color: #ddeef2">
                        <asp:Label ID="bt" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height:25px;background-color:#ffffff; width:100px;">类别标题：</td>
                    <td style="background-color:#ffffff;" align="left"><asp:TextBox ID="txtNewsTypeName" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height:25px;background-color:#ffffff; width:100px;">类别编号：</td>
                    <td style="background-color:#ffffff;" align="left"><asp:TextBox ID="txtNewsTypeNo" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color:#ffffff; height: 30px;">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click"
                            Text="提    交" Width="80px" />&nbsp;
                        <asp:Button ID="btnReset" runat="server" CssClass="button" OnClick="btnReset_Click"
                            Text="重    置" Width="80px" />
                    </td>
                </tr>
            </table>  
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>