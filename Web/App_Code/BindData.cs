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
/// PageBase ��ժҪ˵��
/// </summary>
public class BindData : System.Web.UI.Page
{
    public BindData()
    {
        //
        // TODO: �ڴ˴���ӹ��캯���߼�
        //
    } 

    /// <summary>
    /// ��DropDownList�ؼ�����ʾ����,DropDownList�ؼ�Value,Textֵ���ֱ���ڵ���str_Value,str_Textֵ
    /// </summary>
    /// <param name="str_Value">��DropDownList�ؼ�Valueֵ���Ӧ���ݿ���ֶ���</param>
    /// <param name="str_Text">��DropDownList�ؼ�Textֵ���Ӧ���ݿ���ֶ���</param>
    /// <param name="ds">Select-SQL����ȡ������Դ</param>
    /// <param name="myDropDownList">DropDownList�ؼ�idֵ</param>
    public static void BindDropDownList(string str_Text, string str_Value, DataSet ds, DropDownList myDropDownList)
    {
        myDropDownList.DataSource = ds.Tables[0].DefaultView;
        myDropDownList.DataValueField = str_Value;
        myDropDownList.DataTextField = str_Text;
        myDropDownList.DataBind();
    }

    /// <summary>
    /// ��DropDownList�ؼ�����ʾ����,DropDownList�ؼ�Value,Textֵ���ֱ���ڵ���str_Value,str_Textֵ
    /// </summary>
    /// <param name="Text">��DropDownList�ؼ�Ĭ����</param>
    /// <param name="str_Value">��DropDownList�ؼ�Valueֵ���Ӧ���ݿ���ֶ���</param>
    /// <param name="str_Text">��DropDownList�ؼ�Textֵ���Ӧ���ݿ���ֶ���</param>
    /// <param name="ds">Select-SQL����ȡ������Դ</param>
    /// <param name="myDropDownList">DropDownList�ؼ�idֵ</param>
    public static void BindDropDownList(string Text,string Value,string str_Text, string str_Value, DataSet ds, DropDownList myDropDownList)
    {
        myDropDownList.DataSource = ds.Tables[0].DefaultView;
        myDropDownList.DataValueField = str_Value;
        myDropDownList.DataTextField = str_Text;
        myDropDownList.DataBind();
        myDropDownList.Items.Insert(0, new ListItem(Text, Value));
    }
}
