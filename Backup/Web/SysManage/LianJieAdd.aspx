﻿<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="LianJieAdd.aspx.cs" Inherits="SysManage_LianJieAdd" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
    <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 友情链接添加</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style=" width:300px;" align="left">欢迎来到链接管理专区——<a href="LianJieList.aspx">返回链接列表</a></td> 
                    </tr>
            </table>
        </div>
        <div class="main-div">
            <table style="width: 718px; background-color:#bbdde5; font: 12px 宋体;" border="0" cellpadding="3" cellspacing="1">
                <tr>
                    <td colspan="2" style="height:25px; background-color:#ddeef2; font-weight:bold;">
                        <asp:Label ID="bt" runat="server"></asp:Label>
                        <asp:Label ID="yuantu" runat="server" Visible="False"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height:25px; background-color:#ffffff;">链接标题：</td>
                    <td style="width:500px; text-align: left; background-color:#ffffff;">
                        <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" height:25px; background-color:#ffffff;">链接地址：</td>
                    <td style="text-align: left; background-color:#ffffff;"><asp:TextBox ID="txtLinkUrl" runat="server" Width="300px"></asp:TextBox> (http://)</td>
                </tr>
                <tr>
                    <td style="height:25px; background-color:#ffffff;">链接图片：</td>
                    <td style="text-align: left; background-color:#ffffff;">
                        <asp:FileUpload ID="txtImgUrl" runat="server" Width="300px" /></td>
                </tr>
                <tr>
                    <td style="height:25px; background-color:#ffffff;">链接排序：</td>
                    <td style="text-align: left; background-color:#ffffff;"><asp:TextBox ID="txtLinkOrder" runat="server" Width="60px" autocomplete="off"  OnKeyPress="if(((event.keyCode>=48)&&(event.keyCode <=57))) {event.returnValue=true;} else{event.returnValue=false;}"  MaxLength="5"></asp:TextBox> *必须为数字</td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 30px;background-color:#ffffff;">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click"
                            Text="提    交" Width="80px" />
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