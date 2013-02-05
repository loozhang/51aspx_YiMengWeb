using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class SysManage_Top : Go
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["ZT_ADMIN"] == null)
            {
                GoTo("Login.aspx", Go.Target.Parent);
            }
    }

    protected void btnLoginOut_Click(object sender, EventArgs e)
    {
        GoTo("Login.aspx?action=logout", Go.Target.Parent);
    }
}