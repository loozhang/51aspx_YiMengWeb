﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class SysManage_TaskEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                        string url = Request.Url.ToString();
                        if (CheckString.CheckSqlKeyWord(url) == true)
                        {
                            MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + ",请不要输入非法字段！", "Login.aspx");
                        }
                        else
                        { }
    }
}
