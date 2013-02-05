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

public partial class SysManage_WebInfoEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("WebInfoEdit.aspx"))
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
        if (Request["ID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                WebProject.Model.BaseData.ZT_COM_WebInfo model_WebInfo = bll_WebInfo.GetModel(Int32.Parse(Request["ID"].ToString()));
                this.txtTitle.Text = model_WebInfo.Title.ToString();
                this.txtWebUrl.Text = model_WebInfo.WebURL.ToString();
                this.txtFilePath.Text = model_WebInfo.FilePath.ToString();
                this.txtKeyWords.Text = model_WebInfo.KeyWords.ToString();
                this.txtDescription.Text = model_WebInfo.Description.ToString();
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }

    #region 提交事件
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (this.txtTitle.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入网页标题！");
                return;
            }
            if (this.txtWebUrl.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入链接地址！");
                return;
            }
            if (this.txtKeyWords.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入关键字！");
                return;
            }
            if (this.txtFilePath.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入文件路径！");
                return;
            }
            if (this.txtDescription.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入网页描述！");
                return;
            }
            try
            {
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                WebProject.Model.BaseData.ZT_COM_WebInfo model_WebInfo = bll_WebInfo.GetModel(Int32.Parse(Request["ID"].ToString()));
                model_WebInfo.Title = this.txtTitle.Text.Trim();
                model_WebInfo.WebURL = this.txtWebUrl.Text.Trim();
                model_WebInfo.KeyWords = this.txtKeyWords.Text.Trim();
                model_WebInfo.FilePath = this.txtFilePath.Text.Trim();
                model_WebInfo.Description = this.txtDescription.Text.Trim();
                bll_WebInfo.Update(model_WebInfo);
                LogManage.WriteLog(Request.UserHostAddress, "关键字管理", "修改关键字", "成功", "网页标题：" + model_WebInfo.Title + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                MessageBox.ShowAndRedirect(this, "修改关键字成功！", "WebInfoList.aspx");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
    #endregion

    #region 重置事件
    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            ShowData();
        }
    }
    #endregion
}
