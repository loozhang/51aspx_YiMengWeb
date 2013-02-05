<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sell.aspx.cs" Inherits="Sell" %>

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
                                            销售网络</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="580" height="480">
                                <param name="movie" value="ditu.swf">
                                <param name="quality" value="high">
                                <param name="wmode" value="transparent" />
                                <embed src="ditu.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="580" height="480"></embed>
                                </object>
                            </td>
                        </tr>
                    </table>
</asp:Content>

