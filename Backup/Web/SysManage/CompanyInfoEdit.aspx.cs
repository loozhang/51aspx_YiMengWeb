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

public partial class SysManage_CompanyInfoEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("CompanyInfoEdit.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        this.txtInfoOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                        ShowData();
                    }
                }
            }
        }
    }

    public void ShowData()
    {
        if (Request["InfoID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
                WebProject.Model.BaseData.ZT_COM_CompanyInfo model_CompanyInfo = bll_CompanyInfo.GetModel(Int32.Parse(Request["InfoID"].ToString()));
                this.txtBody.Text = model_CompanyInfo.Body.ToString();
                this.txtInfoOrder.Text = model_CompanyInfo.InfoOrder.ToString();
                this.txtTitle.Text = model_CompanyInfo.Title.ToString();
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
                MessageBox.Show(this, "请输入信息标题！");
                return;
            }
            int InfoOrder;
            if (this.txtInfoOrder.Text.Trim() == "")
            {
                InfoOrder = 1000;
            }
            else
            {
                double u;
                if (!double.TryParse(this.txtInfoOrder.Text.Trim(), out u))
                {
                    MessageBox.Show(this, "排序必须为数字！");
                    return;
                }
                else
                {
                    InfoOrder = Convert.ToInt32(this.txtInfoOrder.Text.Trim());
                }
            }
            if (this.txtBody.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入信息介绍！");
                return;
            }

            if (Request["InfoID"] + "" == "")
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                Boolean fileTypeOK = false;
                String path = Server.MapPath("~/SysManage/IMG/");
                if (txtImgUrl.HasFile == false)
                {
                    WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
                    WebProject.Model.BaseData.ZT_COM_CompanyInfo model_CompanyInfo = bll_CompanyInfo.GetModel(Int32.Parse(Request["InfoID"].ToString()));
                    model_CompanyInfo.Body = this.txtBody.Text.Trim();
                    model_CompanyInfo.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_CompanyInfo.LastUpdateDate = DateTime.Now;
                    model_CompanyInfo.InfoOrder = Int32.Parse(this.txtInfoOrder.Text.Trim());
                    model_CompanyInfo.Title = this.txtTitle.Text.Trim();
                    bll_CompanyInfo.Update(model_CompanyInfo);
                    LogManage.WriteLog(Request.UserHostAddress, "公司信息管理", "修改公司信息", "成功", "信息标题：" + model_CompanyInfo.Title + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                    MessageBox.ShowAndRedirect(this, "修改信息成功！", "CompanyInfoList.aspx");
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
                                WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
                                WebProject.Model.BaseData.ZT_COM_CompanyInfo model_CompanyInfo = bll_CompanyInfo.GetModel(Int32.Parse(Request["InfoID"].ToString()));
                                model_CompanyInfo.Body = this.txtBody.Text.Trim();
                                model_CompanyInfo.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                                model_CompanyInfo.LastUpdateDate = DateTime.Now;
                                model_CompanyInfo.ImgUrl = SaveFileName;
                                model_CompanyInfo.InfoOrder = Int32.Parse(this.txtInfoOrder.Text.Trim());
                                model_CompanyInfo.Title = this.txtTitle.Text.Trim();
                                bll_CompanyInfo.Update(model_CompanyInfo);
                                LogManage.WriteLog(Request.UserHostAddress, "公司信息管理", "修改公司信息", "成功", "信息标题：" + model_CompanyInfo.Title + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                                MessageBox.ShowAndRedirect(this, "修改信息成功！", "CompanyInfoList.aspx");
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

    #region 删除图片事件
    protected void btnSetNoImg_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (Request["InfoID"] + "" == "")
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
                WebProject.Model.BaseData.ZT_COM_CompanyInfo model_CompanyInfo = bll_CompanyInfo.GetModel(Int32.Parse(Request["InfoID"].ToString()));
                if (model_CompanyInfo.ImgUrl.ToString() != "onlinenone.jpg")
                {
                    System.IO.File.Delete(Server.MapPath("IMG/" + model_CompanyInfo.ImgUrl.ToString()));
                    model_CompanyInfo.ImgUrl = "onlinenone.jpg";
                    model_CompanyInfo.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_CompanyInfo.LastUpdateDate = DateTime.Now;
                    bll_CompanyInfo.Update(model_CompanyInfo);
                    LogManage.WriteLog(Request.UserHostAddress, "公司信息管理", "删除图片", "成功", "信息标题：" + model_CompanyInfo.Title + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                }
                MessageBox.Show(this, "删除原图片成功！");
            }
        }
    }
    #endregion

}
