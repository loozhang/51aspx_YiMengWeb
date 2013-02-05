<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YingPin.aspx.cs" Inherits="YingPin"  %>

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
                                            填写简历</td>
                                        <td >
                                            &nbsp;</td>
                                         
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr> <td style="height :20px"></td>   </tr>
                                            <tr>
                                                <td>
                                                    <table border="2" cellpadding="3" cellspacing="1"  class ="newtb " width="600">
                                                        <tr>
                                                            <td colspan="2" style="height: 20px; " class ="newtd2 ">
                                                                <strong>填写应聘信息</strong></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="height: 20px;" class ="newtd2 ">
                                                                职位名称：</td>
                                                            <td align="left" style="width: 500px;"class ="newtd2 ">
                                                                <asp:TextBox ID="txtPosition" runat="server" Width="150px"></asp:TextBox>
                                                                <span class="red">*</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                姓 &nbsp;&nbsp; 名：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:TextBox ID="txtName" runat="server" Width="100px"></asp:TextBox>
                                                                <span class="red">*</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                性 &nbsp;&nbsp; 别：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:RadioButton ID="sex1" runat="server" Text="男" GroupName="a" />
                                                                <asp:RadioButton ID="sex2" runat="server" Text="女" GroupName="a" />
                                                                <span class="red">*</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                出生日期：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:TextBox ID="txtBirthday" runat="server" Width="150px"></asp:TextBox>
                                                                <span class="red">*</span> 格式 1978-08-18</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                现居地址：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:TextBox ID="txtAddress" runat="server" Width="300px"></asp:TextBox>
                                                                <span class="red">*</span></td>
                                                        </tr>
                                                        <tr >
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                手 &nbsp;&nbsp; 机：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:TextBox ID="txtMobile" runat="server" Width="150px"></asp:TextBox>
                                                                <span class="red">*</span>
                                                             </td>
                                                        </tr>
                                                        <tr >
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                电 &nbsp;&nbsp; 话：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:TextBox ID="txtTelephone" runat="server" Width="150px"></asp:TextBox>
                                                                <span class="red">*</span>
                                                             </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px; "class ="newtd2 ">
                                                                电子邮箱：</td>
                                                            <td align="left" style=""class ="newtd2 ">
                                                                <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="height: 20px;"class ="newtd2 ">
                                                                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="提  交" />
                                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重  置" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
</asp:Content>

