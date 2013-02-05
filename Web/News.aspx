<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title><%=Title%></title>
    <meta name="keywords" content="<%=KeyWords %>" />
    <meta name="description" content="<%=Description%>" /> 
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                    <tr>
                                        <td style=" width:105px; height :37px ; " align="left" class="bt2">
                                            公司新闻</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 710px;color:#FFFFFF">
                                    <tr>
                                        <td style="vertical-align: top; width: 100%; line-height: 25px">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; color :#FFFFFF">
                                                        <tr style="background-image: url(images/x2.gif);">
                                                            <td style="height: 30px; width: 18px;" align="left">
                                                                <img src="images/x3.gif" /></td>
                                                            <td style="text-align: left; color :#FFFFFF">
                                                             <a href='NewsView.aspx?NewsID=<%#Eval("NewsID")%>' style ="color :#FFFFFF">
                                                                                        <%#Eval("Title")%>
                                                                </a>
                                                            </td>
                                                            <td style="width: 80px;">
                                                                <%#DataBinder.Eval(Container.DataItem, "CreateDate", "{0:yyyy-MM-dd}")%>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px">
                                            <asp:Label ID="lblMessage" runat="server" Visible="False">暂无新闻信息</asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 25px; text-align: right ;  color :#FFFFFF">
                                            共有<asp:Label ID="count" runat="server" ForeColor="#FFFFFF"></asp:Label>条记录 &nbsp;
                                            <asp:LinkButton ID="shou" runat="server" OnClick="shou_Click">首页</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="shang" runat="server" OnClick="shang_Click">上一页</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="xia" runat="server" OnClick="xia_Click">下一页</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="last" runat="server" OnClick="last_Click">末页</asp:LinkButton>&nbsp;
                                            当前第<asp:Label ID="dang" runat="server" ForeColor="#FFFFFF">1</asp:Label>页 共<asp:Label
                                                ID="countpage" runat="server" ForeColor="#FFFFFF"></asp:Label>页
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

