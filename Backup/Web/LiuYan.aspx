<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LiuYan.aspx.cs" Inherits="LiuYan"%>

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
                                            在线留言</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                        <tr>
                            <td>
                                <table border="2" cellpadding="3" cellspacing="1" style=" color :#FFFFFF" width="600"class="newtb ">
                                    <tr>
                                        <td align="center" colspan="2" style="height: 20px;"class="newtd2 ">
                                            <strong>填写留言</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; " class="newtd2 ">
                                            留言主题：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtMainInfo" runat="server" Width="300px"></asp:TextBox>
                                            <span class="red">*</span></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            内&nbsp; &nbsp; 容：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtBody" runat="server" Height="60px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 20px; "class="newtd2 ">
                                            姓&nbsp; &nbsp; 名：</td>
                                        <td align="left" style="width: 500px; "class="newtd2 ">
                                            <asp:TextBox ID="txtName" runat="server" Width="120px"></asp:TextBox>
                                            <span class="red">*</span></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            性&nbsp; &nbsp; 别：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:RadioButton ID="sex1" runat="server" GroupName="a" Text="先生" /><span style="color: #ff0000">
                                            </span>
                                            <asp:RadioButton ID="sex2" runat="server" GroupName="a" Text="女士" />
                                            <span class="red">*</span></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px;"class="newtd2 ">
                                            手机号码：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtMobile" runat="server" Width="120px"></asp:TextBox>
                                            <span class="red">*</span></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            电&nbsp; &nbsp; 话：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtTelephone" runat="server" Width="120px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px;"class="newtd2 ">
                                            传&nbsp; &nbsp; 真：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtFax" runat="server" Width="120px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            电子邮件：</td>
                                        <td align="left" style="color: #ff0000; "class="newtd2 ">
                                            <asp:TextBox ID="txtEmail" runat="server" Width="120px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            单位名称：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtCompanyName" runat="server" Width="300px"></asp:TextBox>
                                            <span class="red">*</span></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            通讯地址：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtAddress" runat="server" Width="300px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; "class="newtd2 ">
                                            邮&nbsp; &nbsp; 编：</td>
                                        <td align="left" style=""class="newtd2 ">
                                            <asp:TextBox ID="txtMailNum" runat="server" Width="120px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 20px; "class="newtd2 ">
                                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="提  交" />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重  写" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

