using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class SysManage_End : System.Web.UI.UserControl
{
    protected string ThisYear;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ThisYear = DateTime.Now.Year.ToString();
        }
    }

}
