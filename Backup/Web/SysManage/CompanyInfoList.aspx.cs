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

public partial class SysManage_CompanyInfoList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string url = Request.Url.ToString();
        if (CheckString.CheckSqlKeyWord(url) == true)
        {
            MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + ",请不要输入非法字段！", "Login.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                if (Session["ZT_ADMIN"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (!Communal.CheckQx("CompanyInfoList.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        ShowData();
                    }

                }
            }
        }
    }

    public void ShowData()
    {
        WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
        DataSet ds = bll_CompanyInfo.GetList("");
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }

    #region 分页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ShowData();
    }
    #endregion

    #region 删除的确认
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex <= -1)
            return;
        LinkButton imgbtnDelete = e.Row.FindControl("btnDelete") as LinkButton;
        imgbtnDelete.Attributes.Add("onclick", "return confirm('您确认要删除这条记录？');");
    }
    #endregion

    #region 删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (!Communal.CheckQx("CompanyInfoDelete.aspx"))
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                //删除数据库的信息
                Label ll = (Label)this.GridView1.Rows[e.RowIndex].Cells[1].FindControl("lblInfoID");
                int InfoID = Convert.ToInt32(ll.Text);
                WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
                LogManage.WriteLog(Request.UserHostAddress, "公司信息管理", "删除公司信息", "成功", "信息标题：" + bll_CompanyInfo.GetModel(InfoID).Title + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                bll_CompanyInfo.Delete(InfoID);
                //删除文件夹的图片
                Label l2 = (Label)this.GridView1.Rows[e.RowIndex].Cells[0].FindControl("lblImgUrl");
                if (l2.Text != "onlinenone.jpg")
                {
                    System.IO.File.Delete(Server.MapPath("IMG/" + l2.Text));
                }
                //重新加载信息
                ShowData();
            }
        }
    }
    #endregion
}
