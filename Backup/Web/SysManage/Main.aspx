<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="SysManage_Main" Title="�������� - ��ҵ��վ��̨����ϵͳ - ��ҳ"%>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�������� - ��ҵ��վ��̨����ϵͳ</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><a href="Main.aspx">������վ��̨��������</a> - ��ҳ</h1>
        <div class="form-div">
            <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td style="width: 50px;"><img alt="" height="22" src="Images/icon_search.gif" width="26px" border="0px"/></td>
                    <td style="width: 70px;">��ǰ�û���</td>
                    <td style="width: 120px;"><asp:Label ID="lblAdminName" runat="server"></asp:Label></td>
                    <td style="width: 70px;">�û���ɫ��</td>
                    <td style="width: 120px;"><asp:Label ID="lblRoleName" runat="server" Font-Size="12px"></asp:Label></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table style="vertical-align:middle;text-align:center;height: 320px;">
            <tr><td>��ӭʹ��������վ��̨����ϵͳ</td></tr>
            </table> 
        </div>
        <uc1:End ID="End1" runat="server" />
        <script type="text/javascript">
        parent.frames['header-frame'].document.getElementById('load-div').style.display='none';
        </script>
     </form>            
  </body>
</html>
          



