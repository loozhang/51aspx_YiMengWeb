<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="CompanyInfoList.aspx.cs" Inherits="SysManage_CompanyInfoList" %>

<%@ Register Src="End.ascx" TagName="End" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
    <form id="Form1" runat="server">
        <h1><a href="Main.aspx">众拓网站后台管理中心</a> - 企业信息列表</h1>
        <div class="form-div">
            <table border="0" cellpadding="0" cellspacing="0" style="color:#192e32; width:718px;font: 12px 宋体;">
                <tr>
                    <td style="width: 50px; height: 22px"><img alt="" border="0" height="22" src="Images/icon_search.gif" width="26" /></td>
                    <td style="width: 300px;" align="left">欢迎来到企业信息管理专区 —— <a href="CompanyInfoAdd.aspx">添加企业信息</a></td>
                </tr>
            </table>
        </div>
        <div class="main-div">
            <table style="background-color:#bbdde5; width:718px;font: 12px 宋体;vertical-align:middle;text-align:center;"><tr><td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="#BBDDE5" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Width="100%">
                    <Columns>
                        <asp:TemplateField Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblImgUrl" runat="server" Text='<%# Bind("ImgUrl") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblInfoID" runat="server" Text='<%# Eval("InfoID") %>'></asp:Label>
                            </ItemTemplate>
                           <ItemStyle Height="25px" Width="10%" />
                           <HeaderStyle Height="25px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Title" HeaderText="信息标题">
                            <ItemStyle HorizontalAlign="Center" Width="25%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="InfoOrder" HeaderText="显示顺序">
                            <ItemStyle HorizontalAlign="Center" Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CreateDate" HeaderText="添加时间">
                            <ItemStyle HorizontalAlign="Center" Width="25%" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                              <a href='CompanyInfoEdit.aspx?InfoID= <%# Eval("InfoID") %>'>编辑</a>
                                <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" Text="删除"/>
                            </ItemTemplate>
                            <ItemStyle Width="20%" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#DDEEF2" Height="24px" />
                    <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PreviousPageText="上一页" />
                </asp:GridView>
            </td></tr></table>            
        </div>
<uc1:End ID="End1" runat="server" />
<script type="text/javascript" language="javascript">parent.frames['header-frame'].document.getElementById('load-div').style.display='none';</script>
</form>
</body>
</html>