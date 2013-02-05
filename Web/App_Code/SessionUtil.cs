using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

/// <summary>
/// SessUtil 的摘要说明
/// </summary>
public class SessionUtil
{
    public SessionUtil()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    //
    //  当前已登录管理员的基本信息。
    //    
    public static void SaveAdminSession(AdminSession adminSession)
    {
        HttpContext.Current.Session["ZT_ADMIN"] = adminSession;
    }

    public static AdminSession GetAdminSession()
    {
        try
        {
            object o = HttpContext.Current.Session["ZT_ADMIN"];
            return (o as AdminSession);
        }
        catch 
        {
            return null;
        }
    }

    public static void RemoveAdminSession()
    {
        object o = HttpContext.Current.Session["ZT_ADMIN"];
        if (o != null) HttpContext.Current.Session.Remove("ZT_ADMIN");
    }
}

public class MissSessionException : Exception
{
    public MissSessionException() : base() { }
    public MissSessionException(string message) : base(message) { }
    public MissSessionException(string message, Exception inner) : base(message, inner) { }
}

