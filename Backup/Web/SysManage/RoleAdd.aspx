<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="RoleAdd.aspx.cs" Inherits="SysManage_RoleAdd" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<script language="javascript" type="text/javascript">
     function client_OnTreeNodeChecked()
     {
         var obj = window.event.srcElement;
         var treeNodeFound = false;
         var checkedState;
         if (obj.tagName == "INPUT" && obj.type == "checkbox")
         {
             var treeNode = obj;
             checkedState = treeNode.checked;
                do
                {
                    obj = obj.parentElement;
                }
                
                while (obj.tagName != "TABLE")
                var parentTreeLevel = obj.rows[0].cells.length;
                var parentTreeNode = obj.rows[0].cells[0];
                var tables = obj.parentElement.getElementsByTagName("TABLE");
                var numTables = tables.length
                if (numTables >= 1)
                {
                    for (i=0; i < numTables; i++)
                    {
                        if (tables[i] == obj)
                        {
                            treeNodeFound = true;
                            i++;
                            if (i == numTables)
                            {
                                return;
                            }
                        }
                        if (treeNodeFound == true)
                        {
                            var childTreeLevel = tables[i].rows[0].cells.length;
                            if (childTreeLevel > parentTreeLevel)
                            {
                                var cell = tables[i].rows[0].cells[childTreeLevel - 1];
                                var inputs = cell.getElementsByTagName("INPUT");
                                inputs[0].checked = checkedState;
                            }
                            else
                            {
                                return;
                            }
                        }
                    }
              }
        }
    }   
    </script>
 		<script type="text/javascript" language="javascript">
			initMenu();
		</script>  
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 角色添加</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到角色管理专区—— <a href="RoleList.aspx">返回角色列表</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table cellpadding="3" cellspacing="1" border="0" style="background-color:#bbdde5; width:718px; font: 12px 宋体;">
                <tr>
                    <td colspan="2" style="font-weight:bold; height: 25px; background-color: #ddeef2">
                    <asp:Label ID="bt" runat="server"></asp:Label>
                    <asp:Label ID="yuantu" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:100px; height:25px; background-color:#ffffff;">角色编号：</td>
                    <td style="width: 600px; text-align: left; background-color:#ffffff;">
                        <asp:TextBox ID="txtRoleNo" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height:25px; background-color:#ffffff;">角色名称：</td>
                    <td style="text-align:left; background-color:#ffffff;">
                        <asp:TextBox ID="txtRoleName" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="background-color:#ffffff;">角色权限：</td>
                    <td style="vertical-align:top;width:100px;text-align:left; background-color:#ffffff;font-size:12px;">
                    <asp:TreeView ID="TreeView1" runat="server" Font-Size="12px" ExpandDepth="0" onclick="client_OnTreeNodeChecked()" 
                            ShowLines="True" BorderStyle="Double">
                        </asp:TreeView>            
                    </td>
                </tr>
               
                <tr>
                    <td style="height:30px; background-color:#ffffff;" colspan="2">
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
