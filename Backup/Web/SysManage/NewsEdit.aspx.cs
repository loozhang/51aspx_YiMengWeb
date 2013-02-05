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

public partial class SysManage_NewsEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("NewsEdit.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                        DataSet ds = bll_NewsType.GetList(" 1=1 ");
                        BindData.BindDropDownList("NewsTypeName", "NewsTypeNo", ds, txtNewsType);
                        this.txtNewsOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                        ShowData();
                    }
                }
            }
        }
    }

    public void ShowData()
    {
        if (Request["NewsID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                WebProject.Model.BaseData.ZT_COM_News model_News = bll_News.GetModel(Int32.Parse(Request["NewsID"].ToString()));
                this.txtBody.Text = model_News.Body.ToString();
                this.txtNewsOrder.Text = model_News.NewsOrder.ToString();
                this.txtNewsType.SelectedValue = model_News.NewsTypeNo.ToString();
                this.txtTitle.Text = model_News.Title.ToString();
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
        if (Request["NewsID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            Boolean fileTypeOK = false;
            String path = Server.MapPath("~/SysManage/IMG/");
            if (txtImgUrl.HasFile == false)
            {
                try
                {
                    WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                    WebProject.Model.BaseData.ZT_COM_News model_News = bll_News.GetModel(Int32.Parse(Request["NewsID"].ToString()));
                    model_News.Body = this.txtBody.Text.Trim();
                    model_News.NewsTypeName = this.txtNewsType.Items[this.txtNewsType.SelectedIndex].Text.ToString();
                    model_News.NewsTypeNo = this.txtNewsType.SelectedValue.ToString();
                    model_News.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_News.LastUpdateDate = DateTime.Now;
                    model_News.NewsOrder = Int32.Parse(this.txtNewsOrder.Text.Trim());
                    model_News.Title = this.txtTitle.Text.Trim();
                    bll_News.Update(model_News);
                    LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "修改新闻", "成功", "新闻标题：" + model_News.Title + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                    MessageBox.ShowAndRedirect(this, "修改信息成功！", "NewsList.aspx");
                }
                catch
                {
                    Response.Redirect("RightsWarn.aspx");
                }
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
                            WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                            WebProject.Model.BaseData.ZT_COM_News model_News = bll_News.GetModel(Int32.Parse(Request["NewsID"].ToString()));
                            model_News.Body = this.txtBody.Text.Trim();
                            model_News.NewsTypeName = this.txtNewsType.Items[this.txtNewsType.SelectedIndex].Text.ToString();
                            model_News.NewsTypeNo = this.txtNewsType.SelectedValue.ToString();
                            model_News.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                            model_News.LastUpdateDate = DateTime.Now;
                            model_News.ImgUrl = SaveFileName;
                            model_News.NewsOrder = Int32.Parse(this.txtNewsOrder.Text.Trim());
                            model_News.Title = this.txtTitle.Text.Trim();
                            bll_News.Update(model_News);
                            LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "修改新闻", "成功", "新闻标题：" + model_News.Title + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                            MessageBox.ShowAndRedirect(this, "修改信息成功！", "NewsList.aspx");
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
    }

    #endregion

    #region 重置事件
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ShowData();
    }
    #endregion

    #region 删除图片事件
    protected void btnSetNoImg_Click(object sender, EventArgs e)
    {
        if (Request["NewsID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                WebProject.Model.BaseData.ZT_COM_News model_News = bll_News.GetModel(Int32.Parse(Request["NewsID"].ToString()));
                if (model_News.ImgUrl.ToString() != "onlinenone.jpg")
                {
                    System.IO.File.Delete(Server.MapPath("IMG/" + model_News.ImgUrl.ToString()));
                    model_News.ImgUrl = "onlinenone.jpg";
                    model_News.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_News.LastUpdateDate = DateTime.Now;
                    bll_News.Update(model_News);
                }
                LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "删除图片", "成功", "新闻标题：" + model_News.Title + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                MessageBox.Show(this, "删除原图片成功！");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
    #endregion
}


