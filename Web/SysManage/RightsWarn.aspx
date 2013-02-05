<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="RightsWarn.aspx.cs" Inherits="SysManage_RightsWarn" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 温馨提示</h1>
        <div class="form-div">
            <table border="0" cellspacing="0" cellpadding="0" style="width:718px;font: 12px 宋体;color: #192e32;">
                <tr>
                    <td style="width:26px;" align="left"><img height="22" alt="SEARCH" src="Images/icon_search.gif" width="26px" border="0"/></td>
                    <td align="left" style="width:100px;">温馨提示：</td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table border="0" cellpadding="0" cellspacing="0" style="height:320px;">
              <tr>
                <td>对不起，你没有这项功能的权限！<a href="Login.aspx?action=logout"><font color="#cc3300">重新登录</font></a></td>
              </tr>
            </table> 
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>
