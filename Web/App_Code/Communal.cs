using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Web;
using System.Text.RegularExpressions;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Xml;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

/// <summary>
/// 公用类
/// </summary>
public class Communal
{
    public Communal()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    #region 复选框状态
    private static bool _checkBol;
    /// <summary>
    /// 复选框状态
    /// </summary>
    public static bool CheckBol
    {
        set { _checkBol = value; }
        get { return _checkBol; }
    }
    #endregion

    public static void ExportDialog(string One, string two, string three, DataSet ds, Page page)
    {
        string title = DateTime.Now.ToString("yyMMdd") + three + ".xls";
        System.Web.UI.WebControls.DataGrid DataGrid1 = new DataGrid();
        HttpResponse response = HttpContext.Current.Response;

        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();

        StringWriter tw = new StringWriter();
        HtmlTextWriter myWrite = new HtmlTextWriter(tw);

        if (One != "")
            myWrite.WriteLine(One);
        if (two != "")
            myWrite.WriteLine(two);

        DataGrid1.RenderControl(myWrite);

        response.Clear();
        response.Buffer = true;
        response.Charset = "GB2312";
        response.Write("<meta http-equiv=Content-Type content=text/html;charset=GB2312>");
        response.AppendHeader("Content-Disposition", "attachment;filename=" + title);
        response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        response.ContentType = "application/vnd.xls";//Response.ContentType= "application/msword";

        page.EnableViewState = false;

        response.Write(tw.ToString());
        response.End();
    }

    #region 删除时的异常消息
    private static string _deleteMessage = "<script>alert('有相关记录，不能删除,请先删除相关数据');</script>";
    /// <summary>
    /// 删除时的异常消息
    /// </summary>
    public static string DeleteMessage
    {
        get { return _deleteMessage; }
    }
    #endregion

    #region 请选择需要删除的项
    private static string _deleteSelete = "<script>alert('点击多选删除按钮前，请先选择需要删除的项');</script>";

    /// <summary>
    /// 请选择需要删除的项
    /// </summary>
    public static string DeleteSelete
    {
        get { return _deleteSelete; }
    }
    #endregion

    #region 列表中不存在需要清理的项
    private static string _strClear = "<script>alert('列表中不存在需要清理的项!');</script>";
    /// <summary>
    /// 列表中不存在需要清理的项
    /// </summary>
    public static string strClear
    {
        get { return _strClear; }
    }
    #endregion

    #region 返回页面是否有权限访问
    public static bool CheckQx(string ElementLink)
    {
        if (SessionUtil.GetAdminSession().RoleNo + "" == "")
        {
            return false;
        }
        else
        {
            WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
            WebProject.Model.SysManage.ZT_SYS_RoleInfo model_RoleInfo = bll_RoleInfo.GetModel(SessionUtil.GetAdminSession().RoleNo);
            string RoleElements = model_RoleInfo.RoleElements;

            WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
            DataSet ds = bll_ElementInfo.GetList("ElementLink='" + ElementLink + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                string ElementCode = ds.Tables[0].Rows[0]["ElementCode"].ToString();
                if (RoleElements.IndexOf(ElementCode) < 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            else
            {
                return false;
            }
        }
    }
    #endregion
    
    public static string GetUrlPath(System.Uri Url)
    {
        string path = Url.AbsolutePath;
        if (path.Length > 0)
        {
            int i = path.LastIndexOf('/') + 1;
            if (i < path.Length)
            {
                return path.Substring(i);
            }
        }
        return string.Empty;
    }

    #region 验证是否日期格式
    /// <summary>
    /// 验证是否日期格式
    /// </summary>
    public static string CheckDate(string DateOne, string DateTwo)
    {
        string[] DateOneList = DateOne.Split('-');
        if (DateOneList.Length < 3)
        {
            return "输入的日期格式不正确";
        }
        string[] DateTwoList = DateTwo.Split('-');
        if (DateTwoList.Length < 3)
        {
            return "输入的日期格式不正确";
        }
        try
        {
            DateTime dtOne = Convert.ToDateTime(DateOne);
        }
        catch
        {
            return "输入的日期格式不正确";
        }

        try
        {
            DateTime dtTwo = Convert.ToDateTime(DateTwo);
        }
        catch
        {
            return "输入的日期格式不正确";
        }
        return "";
    }
    #endregion


}
