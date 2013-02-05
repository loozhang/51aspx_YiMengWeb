<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="SysManage_NewsList" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 新闻列表</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px; height: 28px;">
                        <img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 100px;" align="left">新闻管理--<a href="NewsAdd.aspx">添加新闻</a> 
                    </td>
                    <td style="width: 20px; height: 28px;">
                    </td>
                    <td style="width: 72px; height: 28px;">新闻类别：</td>
                    <td style="width: 120px; height: 28px;"><asp:DropDownList ID="txtNewsType" runat="server" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="txtNewsType_SelectedIndexChanged"></asp:DropDownList></td>
                    <td style="width: 72px; height: 28px;">新闻标题：</td>
                    <td style="width: 280px; height: 28px;"><asp:TextBox ID="txtTitle" runat="server" Width="150px"></asp:TextBox> <asp:Button ID="btnSearch" runat="server" CssClass="button" OnClick="btnSearch_Click" Text="搜索" Width="50px" /></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table border="0" cellpadding="0" cellspacing="0" style="background-color:#bbdde5; width:718px;font: 12px 宋体;text-align:center;"><tr><td style="vertical-align: top;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="#BBDDE5" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Width="100%" CellPadding="5">
                    <Columns>
                        <asp:TemplateField Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblImgUrl" runat="server" Text='<%# Bind("ImgUrl") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID">
                        <ItemStyle HorizontalAlign="Center" Width="10%" Height="20px" />
                            <ItemTemplate>
                                <asp:CheckBox ID="Select" runat="server"/>
                                <asp:Label ID="lblNewsID" runat="server" Text='<%# Eval("NewsID") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="SelectAll" runat="server" OnCheckedChanged="SelectAll_CheckedChanged" Text="全选" AutoPostBack="True" />
                            </HeaderTemplate>
                            <HeaderStyle Height="20px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="新闻标题">
                            <ItemStyle HorizontalAlign="Left" Width="20%" />
                            <ItemTemplate>
                                <asp:Label ID="txtTitle" runat="server" Text='<%# sub(Eval("Title").ToString()) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="NewsTypeName" HeaderText="新闻类别">
                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                        </asp:BoundField>                      
                        <asp:BoundField DataField="NewsOrder" HeaderText="排序">
                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="CreateDate" HeaderText="添加时间" DataFormatString="{0:d}">
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                              <a href="NewsEdit.aspx?NewsID=<%# Eval("NewsID") %>">编辑</a>
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
