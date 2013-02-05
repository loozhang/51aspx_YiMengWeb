<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="SysManage_ProductList" Title="众拓网站后台管理中心" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
<h1><a href="Main.aspx">众拓网站后台管理中心</a> - 产品列表</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px; height: 22px;"><img alt="SEARCH" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 240px; height: 22px;">欢迎来到产品信息专区 —— <a href="ProductAdd.aspx">添加产品</a></td>
                    <td style="width: 65px; height: 22px;">产品类别：</td>
                    <td style="width: 180px; height: 22px;"><asp:DropDownList ID="txtProductType" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="txtProductType_SelectedIndexChanged"></asp:DropDownList></td>                   
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table style=" background-color:#bbdde5; width:718px;font: 12px 宋体; vertical-align:middle;text-align:center;"><tr><td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="#BBDDE5" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Width="100%">
                    <Columns>
                        <asp:TemplateField Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblProductImgUrl" runat="server" Text='<%# Bind("ProductImgUrl") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ProductID">
                        <ItemStyle HorizontalAlign="Center" Width="10%" Height="25px" />
                            <ItemTemplate>
                                <asp:CheckBox ID="Select" runat="server"/>
                                <asp:Label ID="lblProductID" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="SelectAll" runat="server" OnCheckedChanged="SelectAll_CheckedChanged" Text="全选" AutoPostBack="True" />
                            </HeaderTemplate>
                           <HeaderStyle Height="25px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="ProductName" HeaderText="产品标题">
                            <ItemStyle HorizontalAlign="Center" Width="25%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="产品图片">
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                            <ItemTemplate>
                              <img alt="<%# Eval("ProductName") %>" width="80px" height="30px" src="IMG/<%# Eval("ProductImgUrl") %>" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ProductOrder" HeaderText="排序">
                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="CreateDate" HeaderText="添加时间">
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                          <a href='ProductEdit.aspx?ProductID=<%# Eval("ProductID") %>'>编辑</a>
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
                <asp:Label ID="lblMessage" runat="server" Text="暂无产品信息" Visible="False"></asp:Label>
            </td></tr></table>  
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>

