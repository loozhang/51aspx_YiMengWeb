<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="LiuYanHuiFu.aspx.cs" Inherits="SysManage_LiuYanHuiFu" Title="众拓网站后台管理中心" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><span><a href="Main.aspx">众拓网站后台管理中心</a> - 留言回复 </span></h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style=" width:300px;" align="left">欢迎来到留言管理专区 —— <a href="LiuYanList.aspx">返回留言列表</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table border="0" cellpadding="2" cellspacing="1" style="width: 718px; background-color:#bbdde5; font: 12px 宋体;">
                <tr>
                    <td colspan="2" style="font-weight: bold; background-color: #ddeef2; height:25px;">回复留言</td>
                </tr>
                <tr>
                    <td style="width:100px; background-color:#ffffff; height: 25px;">回复内容：</td>
                    <td style="width:600px; background-color:#ffffff; text-align:left; ">
                        <iframe id="Iframe1" src="eWebEditor/ewebeditor.htm?id=txtReply&style=coolblue" frameborder="0" scrolling="no" width="550" height="350"></iframe>
                        <asp:TextBox ID="txtReply" runat="server" BorderColor="White" BorderWidth="1px" ForeColor="White" Height="1px" Width="1px"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 30px;background-color:#ffffff;">
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

