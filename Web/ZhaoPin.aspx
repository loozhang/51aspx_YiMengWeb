<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ZhaoPin.aspx.cs" Inherits="ZhaoPin" %>

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
                                <table border="2" cellpadding="3" cellspacing="1"  width="600" class ="newtb" 
                                    style="color: #FFFFFF">
                                    <tr >
                                        <td style="width: 20px; height: 20px; " class ="newtd2 ">
                                            No</td>
                                        <td style="width: 130px; "class ="newtd2 ">
                                            职位名称</td>
                                        <td style="width: 100px; "class ="newtd2 ">
                                            招聘人数</td>
                                        <td style="width: 100px; "class ="newtd2 ">
                                            应聘人数</td>
                                        <td style="width: 100px; "class ="newtd2 ">
                                            工作地点</td>
                                        <td style="width: 150px; "class ="newtd2 ">
                                            截止日期</td>
                                    </tr>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td style="height: 20px; "class ="newtd2 ">
                                                    <%# ID++  %></td>
                                                <td style=""class ="newtd2 ">                                               
                                                    <a href='ZhaoPinView.aspx?ZhaoPinID=<%#Eval("ZhaoPinID") %>'>
                                                         <font color="red"><b><%#Eval("Position")%></b></font></a></td>
                                                <td style=""class ="newtd2 ">
                                                    <%#Eval("Number")%></td>
                                                <td style=""class ="newtd2 ">
                                                    <%#Eval("YingPin")%></td>
                                                <td style=""class ="newtd2 ">
                                                    <%#Eval("Address")%></td>
                                                <td style=""class ="newtd2 ">
                                                    <%#Eval("EndDate")%></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>

