<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LiuYanView.aspx.cs" Inherits="_LiuYanView" %>

<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                                <td>
                                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                          <tr>
                                                            <td>
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                                                    <tr>
                                                                        <td style=" width:105px; height :37px ; " align="left" class="bt2">
                                                                            查看留言</td>
                                                                        <td >
                                                                            &nbsp;</td>
                                                                         
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr> <td style="height :20px"></td>   </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                <tr>
                                    <td style="background-image:url(Images/body_09.jpg); height:470px;" valign="top">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 640px">
                                            
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 600px">
                                                        <tr>
                                                            <td valign="top">
                                                                <table border="2" cellspacing="1" cellpadding="0"  class ="newtb ">
                                                                <asp:Repeater ID="Repeater1" runat="server">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td style="width:120px;" align="center" valign="top">
                                                                            <table border="0" cellspacing="1" cellpadding="3" width="100%">
	                                                                            <tr>
	                                                                                <td style="height:20px; ">留言人信息</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="height:20px;"><%#Eval("Name")%></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="height:20px;"><%#Eval("Sex")%></td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td style=" width:500px;" valign="top">
                                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table width="100%" border="0" cellspacing="1" cellpadding="3">
                                                                                            <tr>
                                                                                                <td style="width:60%; height:20px; " align="left">留言主题：<span class="red"><%#Eval("MainInfo")%></span></td>
                                                                                                <td style="width:40%; " align="left">留言时间：<%#Eval("CreateDate")%></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="height:20px;" colspan="2" align="left">留言内容：</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="line-height:20px;" colspan="2" align="left"><%#Eval("Body")%></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <table width="100%" border="0" cellspacing="1" cellpadding="3" id="abc<%#Eval("ReplyTime") %>">
                                                                                            <tr>
                                                                                                <td style="width:60%; height:20px;" align="left">留言回复：</td>
                                                                                                <td style="width:40%; " align="left">回复时间：<%#Eval("ReplyTime")%></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2" style="line-height:20px;" align="left"><%#Eval("Reply")%></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>                                                                  
                                                                </ItemTemplate>
                                                                </asp:Repeater>
                                                                </table>  
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                           <td style="height: 20px;"><asp:Label ID="lblMessage" runat="server" Visible="False">暂无留言信息</asp:Label></td>
                                                           </tr>
                                                           <tr>
                                                               <td style="height: 25px; text-align:right; color :#FFFFFF">
                                                               共有<asp:Label ID="count" runat="server" ForeColor="#950E0E"></asp:Label>条记录 &nbsp;
                                                               <asp:LinkButton ID="shou" runat="server" OnClick="shou_Click">首页</asp:LinkButton>&nbsp;
                                                               <asp:LinkButton ID="shang" runat="server" OnClick="shang_Click">上一页</asp:LinkButton>&nbsp;
                                                               <asp:LinkButton ID="xia" runat="server" OnClick="xia_Click">下一页</asp:LinkButton>&nbsp;
                                                               <asp:LinkButton ID="last" runat="server" OnClick="last_Click">末页</asp:LinkButton>&nbsp;
                                                               当前第<asp:Label ID="dang" runat="server" ForeColor="#950E0E">1</asp:Label>页 共
                                                               <asp:Label ID="countpage" runat="server" ForeColor="#950E0E"></asp:Label>页
                                                               </td>
                                                         </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                         </asp:Content>