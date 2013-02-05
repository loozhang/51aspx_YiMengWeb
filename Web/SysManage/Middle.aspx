<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Middle.aspx.cs" Inherits="SysManage_Middle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>众拓网站后台管理中心</title>
    <style type="text/css">
BODY {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: #80bdcb; PADDING-BOTTOM: 0px; MARGIN: 0px; CURSOR: e-resize; PADDING-TOP: 0px
}
</style>
<script language="javascript" type="text/javascript">
var pic = new Image();
pic.src="images/arrow_right.gif";

function toggleMenu()
{
  frmBody = parent.document.getElementById('frame-body');
  imgArrow = document.getElementById('img');

  if (frmBody.cols == "0, 10, *")
  {
    frmBody.cols="200, 10, *";
    imgArrow.src = "images/arrow_left.gif";
  }
  else
  {
    frmBody.cols="0, 10, *";
    imgArrow.src = "images/arrow_right.gif";
  }
}

var orgX = 0;
document.onmousedown = function(e)
{
  var evt = Utils.fixEvent(e);
  orgX = evt.clientX;

  if (Browser.isIE) document.getElementById('tbl').setCapture();
}

document.onmouseup = function(e)
{
  var evt = Utils.fixEvent(e);

  frmBody = parent.document.getElementById('frame-body');
  frmWidth = frmBody.cols.substr(0, frmBody.cols.indexOf(','));
  frmWidth = (parseInt(frmWidth) + (evt.clientX - orgX));

  frmBody.cols = frmWidth + ", 10, *";

  if (Browser.isIE) document.releaseCapture();
}

var Browser = new Object();

Browser.isMozilla = (typeof document.implementation != 'undefined') && (typeof document.implementation.createDocument != 'undefined') && (typeof HTMLDocument != 'undefined');
Browser.isIE = window.ActiveXObject ? true : false;
Browser.isFirefox = (navigator.userAgent.toLowerCase().indexOf("firefox") != - 1);
Browser.isSafari = (navigator.userAgent.toLowerCase().indexOf("safari") != - 1);
Browser.isOpera = (navigator.userAgent.toLowerCase().indexOf("opera") != - 1);

var Utils = new Object();

Utils.fixEvent = function(e)
{
  var evt = (typeof e == "undefined") ? window.event : e;
  return evt;
}
</script>
</head>
<body onselect="return false;">
    <form id="form1" runat="server">
<table id="tbl" height="100%" cellspacing="0" cellpadding="0">
  <tbody>
  <tr>
    <td><a href="javascript:toggleMenu();"><img alt=""  src="images/arrow_left.gif" name="img" width="10" height="30" border="0" id="img"></a></td>
  </tr>
  </tbody>
</table>
    </form>
</body>
</html>
