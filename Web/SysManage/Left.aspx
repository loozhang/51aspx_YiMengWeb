<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="SysManage_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>众拓网站后台管理中心</title>
    <link href="CSS/admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
	        background: #80bdcb;
        }
        #tabbar-div {
	        PADDING-LEFT: 10px; BACKGROUND: #278296; PADDING-TOP: 0px; HEIGHT: 25px;
        }
        .tab-front {
	        PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-WEIGHT: bold; BACKGROUND: #80bdcb; PADDING-BOTTOM: 5px; CURSOR: pointer; LINE-HEIGHT: 25px; PADDING-TOP: 5px;
        }

        #main-div {
	        BORDER-RIGHT: #345c65 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #345c65 1px solid; PADDING-LEFT: 5px; BACKGROUND: #ffffff; MARGIN: 5px; BORDER-LEFT: #345c65 1px solid; PADDING-TOP: 5px; BORDER-BOTTOM: #345c65 1px solid;height:350px;
        }
         #main-div1 {
	        PADDING-RIGHT: 5px; PADDING-LEFT: 15px; color: #ffffff; MARGIN: 5px; font-size: 12px; font-family: 宋体;
        }
        
        #main-div {
	        PADDING-RIGHT: 5px; PADDING-BOTTOM: 5px;PADDING-LEFT: 5px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="tabbar-div"><span class="tab-front" style="font-size:12px;">管理菜单</span></div>
        <div id="main-div" style="text-align:left;font-size:12px;">
            <asp:TreeView ID="TreeView1" runat="server" ExpandDepth="0" ShowLines="True" 
                onselectednodechanged="TreeView1_SelectedNodeChanged" 
                ontreenodeexpanded="TreeView1_TreeNodeExpanded">
            </asp:TreeView>
        </div>
        <div id="main-div1">众拓网络网站管理系统</div>
        <div id="main-div">
            <table style="background-color: #80bdcb; width: 150px; text-align:left;" border="0" cellpadding="0" cellspacing="2">
                <tr>
                    <td style="width: 50px; background-color: #ffffff; height: 25px; text-align:center;">网址：</td>
                    <td style="width: 100px; background-color: #ffffff; padding-left:5px;"><a href="http://www.51aspx.com" target="_blank"><span style="color: #000000; text-decoration: underline">www.51aspx.com</span></a></td>
                </tr>
                <tr>
                    <td style="width: 50px; height: 25px; background-color: #ffffff; text-align:center;">电话：</td>
                    <td style="width: 100px; height: 25px;background-color: #ffffff; padding-left:5px;">010-12345678</td>
                </tr>
                <tr>
                    <td style="width: 50px; height: 25px; background-color: #ffffff; text-align:center;">设计：</td>
                    <td style="width: 100px; height: 25px; background-color: #ffffff; padding-left:5px;">众拓网络</td>
                </tr>
            </table>
        </div>
        <script type="text/javascript">
        parent.frames['header-frame'].document.getElementById('load-div').style.display='none';
        </script>
    </form>
</body>
</html>
