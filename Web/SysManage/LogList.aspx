<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="LogList.aspx.cs" Inherits="SysManage_LogList" Title="众拓网站后台管理中心" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 日志列表</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 72px; height: 28px;">操作人：</td>
                    <td style="width: 120px; height: 28px;"><asp:DropDownList ID="txtCreateBy" runat="server" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="txtCreateBy_SelectedIndexChanged"></asp:DropDownList></td>
                    <td style="width: 72px; height: 28px;">日志类型：</td>
                    <td style="width: 120px; height: 28px;"><asp:DropDownList ID="txtLogType" runat="server" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="txtLogType_SelectedIndexChanged">
                        <asp:ListItem Value="ALL">全部日志</asp:ListItem>
                        <asp:ListItem>登陆退出</asp:ListItem>
                        <asp:ListItem>用户管理</asp:ListItem>
                        <asp:ListItem>角色管理</asp:ListItem>
                        <asp:ListItem>菜单管理</asp:ListItem>
                        <asp:ListItem>新闻管理</asp:ListItem>
                        <asp:ListItem>产品管理</asp:ListItem>
                        <asp:ListItem>招聘管理</asp:ListItem>
                        <asp:ListItem>人才管理</asp:ListItem>
                        <asp:ListItem>荣誉管理</asp:ListItem>
                        <asp:ListItem>日程管理</asp:ListItem>
                        <asp:ListItem>链接管理</asp:ListItem>
                        <asp:ListItem>客户管理</asp:ListItem>
                        <asp:ListItem>留言管理</asp:ListItem>
                        <asp:ListItem>公司信息管理</asp:ListItem>
                        </asp:DropDownList></td>
                 </tr>
            </table>
        </div>
        <div class="main-div">
            <table border="0" cellpadding="0" cellspacing="0" style="background-color:#bbdde5; width:718px;font: 12px 宋体;text-align:center;"><tr><td style="vertical-align: top;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="#BBDDE5" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Width="100%" CellPadding="5">
                    <Columns>
                       
                        <asp:TemplateField HeaderText="ID">
                        <ItemStyle HorizontalAlign="Center" Width="8%" Height="20px" />
                            <ItemTemplate>
                                <asp:CheckBox ID="Select" runat="server"/>
                                <asp:Label ID="lblLogID" runat="server" Text='<%# Eval("LogID") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="SelectAll" runat="server" OnCheckedChanged="SelectAll_CheckedChanged" Text="全选" AutoPostBack="True" />
                            </HeaderTemplate>
                            <HeaderStyle Height="20px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="LogType" HeaderText="日志类型">
                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                        </asp:BoundField> 
                        <asp:BoundField DataField="FuncName" HeaderText="操作类型">
                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                        </asp:BoundField> 
                        <asp:BoundField DataField="OperatorInfo" HeaderText="操作信息">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>                      
                        <asp:BoundField DataField="CreateBy" HeaderText="操作人">
                            <ItemStyle HorizontalAlign="Center" Width="8%" />
                        </asp:BoundField>                        
                        <asp:BoundField DataField="CreateDate" HeaderText="操作时间" DataFormatString="{0:d}">
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>                             
                                <asp:LinkButton ID="btnDelete" Text="删除" runat="server" CommandName="Delete"/>                                
                            </ItemTemplate>
                            <ItemStyle Width="10%" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#DDEEF2" Height="20px" />
                    <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PreviousPageText="上一页" />
                </asp:GridView><br />
                <asp:Button ID="btnDeleteSelect" runat="server" ForeColor="#804000" OnClick="btnDeleteSelect_Click"
                    Text="删除选中的项" />
                <asp:Label ID="lblMessage" runat="server" Text="暂无你要查询的信息" Visible="False"></asp:Label>
            </td></tr></table></div>  
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>

