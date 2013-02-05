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

public partial class SysManage_RongYuAdd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("RongYuAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_RongYuType bll_RongYuType = new WebProject.BLL.BaseData.ZT_COM_RongYuType();
                        DataSet ds = bll_RongYuType.GetList(" 1=1 ");
                        BindData.BindDropDownList("RongYuTypeName", "RongYuTypeNo", ds, txtRongYuType);
                        this.txtRongYuOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
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
                MessageBox.Show(this, "请输入荣誉标题！");
                return;
            }
            int RongYuOrder;
            if (this.txtRongYuOrder.Text.Trim() == "")
            {
                RongYuOrder = 1000;
            }
            else
            {
                double u;
                if (!double.TryParse(this.txtRongYuOrder.Text.Trim(), out u))
                {
                    MessageBox.Show(this, "排序必须为数字！");
                    return;
                }
                else
                {
                    RongYuOrder = Convert.ToInt32(this.txtRongYuOrder.Text.Trim());
                }
            }
            if (this.txtBody.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入荣誉内容！");
                return;
            }

            Boolean fileTypeOK = false;
            String path = Server.MapPath("~/SysManage/IMG/");
            if (txtImgUrl.HasFile == false)
            {
                WebProject.Model.BaseData.ZT_COM_RongYu model_RongYu = new WebProject.Model.BaseData.ZT_COM_RongYu();
                model_RongYu.Title = this.txtTitle.Text.Trim();
                if (this.txtRongYuType.Items.Count > 0)
                {
                    model_RongYu.RongYuTypeNo = this.txtRongYuType.SelectedValue.ToString();
                    model_RongYu.RongYuTypeName = this.txtRongYuType.Items[this.txtRongYuType.SelectedIndex].Text.ToString();
                }
                model_RongYu.ImgUrl = "onlinenone.jpg";
                model_RongYu.RongYuOrder = Int32.Parse(this.txtRongYuOrder.Text.Trim());
                model_RongYu.Body = this.txtBody.Text.Trim();
                model_RongYu.CreateBy = SessionUtil.GetAdminSession().AdminNo;
                model_RongYu.CreateDate = DateTime.Now;


                WebProject.BLL.BaseData.ZT_COM_RongYu bll_Rongyu = new WebProject.BLL.BaseData.ZT_COM_RongYu();
                bll_Rongyu.Add(model_RongYu);
                MessageBox.ShowAndRedirect(this, "添加信息成功！", "RongYuList.aspx");
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
                            WebProject.Model.BaseData.ZT_COM_RongYu model_RongYu = new WebProject.Model.BaseData.ZT_COM_RongYu();
                            model_RongYu.Title = this.txtTitle.Text.Trim();
                            if (this.txtRongYuType.Items.Count > 0)
                            {
                                model_RongYu.RongYuTypeNo = this.txtRongYuType.SelectedValue.ToString();
                                model_RongYu.RongYuTypeName = this.txtRongYuType.Items[this.txtRongYuType.SelectedIndex].Text.ToString();
                            }
                            model_RongYu.ImgUrl = SaveFileName;
                            model_RongYu.RongYuOrder = Int32.Parse(this.txtRongYuOrder.Text.Trim());
                            model_RongYu.Body = this.txtBody.Text.Trim();
                            model_RongYu.CreateBy = SessionUtil.GetAdminSession().AdminNo;
                            model_RongYu.CreateDate = DateTime.Now;


                            WebProject.BLL.BaseData.ZT_COM_RongYu bll_RongYu = new WebProject.BLL.BaseData.ZT_COM_RongYu();
                            bll_RongYu.Add(model_RongYu);
                            LogManage.WriteLog(Request.UserHostAddress, "荣誉管理", "添加荣誉", "成功", " 荣誉名称：" + model_RongYu.Title + "操作人：" + SessionUtil.GetAdminSession().AdminNo);
                            MessageBox.ShowAndRedirect(this, "添加信息成功！", "RongYuList.aspx");
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
            this.txtRongYuOrder.Text = "";
            this.txtTitle.Text = "";
            this.txtBody.Text = "";
        }
    }
    #endregion
}
