<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="LianJieList.aspx.cs" Inherits="SysManage_LianJieList" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
    <h1><span><a href="Main.aspx">众拓网站后台管理中心</a> - 友情链接列表</span></h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;" >
                <tr>
                    <td style="width: 50px; "><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到链接管理专区 —— <a href="LianJieAdd.aspx">添加友情链接</a> 
                    </td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table style="vertical-align:middle; text-align:center; background-color:#bbdde5; width:718px;font: 12px 宋体;"><tr><td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="#BBDDE5" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Width="100%">
                    <Columns>
                        <asp:TemplateField Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblImgUrl" runat="server" Text='<%# Bind("ImgUrl") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="id">
                        <ItemStyle HorizontalAlign="Center" Width="5%" Height="25px" />
                            <ItemTemplate>
                                <asp:CheckBox ID="Select" runat="server"/>
                                <asp:Label ID="lblLinkID" runat="server" Text='<%# Eval("LinkID") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="SelectAll" runat="server" OnCheckedChanged="SelectAll_CheckedChanged" Text="全选" AutoPostBack="True" />
                            </HeaderTemplate>
                           <HeaderStyle Height="25px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Title" HeaderText="链接名称">
                            <ItemStyle HorizontalAlign="Center" Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LinkUrl" HeaderText="链接地址">
                            <ItemStyle HorizontalAlign="Center" Width="20%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="链接图片">
                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                            <ItemTemplate>
                              <img alt="<%# Eval("Title") %>" width="80px" height="30px" src="IMG/<%# Eval("ImgUrl") %>" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LinkOrder" HeaderText="排序">
                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="CreateDate" HeaderText="添加时间">
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                              <a href='LianJieEdit.aspx?LinkID=<%# Eval("LinkID") %>'>编辑</a>
                                <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"  Text="删除" />
                            </ItemTemplate>
                            <ItemStyle Width="10%" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#DDEEF2" Height="24px" />
                    <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PreviousPageText="上一页" />
                </asp:GridView><br />
                <asp:Button ID="btnDeleteSelect" runat="server" ForeColor="#804000" OnClick="btnDeleteSelect_Click"
                    Text="删除选中的项" />
                <asp:Label ID="lblMessage" runat="server" Text="暂无你要查询的信息" Visible="False"></asp:Label>
            </td></tr></table>  
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>