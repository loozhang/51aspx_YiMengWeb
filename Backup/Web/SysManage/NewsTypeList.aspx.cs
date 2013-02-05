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

public partial class SysManage_NewsTypeList : System.Web.UI.Page
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
                    if (!Communal.CheckQx("NewsTypeList.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        ShowData();
                        this.btnDeleteSelect.Attributes.Add("onclick", "return confirm('您确认要删除这些记录？');");
                    }
                }
            }
        }
    }

    public void ShowData()
    {
        WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
        DataSet ds = bll_NewsType.GetList("");
        if (ds.Tables[0].Rows.Count > 0)
        {
            this.lblMessage.Visible = false;
            this.btnDeleteSelect.Visible = true;
            this.GridView1.Visible = true;
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
        }
        else
        {
            this.lblMessage.Visible = true;
            this.btnDeleteSelect.Visible = false;
            this.GridView1.Visible = false;
        }
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
            if (!Communal.CheckQx("NewsTypeDelete.aspx"))
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                //删除数据库的信息
                Label ll = (Label)this.GridView1.Rows[e.RowIndex].Cells[1].FindControl("lblNewsTypeID");
                int NewsTypeID = Convert.ToInt32(ll.Text);
                WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "删除新闻分类", "成功", "新闻分类名称：" + bll_NewsType.GetModel(NewsTypeID).NewsTypeName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                bll_NewsType.Delete(NewsTypeID);
                //重新加载信息
                ShowData();
            }
        }
    }
    #endregion

    #region 全选

    protected void SelectAll_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox all = (CheckBox)sender;
        if (all.Checked)
        {
            foreach (GridViewRow gr in this.GridView1.Rows)
            {
                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("Select");
                cb.Checked = true;
            }
        }
        else
        {
            foreach (GridViewRow gr in this.GridView1.Rows)
            {
                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("Select");
                cb.Checked = false;
            }
        }
    }

    #endregion

    #region 删除选中的项
    protected void btnDeleteSelect_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (!Communal.CheckQx("NewsTypeDelete.aspx"))
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                string DeleteTitle = "";
                foreach (GridViewRow gr in this.GridView1.Rows)
                {
                    CheckBox cb = (CheckBox)gr.Cells[1].FindControl("Select");
                    if (cb.Checked)
                    {
                        //删除数据库信息
                        Label ll = (Label)gr.Cells[1].FindControl("lblNewsTypeID");
                        int NewsTypeID = Convert.ToInt32(ll.Text);
                        WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                        DeleteTitle += bll_NewsType.GetModel(NewsTypeID).NewsTypeName + ",";
                        bll_NewsType.Delete(NewsTypeID);
                    }
                }
                LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "删除新闻分类", "成功", "新闻分类名称：" + DeleteTitle.TrimEnd(',') + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                ShowData();
            }
        }
    }
    #endregion
}


