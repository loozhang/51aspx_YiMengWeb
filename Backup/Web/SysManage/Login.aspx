<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SysManage_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>众拓网站后台管理系统（<%=PageTitle %>）-管理员登录</title>       
    <meta name="keywords" content="<%=PageKeyWords %>" />
    <meta name="description" content="<%=PageDescription %>"/>
    <script type="text/javascript">
     function RefreshCheckNum()
     {
       document.getElementById("ImgCheckNum").src="CreateImage.aspx";
     }    
    </script>
    <style type="text/css">
    body {
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    text-align:center;
    }

    td {
	    font-size: 12px;
    }

    a:link {
	    color: #000000;
	    text-decoration: none;
    }
    a:visited {
	    text-decoration: none;
	    color: #000000;
    }
    a:hover {
	    text-decoration: underline;
	    color: #FF0000;
    }
    a:active {
	    text-decoration: none;
    }
    .dl input {
	    font-family: "宋体";
	    font-size: 12px;
	    background-color: #e8f9ff;
	    border: 1px solid #84a1bd;
	    height: 20px;
	    line-height:20px;
	    vertical-align: middle;
    }
    .dl img {
        vertical-align: middle;
    }

    .wenhua {
	    color: #0068c1;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <table width="800" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="240" align="center"><img alt="" src="Images/logo.jpg" width="240" height="100" /></td>
                <td align="right"><table width="240" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="20" align="right" style="color:#969696">
                    <a href="http://www.17kt.net" target="_blank">众拓主页</a>&nbsp; |&nbsp;                    
                    <a href="#" onclick="window.external.addfavorite('<%=PageUrl%>/SysManage/Login.aspx','网站后台管理系统（<%=PageTitle %>）-管理员登录')">加入收藏</a>&nbsp; |&nbsp; 
                    <a href="http://www.17kt.net/lx.asp">联系方式</a>
                    </td>
                  </tr>
		          <tr>
                    <td height="15"></td>
                  </tr>
                  <tr>
                    <td align="right"><img alt="" src="Images/login_01.jpg" width="200" height="30" /></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="800" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="300" valign="top"><table width="300" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><img alt="" src="Images/login_02.jpg" width="300" height="70" /></td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" style="background-image:url(Images/login_04.jpg); height:300px;"><table width="240" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="40" align="left" class="dl">用户名：<asp:TextBox ID="txtAdminName" runat="server" Width="140px"></asp:TextBox></td>
                          </tr>
                          <tr>
                            <td height="40" align="left" class="dl">密&nbsp;&nbsp;码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="140px"></asp:TextBox></td>
                          </tr>
                          <tr>
                            <td height="40" align="left" class="dl">验证码：<asp:TextBox ID="txtCheckNum" runat="server" Width="60px"></asp:TextBox>                            
                                <a href="javascript:RefreshCheckNum();" style="color:#000000;" title="刷新图片"><asp:Image ID="ImgCheckNum" runat="server" ImageUrl="CreateImage.aspx" /></a>
                            </td>
                          </tr>
                          <tr>
                            <td height="20" align="left"></td>
                          </tr>
                          <tr>
                            <td align="center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td align="left"><asp:ImageButton ID="btnLogin" runat="server" ImageUrl="Images/login_06.jpg" OnClick="btnLogin_Click" /></td>
                                <td align="right"><asp:ImageButton ID="btnReset" runat="server" ImageUrl="Images/login_07.jpg" OnClick="btnReset_Click" /></td>                                  
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td style="height: 5px"></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td align="center"><img alt="" src="Images/login_08.jpg" width="240" height="20" /></td>
                      </tr>
                      <tr>
                        <td height="100"><img alt="" src="Images/login_15.jpg" width="240" height="100" /></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img alt="" src="Images/login_05.jpg" width="300" height="10" /></td>
                  </tr>
                </table></td>
                <td width="500"><img alt="" src="Images/login_03.jpg" width="500" height="380" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="20"></td>
          </tr>
          <tr>
            <td><table width="800" border="0" cellspacing="0" cellpadding="0" class="wenhua">
              <tr>
                <td width="10"><img alt="" src="Images/login_09.jpg" width="10" height="25" /></td>
                <td style="width: 60px; background-image:url(Images/login_10.jpg);"><strong>众拓文化</strong></td>
                <td width="20"><img alt="" src="Images/login_11.jpg" width="20" height="25" /></td>
                <td align="center" valign="bottom" style=" background-image:url(Images/login_12.jpg);"><table style="height:22px"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="15" align="left"><img alt="" src="Images/x1.gif" width="9" height="9" /></td>
                    <td width="260" align="left">以人为本、诚实守信、开拓创新、追求卓越</td>
                    <td width="15" align="left"><img alt="" src="Images/x1.gif" width="9" height="9" /></td>
                    <td width="240" align="left">全心全意为您服务，尽心尽力为您付出！</td>
                    <td width="15" align="left"><img alt="" src="Images/x1.gif" width="9" height="9" /></td>
                    <td width="120" align="left">众策众力、众拓未来</td>
                  </tr>
                </table></td>
                <td width="10"><img alt="" src="Images/login_13.jpg" width="10" height="25" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="15"></td>
          </tr>
          <tr>
            <td align="center" style="color:#969696; line-height:20px; background-image: url(Images/login_14.jpg); height:60px;">众拓网络&nbsp; 客户服务电话：  010-12345678<br />
            版权所有 &copy; 2008-<%=ThisYear%> 众拓网络 All Rights Reserved</td>
          </tr>
        </table>
    </form>
</body>
</html>

