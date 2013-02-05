<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsView.aspx.cs" Inherits="NewsView"%>

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
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 680px;color:#FFFFFF">
                                    <tr>
                                        <td class="bbb" style="height: 30px; text-align: center">
                                            <asp:Label ID="lblTitle" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="line-height: 25px; text-align: left">
                                            <asp:Label ID="lblBody" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
 </table>
</asp:Content>

