<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JC_Upload.aspx.cs" Inherits="JC_Upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>������վ��̨��������</title>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

</head>
<body bgcolor="#d4d0c8" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0">
    <form id="form1" name="form1" runat="server">
    <div id="resultPanel" runat="server" style="font-size:12px; color:Red">�ϴ��ɹ������ȷ������༭��</div>
    <input id="InsertFilePath" type="hidden" runat="server" />
    <div id="uploadPanel" runat="server">
   <asp:FileUpload ID="FileUpload1" name="FileUpload1" Width="70%" runat="server"/>
    <asp:Button ID="btn_upload" runat="server" Text="�ϴ�" onclick="btn_upload_Click" /> 
    </div>
    </form>
</body>
</html>
