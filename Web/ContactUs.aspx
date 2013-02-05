<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
                                        <td style=" width:105px; height :37px ;" align="left" class="bt2">
                                            联系我们</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="2" cellpadding="10" cellspacing="1" style="width: 400px; " class ="newtb ">
                                    <tr>
                                        <td align="left" style="width: 70px; height: 20px;" class ="newtd2 ">
                                            公司名称：</td>
                                        <td align="left" style=""  class ="newtd2 ">
                                            <asp:Label ID="lblCompanyName" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                           <td align="left" style="height: 20px; " class ="newtd2 ">
                                            网&nbsp; &nbsp; 址：</td>
                                           <td align="left" style="" class ="newtd2 ">
                                           <asp:Label ID="lblWebURL" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 20px; " class ="newtd2 ">
                                            地&nbsp; &nbsp; 址：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblAddress" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 20px; " class ="newtd2 ">
                                            联 系 人：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblKeepPerson" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 20px; " class ="newtd2 ">
                                            手&nbsp; &nbsp; 机：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblMobile" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 20px; " class ="newtd2 ">
                                            电&nbsp; &nbsp; 话：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblTelephone" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 20px; " class ="newtd2 ">
                                            传&nbsp; &nbsp; 真：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblFax" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 25px; " class ="newtd2 ">
                                            邮&nbsp; &nbsp; 箱：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 20px; " class ="newtd2 ">
                                            邮&nbsp; &nbsp; 编：</td>
                                        <td align="left" style="" class ="newtd2 ">
                                            <asp:Label ID="lblMailNum" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
        </table>
</asp:Content>

