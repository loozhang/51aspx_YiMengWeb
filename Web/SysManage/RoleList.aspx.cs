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

public partial class SysManage_RoleList : System.Web.UI.Page
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
                    if (!Communal.CheckQx("RoleList.aspx"))
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


    #region 获取数据
    public void ShowData()
    {
        WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
        DataSet ds = bll_RoleInfo.GetList(" 1=1 ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            this.lblMessage.Visible = false;
            this.GridView1.Visible = true;
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
        }
        else
        {
            this.lblMessage.Visible = true;
            this.GridView1.Visible = false;
        }
    }
    #endregion

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
            if (Session["ZT_ADMIN"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!Communal.CheckQx("RoleDelete.aspx"))
                {
                    Response.Redirect("RightsWarn.aspx");
                }
                else
                {
                    //删除数据库的信息
                    Label ll = (Label)this.GridView1.Rows[e.RowIndex].Cells[1].FindControl("lblRoleID");
                    int RoleID = Convert.ToInt32(ll.Text);
                    WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
                    LogManage.WriteLog(Request.UserHostAddress, "角色管理", "删除角色", "成功", "角色名称：" + bll_RoleInfo.GetModel(RoleID).RoleName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                    bll_RoleInfo.Delete(RoleID);
                    //重新加载信息
                    ShowData();
                }
            }
        }
    }
    #endregion
}
