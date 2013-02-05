<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ZhaoPinView.aspx.cs" Inherits="ZhaoPinView" %>

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
                                            人才招聘</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="2" cellpadding="0" cellspacing="2"  width="600"  style ="border-color:#01B3FD;" >
                                    <tr >
                                        <td  class ="newtd1">
                                            招聘职位：</td>
                                        <td align="left" class="red" style="width: 200px;border-color :#01B3FD ">
                                            <asp:Label ID="lblPosition" runat="server"></asp:Label></td>
                                        <td align="left" colspan="2" class ="newtd2" >
                                            <asp:LinkButton ID="btnSubmit" runat="server" Font-Bold="True" ForeColor="Red"
                                                OnClick="btnSubmit_Click">我要应聘</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td class ="newtd1">
                                            招聘人数：</td>
                                        <td align="left" class ="newtd2">
                                            <asp:Label ID="lblNumber" runat="server" ForeColor="White"></asp:Label></td>
                                        <td class ="newtd1">
                                            薪资待遇：</td>
                                        <td align="left" style="width: 200px;border-color :#01B3FD ">
                                            <asp:Label ID="lblSalary" runat="server" ForeColor="White"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td class ="newtd1">
                                            工作地点：</td>
                                        <td align="left"class ="newtd2">
                                            <asp:Label ID="lblAddress" runat="server" ForeColor="White"></asp:Label></td>
                                        <td  class ="newtd1">
                                            截止日期：</td>
                                        <td align="left" class ="newtd2">
                                            <asp:Label ID="lblEndDate" runat="server" ForeColor="White"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td class ="newtd1">
                                            招聘要求：</td>
                                        <td align="left" colspan="3" style="line-height: 22px;border-color :#01B3FD ">
                                            <asp:Label ID="lblBody" runat="server" ForeColor="White"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

