using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Diagnostics;
//下载于51aspx.com
/// <summary>
///Go 的摘要说明
/// </summary>
public class Go : System.Web.UI.Page
{
    public Go()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    public enum Target
    {
        NewWindow, Me, Parent
    };

    public void MsgBox(string message)
    {
        StringBuilder strScript = new StringBuilder();
        strScript.Append("alert('");
        strScript.Append(message);
        strScript.Append("')");
        JavaScript(strScript.ToString());
    }

    public void GoTo(string url, Target target)
    {
        StringBuilder strScript = new StringBuilder();
        switch (target)
        {
            case Target.Parent:
                strScript.Append("parent.location.href='");
                strScript.Append(url);
                strScript.Append("';");
                break;
            case Target.Me:
                strScript.Append("document.location.href='");
                strScript.Append(url);
                strScript.Append("';");
                break;
            case Target.NewWindow:
                strScript.Append("window.open('");
                strScript.Append(url);
                strScript.Append("');");
                break;
        }
        JavaScript(strScript.ToString());
    }

    public void JavaScript(string script)
    {
        ClientScriptManager CSM = Page.ClientScript;
        string ScriptName = "clientScript";

        if (!CSM.IsClientScriptBlockRegistered(ScriptName))
        {
            StringBuilder strScript = new StringBuilder();
            strScript.Append("<script>");
            strScript.Append(script);
            strScript.Append("</script>");

            CSM.RegisterStartupScript(this.GetType(), ScriptName, strScript.ToString());
        }
    }
}
