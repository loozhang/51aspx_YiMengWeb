<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RongYuView.aspx.cs" Inherits="RongYuView" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title><%=Title%></title>
    <meta name="keywords" content="<%=KeyWords %>" />
    <meta name="description" content="<%=Description%>" /> 
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                         <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" class="style3">
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
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; text-align: center"; >
                                    <tr>
                                        <td>
                                            <asp:Image ID="ImgUrl" runat="server"  Width="320px" Height ="220px"/></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px; color: #FFFFFF;">
                                            <asp:Label ID="lblTitle" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="line-height: 22px; text-align: left;color: #FFFFFF; padding-left: 30px">
                                            
                                            <asp:Label ID="lblBody" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

