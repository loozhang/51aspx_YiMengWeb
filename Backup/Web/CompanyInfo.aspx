<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompanyInfo.aspx.cs" Inherits="CompanyInfo" %>

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
                                            公司简介</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="710">
                                    <tr>
                                        <td align="left" style="line-height: 28px; font-size:12px; color :#FFFFFF; font-family:宋体;" ><img alt="" src="images/_18-21.jpg" class="tu-z" />
                                            <asp:Label ID="lblBody" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
      </table>
</asp:Content>

