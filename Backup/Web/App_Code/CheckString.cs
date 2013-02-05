using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
///StringSqlCheck 的摘要说明
/// </summary>
public class CheckString
{
    public CheckString()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    public static bool CheckSqlKeyWord(string txtString)
    { 
        string txtStringToLower=txtString.Trim().ToLower();
        if (txtStringToLower.IndexOf("script") > 0 || txtStringToLower.IndexOf("insert") > 0 || txtStringToLower.IndexOf("select") > 0 || txtStringToLower.IndexOf("delete") > 0 || txtStringToLower.IndexOf("update") > 0 || txtStringToLower.IndexOf("*") > 0 || txtStringToLower.IndexOf("count") > 0 || txtStringToLower.IndexOf("and") > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
