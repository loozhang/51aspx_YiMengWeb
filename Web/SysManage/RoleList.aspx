<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="RoleList.aspx.cs" Inherits="SysManage_RoleList" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 角色列表</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到角色管理专区 ——<a href="RoleAdd.aspx">添加角色</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table style="vertical-align:middle;text-align:center; background-color:#bbdde5; width:718px;font: 12px 宋体;"><tr><td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="#BBDDE5" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Width="100%">
                    <Columns>   
                     <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblRoleID" runat="server" Text='<%# Eval("RoleID") %>'></asp:Label>
                            </ItemTemplate>
                           <ItemStyle Height="25px" Width="5%" />
                           <HeaderStyle Height="25px" />
                        </asp:TemplateField>                  
                        <asp:BoundField DataField="RoleName" HeaderText="角色名称">
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                        </asp:BoundField>                         
                        <asp:BoundField DataField="RoleNo" HeaderText="角色编号">
                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="角色权限">
                            <ItemTemplate> 
                                <asp:TextBox ID="txtRoleElements" Text='<%# Eval("RoleElements") %>' ReadOnly="true" TextMode="MultiLine" Height="50px" Width="355px" runat="server"></asp:TextBox>                   
                             </ItemTemplate>
                           <ItemStyle Height="50px" Width="50%" />
                           <HeaderStyle Height="25px" />
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                              <a href='RoleEdit.aspx?RoleID=<%# Eval("RoleID") %>'>编辑</a>
                                <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"  Text="删除" />
                            </ItemTemplate>
                            <ItemStyle Width="15%" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#DDEEF2" Height="24px" />
                    <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PreviousPageText="上一页" />
                </asp:GridView><br />
                <asp:Label ID="lblMessage" runat="server" Text="暂无角色信息" Visible="False"></asp:Label>
            </td></tr></table>  
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>