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

public partial class SysManage_LianJieAdd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("LianJieAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        this.txtLinkOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                    }
                }
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
                MessageBox.Show(this, "请输入链接名称！");
                return;
            }
            if (this.txtLinkUrl.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入链接地址！");
                return;
            }
            int LinkOrder;
            if (this.txtLinkOrder.Text.Trim() == "")
            {
                LinkOrder = 1000;
            }
            else
            {
                double u;
                if (!double.TryParse(this.txtLinkOrder.Text.Trim(), out u))
                {
                    MessageBox.Show(this, "排序必须为数字！");
                    return;
                }
                else
                {
                    LinkOrder = Convert.ToInt32(this.txtLinkOrder.Text.Trim());
                }
            }

            Boolean fileTypeOK = false;
            String path = Server.MapPath("~/SysManage/IMG/");
            if (txtImgUrl.HasFile == false)
            {
                try
                {
                    WebProject.Model.BaseData.ZT_COM_LinkURL model_LinkURL = new WebProject.Model.BaseData.ZT_COM_LinkURL();
                    model_LinkURL.Title = this.txtTitle.Text.Trim();
                    model_LinkURL.LinkUrl = this.txtLinkUrl.Text.Trim();
                    model_LinkURL.ImgUrl = "onlinenone.jpg";
                    model_LinkURL.LinkOrder = Int32.Parse(this.txtLinkOrder.Text.Trim());
                    model_LinkURL.CreateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_LinkURL.CreateDate = DateTime.Now;
                    WebProject.BLL.BaseData.ZT_COM_LinkURL bll_LinkURL = new WebProject.BLL.BaseData.ZT_COM_LinkURL();
                    bll_LinkURL.Add(model_LinkURL);
                    LogManage.WriteLog(Request.UserHostAddress, "链接管理", "添加链接", "成功", "链接标题：" + model_LinkURL.Title + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                    MessageBox.ShowAndRedirect(this, "添加链接成功！", "LianJieList.aspx");
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
                            WebProject.Model.BaseData.ZT_COM_LinkURL model_LinkURL = new WebProject.Model.BaseData.ZT_COM_LinkURL();
                            model_LinkURL.Title = this.txtTitle.Text.Trim();
                            model_LinkURL.LinkUrl = this.txtLinkUrl.Text.Trim();
                            model_LinkURL.ImgUrl = SaveFileName;
                            model_LinkURL.LinkOrder = Int32.Parse(this.txtLinkOrder.Text.Trim());
                            model_LinkURL.CreateBy = SessionUtil.GetAdminSession().AdminNo;
                            model_LinkURL.CreateDate = DateTime.Now;
                            WebProject.BLL.BaseData.ZT_COM_LinkURL bll_LinkURL = new WebProject.BLL.BaseData.ZT_COM_LinkURL();
                            bll_LinkURL.Add(model_LinkURL);
                            LogManage.WriteLog(Request.UserHostAddress, "链接管理", "添加链接", "成功", "链接标题：" + model_LinkURL.Title + ", 创建人：" + SessionUtil.GetAdminSession().AdminNo);
                            MessageBox.ShowAndRedirect(this, "添加链接成功！", "LianJieList.aspx");
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
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            this.txtTitle.Text = "";
            this.txtLinkOrder.Text = "";
            this.txtLinkUrl.Text = "";
        }
    }
    #endregion
}
