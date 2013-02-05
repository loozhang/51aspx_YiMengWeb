<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title><%=Title%></title>
    <meta name="keywords" content="<%=KeyWords %>" />
    <meta name="description" content="<%=Description%>" /> 
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                         
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="text-align: center;color:#FFFFFF" width="680">
                                    <tr>
                                        <td ><asp:Image ID="ProductImgUrl" runat="server" Width="280px" Height ="200px" /></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px; font-weight:bold;">
                                            <asp:Label ID="lblProductName" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="height:25px; font-weight:bold;" align="left">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="line-height: 22px; text-align: left">
                                            <asp:Label ID="lblProductInfo" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

