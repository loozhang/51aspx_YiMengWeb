using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// PageBase 的摘要说明
/// </summary>
public class BindData : System.Web.UI.Page
{
    public BindData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    } 

    /// <summary>
    /// 绑定DropDownList控件并显示数据,DropDownList控件Value,Text值将分别等于等于str_Value,str_Text值
    /// </summary>
    /// <param name="str_Value">绑定DropDownList控件Value值相对应数据库表字段名</param>
    /// <param name="str_Text">绑定DropDownList控件Text值相对应数据库表字段名</param>
    /// <param name="ds">Select-SQL语句获取的数据源</param>
    /// <param name="myDropDownList">DropDownList控件id值</param>
    public static void BindDropDownList(string str_Text, string str_Value, DataSet ds, DropDownList myDropDownList)
    {
        myDropDownList.DataSource = ds.Tables[0].DefaultView;
        myDropDownList.DataValueField = str_Value;
        myDropDownList.DataTextField = str_Text;
        myDropDownList.DataBind();
    }

    /// <summary>
    /// 绑定DropDownList控件并显示数据,DropDownList控件Value,Text值将分别等于等于str_Value,str_Text值
    /// </summary>
    /// <param name="Text">绑定DropDownList控件默认项</param>
    /// <param name="str_Value">绑定DropDownList控件Value值相对应数据库表字段名</param>
    /// <param name="str_Text">绑定DropDownList控件Text值相对应数据库表字段名</param>
    /// <param name="ds">Select-SQL语句获取的数据源</param>
    /// <param name="myDropDownList">DropDownList控件id值</param>
    public static void BindDropDownList(string Text,string Value,string str_Text, string str_Value, DataSet ds, DropDownList myDropDownList)
    {
        myDropDownList.DataSource = ds.Tables[0].DefaultView;
        myDropDownList.DataValueField = str_Value;
        myDropDownList.DataTextField = str_Text;
        myDropDownList.DataBind();
        myDropDownList.Items.Insert(0, new ListItem(Text, Value));
    }
}
