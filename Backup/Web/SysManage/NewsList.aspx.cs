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

public partial class SysManage_NewsList : System.Web.UI.Page
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
                    if (!Communal.CheckQx("NewsList.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                        DataSet ds = bll_NewsType.GetList(" 1=1 ");
                        BindData.BindDropDownList("所有新闻", "ALL", "NewsTypeName", "NewsTypeNo", ds, txtNewsType);
                        ShowData(this.txtNewsType.SelectedValue.ToString());
                        this.btnDeleteSelect.Attributes.Add("onclick", "return confirm('您确认要删除这些记录？');");
                    }
                }
            }
        }
    }

    public void ShowData(string NewsTypeNo)
    {
        WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
        DataSet ds = null;
        if (NewsTypeNo == "ALL")
        {
            ds = bll_News.GetList(" 1=1 ");
        }
        else
        {
            ds = bll_News.GetList("NewsTypeNo='" + NewsTypeNo + "'");
        }
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
        ShowData(txtNewsType.SelectedValue.ToString());
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
            if (!Communal.CheckQx("NewsDelete.aspx"))
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                //删除数据库的信息
                Label ll = (Label)this.GridView1.Rows[e.RowIndex].Cells[1].FindControl("lblNewsID");
                int NewsID = Convert.ToInt32(ll.Text);
                WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "删除新闻", "成功", "新闻标题：" + bll_News.GetModel(NewsID).Title + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);

                bll_News.Delete(NewsID);
                //删除文件夹的图片
                Label l2 = (Label)this.GridView1.Rows[e.RowIndex].Cells[0].FindControl("lblImgUrl");
                if (l2.Text != "onlinenone.jpg")
                {
                    System.IO.File.Delete(Server.MapPath("IMG/" + l2.Text));
                }
                //重新加载信息
                ShowData(txtNewsType.SelectedValue.ToString());
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

    #region 搜索
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (this.txtTitle.Text.Trim() != "")
        {
            WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
            DataSet ds = bll_News.GetList("Title like '%" + this.txtTitle.Text.Trim() + "%'");
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
        else
        {
            this.txtTitle.Text = "请在此输入你要新闻标题";
        }
    }

    #endregion

    #region 截取

    public string sub(string message)
    {
        if (message.Length > 15)
        {
            message = message.Substring(0, 15) + "...";
            return message;
        }

        return message;
    }

    public string sub1(string message)
    {
        if (message.Length > 30)
        {
            message = message.Substring(0, 30) + "...";
            return message;
        }

        return message;
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
            if (!Communal.CheckQx("NewsDelete.aspx"))
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
                        Label ll = (Label)gr.Cells[1].FindControl("lblNewsID");
                        int NewsID = Convert.ToInt32(ll.Text);
                        WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                        DeleteTitle += bll_News.GetModel(NewsID).Title + ",";
                        bll_News.Delete(NewsID);

                        //删除文件夹的图片
                        Label l2 = (Label)gr.Cells[0].FindControl("lblImgUrl");

                        if (l2.Text != "onlinenone.jpg")
                        {
                            System.IO.File.Delete(Server.MapPath("IMG/" + l2.Text));
                        }
                    }
                }
                LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "删除新闻", "成功", "新闻标题：" + DeleteTitle.TrimEnd(',') + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                ShowData(txtNewsType.SelectedValue.ToString());
            }
        }
    }
    #endregion

    #region 分类的显示
    protected void txtNewsType_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowData(txtNewsType.SelectedValue.ToString());
    }
    #endregion
}

