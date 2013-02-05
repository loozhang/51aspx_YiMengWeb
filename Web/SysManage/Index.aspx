<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="SysManage_Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>众拓网络 - 企业网站后台管理系统</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <script language="javascript" type="text/javascript">
if (window.top != window)
{
  window.top.location.href = document.location.href;
}
document.getElementById("load-div").style.display="block";
    </script>
</head>
  <frameset border="0" framespacing="0" rows="70,*">
    <frame id="header-frame" name="header-frame" src="Top.aspx" frameborder="no" scrolling="no">
        <frameset id="frame-body" border="0" framespacing="0" cols="180, 10, *">
            <frame id="menu-frame" name="menu-frame" src="Left.aspx" frameborder="no" scrolling="yes">
            <frame id="drag-frame" name="drag-fram" src="Middle.aspx" frameborder="no" scrolling="no">
            <frame id="main-frame" name="main-frame" src="Main.aspx" frameborder="no" scrolling="yes">
        </frameset>
    </frame>
  </frameset>
</html>

