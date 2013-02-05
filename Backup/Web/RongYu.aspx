<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RongYu.aspx.cs" Inherits="RongYu" %>

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
                                            企业荣誉</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 720px; color :#FFFFFF">
                                    <tr>
                                        <td>
                                            <asp:DataList ID="DataList1" runat="server" CellSpacing="5" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                                                <ItemTemplate>
                                                    <table style="width: 100%; text-align: center; color :#FFFFFF">
                                                        <tr>
                                                            <td>
                                                                <a href='RongYuView.aspx?RongYuID=<%#Eval("RongYuID")%>'>
                                                                <img alt='<%#Eval("Title")%>' src='SysManage/IMG/<%#Eval("ImgUrl")%>' style="border: 0px;" height="160px" width="210px"/></a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px; ">
                                                               <a href='RongYuView.aspx?RongYuID=<%#Eval("RongYuID")%>' style="color: #FFFFFF">
                                                                   <%#Eval("Title")%>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 10px">
                                            <asp:Label ID="lblMessage" runat="server" Text="暂无信息" Visible="False"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 25px; text-align: right">
                                            共有<asp:Label ID="count" runat="server" ForeColor="#FFFFFF"></asp:Label>条记录&nbsp;
                                            <asp:LinkButton ID="shou" runat="server" OnClick="shou_Click">首页</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="shang" runat="server" OnClick="shang_Click">上一页</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="xia" runat="server" OnClick="xia_Click">下一页</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="last" runat="server" OnClick="last_Click">末页</asp:LinkButton>&nbsp;
                                            当前第<asp:Label ID="dang" runat="server" ForeColor="#FFFFFF">1</asp:Label>页 共<asp:Label
                                                ID="countpage" runat="server" ForeColor="#FFFFFF"></asp:Label>页</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

