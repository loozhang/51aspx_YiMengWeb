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

public partial class SysManage_RongYuList : System.Web.UI.Page
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
                    if (!Communal.CheckQx("RongYuList.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_RongYuType bll_RongYuType = new WebProject.BLL.BaseData.ZT_COM_RongYuType();
                        DataSet ds = bll_RongYuType.GetList(" 1=1 ");
                        BindData.BindDropDownList("所有荣誉", "ALL", "RongYuTypeName", "RongYuTypeNo", ds, txtRongYuType);
                        ShowData(this.txtRongYuType.SelectedValue.ToString());
                        this.btnDeleteSelect.Attributes.Add("onclick", "return confirm('您确认要删除这些记录？');");
                    }
                }
            }
        }
    }

    public void ShowData(string RongYuTypeNo)
    {
        WebProject.BLL.BaseData.ZT_COM_RongYu bll_RongYu = new WebProject.BLL.BaseData.ZT_COM_RongYu();
        DataSet ds = null;
        if (RongYuTypeNo == "ALL")
        {
            ds = bll_RongYu.GetList("");
        }
        else
        {
            ds = bll_RongYu.GetList("RongYuTypeNo='" + RongYuTypeNo + "'");
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
        ShowData(txtRongYuType.SelectedValue.ToString());
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
            if (!Communal.CheckQx("RongYuDelete.aspx"))
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                //删除数据库的信息
                Label ll = (Label)this.GridView1.Rows[e.RowIndex].Cells[1].FindControl("lblRongYuID");
                int RongYuID = Convert.ToInt32(ll.Text);
                WebProject.BLL.BaseData.ZT_COM_RongYu bll_RongYu = new WebProject.BLL.BaseData.ZT_COM_RongYu();
                LogManage.WriteLog(Request.UserHostAddress, "荣誉管理", "删除荣誉", "成功", "荣誉标题：" + bll_RongYu.GetModel(RongYuID).Title + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                bll_RongYu.Delete(RongYuID);
                //删除文件夹的图片
                Label l2 = (Label)this.GridView1.Rows[e.RowIndex].Cells[0].FindControl("lblImgUrl");
                if (l2.Text != "onlinenone.jpg")
                {
                    System.IO.File.Delete(Server.MapPath("IMG/" + l2.Text));
                }
                //重新加载信息
                ShowData(txtRongYuType.SelectedValue.ToString());
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
            if (!Communal.CheckQx("RongYuDelete.aspx"))
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
                        Label ll = (Label)gr.Cells[1].FindControl("lblRongYuID");
                        int RongYuID = Convert.ToInt32(ll.Text);
                        WebProject.BLL.BaseData.ZT_COM_RongYu bll_RongYu = new WebProject.BLL.BaseData.ZT_COM_RongYu();
                        DeleteTitle += bll_RongYu.GetModel(RongYuID).Title + ",";
                        bll_RongYu.Delete(RongYuID);

                        //删除文件夹的图片
                        Label l2 = (Label)gr.Cells[0].FindControl("lblImgUrl");

                        if (l2.Text != "onlinenone.jpg")
                        {
                            System.IO.File.Delete(Server.MapPath("IMG/" + l2.Text));
                        }
                    }
                }
                LogManage.WriteLog(Request.UserHostAddress, "荣誉管理", "删除荣誉", "成功", "荣誉标题：" + DeleteTitle.TrimEnd(',') + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                ShowData(txtRongYuType.SelectedValue.ToString());
            }
        }
    }
    #endregion

    #region 分类的显示
    protected void txtRongYuType_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowData(txtRongYuType.SelectedValue.ToString());
    }
    #endregion
}
