<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="WebInfoView.aspx.cs" Inherits="SysManage_WebInfoView" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 网页关键字信息</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到关键字管理专区 —— <a href="WebInfoList.aspx">返回网页关键词列表</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table border="0" cellpadding="5" cellspacing="1" style="width: 718px; background-color:#bbdde5; font: 12px 宋体;">
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">关键字ID：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblID" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">文件路径：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblFilePath" runat="server"></asp:Label></td>
                </tr>                                        
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">链接地址：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblWebURL" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">标&nbsp;&nbsp;&nbsp;&nbsp;题：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblTitle" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">关&nbsp;键&nbsp;字：</td>
                    <td style="text-align:left; background-color: #f4fafb;"><asp:Label ID="lblKeyWords" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">网页描述：</td>
                    <td style="text-align:left; background-color: #f4fafb;"><asp:Label ID="lblDescription" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>  
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>