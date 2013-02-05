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

public partial class SysManage_NewsAdd : System.Web.UI.Page
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
            if (!this.IsPostBack)
            {
                if (Session["ZT_ADMIN"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (!Communal.CheckQx("NewsAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                        DataSet ds = bll_NewsType.GetList(" 1=1 ");
                        BindData.BindDropDownList("NewsTypeName", "NewsTypeNo", ds, txtNewsType);
                        this.txtNewsOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                    }
                }
            }
        }
    }

    #region 提交事件
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (this.txtTitle.Text.Trim() == "")
        {
            MessageBox.Show(this, "请输入新闻标题！");
            return;
        }
        int NewsOrder;
        if (this.txtNewsOrder.Text.Trim() == "")
        {
            NewsOrder = 1000;
        }
        else
        {
            double u;
            if (!double.TryParse(this.txtNewsOrder.Text.Trim(), out u))
            {
                MessageBox.Show(this, "排序必须为数字！");
                return;
            }
            else
            {
                NewsOrder = Convert.ToInt32(this.txtNewsOrder.Text.Trim());
            }
        }
        if (this.txtBody.Text.Trim() == "")
        {
            MessageBox.Show(this, "请输入新闻内容！");
            return;
        }

        Boolean fileTypeOK = false;
        String path = Server.MapPath("~/SysManage/IMG/");
        if (txtImgUrl.HasFile == false)
        {
            WebProject.Model.BaseData.ZT_COM_News model_News = new WebProject.Model.BaseData.ZT_COM_News();
            model_News.Body = this.txtBody.Text.Trim();
            model_News.NewsTypeName = this.txtNewsType.Items[this.txtNewsType.SelectedIndex].Text.ToString();
            model_News.NewsTypeNo = this.txtNewsType.SelectedValue.ToString();
            model_News.CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_News.CreateDate = DateTime.Now;
            model_News.ImgUrl = "onlinenone.jpg";
            model_News.NewsOrder = Int32.Parse(this.txtNewsOrder.Text.Trim());
            model_News.Title = this.txtTitle.Text.Trim();
            WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
            bll_News.Add(model_News);
            LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "添加新闻", "成功", "新闻标题：" + model_News.Title + ", 创建人：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "添加信息成功！", "NewsList.aspx");
        }
        if (txtImgUrl.HasFile == true)
        {
            String fileExtension = System.IO.Path.GetExtension(txtImgUrl.FileName).ToLower();
            String[] allowedExtensions = { ".bmp", ".jpg", ".jpeg", ".png", ".gif" };
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileTypeOK = true;
                    break;
                }
            }
            if (fileTypeOK == false)
            {
                MessageBox.Show(this, "你要上传的文件类型不符合要求！");
                return;
            }
            if (fileTypeOK == true)
            {
                if (txtImgUrl.PostedFile.ContentLength > 10240000)
                {
                    MessageBox.Show(this, "你选择上传的文件不能大于10M，请重新选择！");
                    return;
                }
                if (txtImgUrl.PostedFile.ContentLength <= 10240000)
                {
                    try
                    {
                        string SaveFileName = DateTime.Now.ToString().Replace("-", "").Replace(" ", "").Replace(":", "") + fileExtension;
                        txtImgUrl.PostedFile.SaveAs(path + SaveFileName);
                        WebProject.Model.BaseData.ZT_COM_News model_News = new WebProject.Model.BaseData.ZT_COM_News();
                        model_News.Body = this.txtBody.Text.Trim();
                        model_News.NewsTypeName = this.txtNewsType.Items[this.txtNewsType.SelectedIndex].Text.ToString();
                        model_News.NewsTypeNo = this.txtNewsType.SelectedValue.ToString();
                        model_News.CreateBy = SessionUtil.GetAdminSession().AdminNo;
                        model_News.CreateDate = DateTime.Now;
                        model_News.ImgUrl = SaveFileName;
                        model_News.NewsOrder = Int32.Parse(this.txtNewsOrder.Text.Trim());
                        model_News.Title = this.txtTitle.Text.Trim();
                        WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                        bll_News.Add(model_News);
                        LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "添加新闻", "成功", "新闻标题：" + model_News.Title + ", 创建人：" + SessionUtil.GetAdminSession().AdminNo);
                        MessageBox.ShowAndRedirect(this, "添加信息成功！", "NewsList.aspx");
                    }
                    catch (Exception)
                    {
                        MessageBox.Show(this, "文件上传失败！");
                        return;
                    }
                }
            }
        }
    }
    #endregion

    #region 重置事件
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.txtNewsOrder.Text = "";
        this.txtTitle.Text = "";
        this.txtBody.Text = "";
    }
    #endregion
}

