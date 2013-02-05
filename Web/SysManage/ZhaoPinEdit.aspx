<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="ZhaoPinEdit.aspx.cs" Inherits="SysManage_ZhaoPinEdit" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1>
           <span><a href="Main.aspx">众拓网站后台管理中心</a> - 招聘信息编辑 </span>
        </h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到招聘管理专区 —— <a href="ZhaoPinList.aspx">返回招聘列表</a></td>  
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table cellpadding="3" cellspacing="1" border="0" style="background-color:#bbdde5; width:718px; font: 12px 宋体;">
                <tr>
                    <td colspan="4" style="font-weight:bold; height: 25px; background-color: #ddeef2">
                        <asp:Label ID="bt" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="background-color:#ffffff; height: 25px; width:100px;">招聘职位：</td>
                    <td style="background-color:#ffffff; width:200px; text-align: left;"><asp:TextBox ID="txtPosition" runat="server" Width="150px"></asp:TextBox></td>
                    <td style="background-color:#ffffff; width:100px;">排&nbsp; &nbsp; 序：</td>
                    <td style="background-color:#ffffff; width:300px; text-align: left;"><asp:TextBox ID="txtZhaoPinOrder" runat="server" Width="60px" autocomplete="off"  OnKeyPress="if(((event.keyCode>=48)&&(event.keyCode <=57))) {event.returnValue=true;} else{event.returnValue=false;}"  MaxLength="5"></asp:TextBox> *必须为数字</td>
                </tr>
                <tr>
                    <td style="background-color:#ffffff; height: 25px;">工作地点：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtAddress" runat="server" Width="150px"></asp:TextBox></td>
                    <td style="background-color:#ffffff;">招聘人数：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtNumber" runat="server" Width="150px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="background-color:#ffffff; height: 25px;">薪资待遇：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtSalary" runat="server" Width="150px"></asp:TextBox></td>
                    <td style="background-color:#ffffff; ">截止日期：</td>
                    <td style="background-color:#ffffff; text-align: left;"><asp:TextBox ID="txtEndDate" runat="server" Width="150px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" background-color:#ffffff; height: 25px;">招聘内容：</td>
                    <td style="background-color:#ffffff; text-align: left;" colspan="3">
                       <iframe id="Iframe1" src="eWebEditor/ewebeditor.htm?id=txtBody&style=coolblue" frameborder="0" scrolling="no" width="550" height="350"></iframe>
                       <asp:TextBox ID="txtBody" runat="server" BorderColor="White" BorderWidth="1px" ForeColor="White" Height="1px" Width="1px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="background-color:#ffffff; height: 30px;">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click"
                            Text="提    交" Width="80px" />&nbsp;
                        <asp:Button ID="btnReset" runat="server" CssClass="button" OnClick="btnReset_Click"
                            Text="重    置" Width="80px" />
                </tr>
            </table>
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>
