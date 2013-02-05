<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="LiuYanItem.aspx.cs" Inherits="SysManage_LiuYanItem" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">    
    <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 留言详细信息</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到留言管理专区 —— <a href="LiuYanList.aspx">返回留言列表</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table border="0" cellpadding="5" cellspacing="1" style="width: 718px; background-color:#bbdde5; font: 12px 宋体;">
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">留言主题：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblMainInfo" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">内&nbsp;&nbsp;&nbsp;&nbsp;容：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblBody" runat="server"></asp:Label></td>
                </tr>                                        
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblName" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px; background-color: #ddeef2;">性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                    <td style="width: 600px;text-align:left; background-color: #f4fafb;"><asp:Label ID="lblSex" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">手机号码：</td>
                    <td style="text-align:left; background-color: #f4fafb;"><asp:Label ID="lblMobile" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">电&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
                    <td style="text-align:left; background-color: #f4fafb;"><asp:Label ID="lblTelephone" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">传&nbsp;&nbsp;&nbsp;&nbsp;真：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblFax" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">电子邮件：</td>
                    <td style="text-align:left; background-color: #f4fafb;"><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">单位名称：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblCompanyName" runat="server"></asp:Label></td>
                </tr>
                
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">通讯地址：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblAddress" runat="server"></asp:Label></td>
                </tr>                   
                
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">邮&nbsp;&nbsp;&nbsp;&nbsp;编：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblMailNum" runat="server"></asp:Label></td>
                </tr>
                
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">审核情况：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblIsIndex" runat="server"></asp:Label></td>
                </tr>                       
                
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">回复内容：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblReply" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">回复时间：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="lblReplyTime" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="height: 20px; background-color: #ddeef2;">留言时间：</td>
                    <td style="text-align: left; background-color: #f4fafb;"><asp:Label ID="CreateDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 20px; text-align:center; background-color: #f4fafb;">
                        <asp:Button ID="btnIsIndex" Text="审核通过" CssClass="button" runat="server" OnClick="btnIsIndex_Click" Width="80px"/>
                        &nbsp;
                        <asp:Button ID="btnIsNoIndex" Text="审核不通过" CssClass="button" runat="server" OnClick="btnIsNoIndex_Click" Width="80px"/>
                    </td>
                </tr>
            </table>
        </div>  
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>