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

public partial class LiuYan : System.Web.UI.Page
{
    //用于动态设置页面标题、关键字、描述
    protected string Title;
    protected string KeyWords;
    protected string Description;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string url = Request.Url.ToString().ToLower();
            if (CheckString.CheckSqlKeyWord(url) == true)
            {
                MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + "请不要输入非法字段", "Index.aspx");
            }
            else
            {
                sex1.Checked = true;
                ShowWebInfo();
            }
        }
    }

    #region 添加留言


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (this.txtMainInfo.Text.Trim() == "")
        {
            MessageBox.Show(this, "请填写留言主题");
            return;
        }
        else
        {
            if (this.txtName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请填写您的姓名");
                return;
            }
            else
            {
                string sex = "1";
                if (this.sex1.Checked == false && this.sex2.Checked == false)
                {
                    MessageBox.Show(this, "请选择性别");
                    return;
                }
                if (this.sex2.Checked)
                {
                    sex = "0";
                }
                else
                {
                    if (this.txtMobile.Text.Trim() == "")
                    {
                        MessageBox.Show(this, "请填写您的手机号码");
                        return;
                    }
                    else
                    {
                        double u;
                        if (!double.TryParse(this.txtMobile.Text, out u))
                        {
                            MessageBox.Show(this, "手机号码必须为数字！");
                            return;
                        }
                        if (u <= 13000000000 || u >= 19000000000)
                        {
                            MessageBox.Show(this, "请填写正确的手机号码！");//判断输入框中的值是否为数字和是否溢出
                            return;
                        }
                        else
                        {
                            if (this.txtCompanyName.Text.Trim() == "")
                            {
                                MessageBox.Show(this, "请填写您的单位名称");
                                return;
                            }
                            else
                            {
                                if (this.txtAddress.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtBody.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtCompanyName.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtEmail.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtFax.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtMailNum.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtMainInfo.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtMobile.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtName.Text.Trim().ToLower().IndexOf("script") > 0 || this.txtTelephone.Text.Trim().ToLower().IndexOf("script") > 0)
                                {
                                    MessageBox.Show(this, "留言信息内请不要包含非法字符！");
                                    return;
                                }
                                if (CheckString.CheckSqlKeyWord(this.txtAddress.Text)==true || CheckString.CheckSqlKeyWord(this.txtBody.Text)==true || CheckString.CheckSqlKeyWord(this.txtCompanyName.Text)==true || CheckString.CheckSqlKeyWord(this.txtEmail.Text)==true || CheckString.CheckSqlKeyWord(this.txtFax.Text)==true || CheckString.CheckSqlKeyWord(this.txtMailNum.Text)==true || CheckString.CheckSqlKeyWord(this.txtMainInfo.Text)==true || CheckString.CheckSqlKeyWord(this.txtMobile.Text)==true || CheckString.CheckSqlKeyWord(this.txtName.Text)==true || CheckString.CheckSqlKeyWord(this.txtTelephone.Text)==true)
                                {
                                    MessageBox.Show(this, "留言信息内请不要包含非法字符！");
                                    return;
                                }
                                WebProject.BLL.BaseData.ZT_COM_LiuYan bll_LiuYan = new WebProject.BLL.BaseData.ZT_COM_LiuYan();
                                WebProject.Model.BaseData.ZT_COM_LiuYan model_LiuYan = new WebProject.Model.BaseData.ZT_COM_LiuYan();
                                model_LiuYan.Address = this.txtAddress.Text.Trim();
                                model_LiuYan.Body = this.txtBody.Text.Trim();
                                model_LiuYan.CompanyName = this.txtCompanyName.Text.Trim();
                                model_LiuYan.Email = this.txtEmail.Text.Trim();
                                model_LiuYan.Fax = this.txtFax.Text.Trim();
                                model_LiuYan.MailNum = this.txtMailNum.Text.Trim();
                                model_LiuYan.MainInfo = this.txtMainInfo.Text.Trim();
                                model_LiuYan.Mobile = this.txtMobile.Text.Trim();
                                model_LiuYan.Name = this.txtName.Text.Trim();
                                model_LiuYan.Telephone = this.txtTelephone.Text.Trim();
                                model_LiuYan.Sex = sex.ToString();
                                bll_LiuYan.Add(model_LiuYan);
                                MessageBox.ShowAndRedirect(this, "留言填写成功!", "Index.aspx");
                            }
                        }
                    }
                }
            }
        }
    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("LiuYan.aspx");
    }

    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
        DataSet ds1 = bll_WebInfo.GetList("FilePath='LiuYan.aspx'");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Title = ds1.Tables[0].Rows[0]["Title"].ToString();
            KeyWords = ds1.Tables[0].Rows[0]["KeyWords"].ToString();
            Description = ds1.Tables[0].Rows[0]["Description"].ToString();
        }
        else
        {
            WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
            DataSet ds2 = bll_WebMainInfo.GetList(" 1=1 ");
            if (ds2.Tables[0].Rows.Count > 0)
            {
                Title = ds2.Tables[0].Rows[0]["Title"].ToString();
                KeyWords = ds2.Tables[0].Rows[0]["KeyWords"].ToString();
                Description = ds2.Tables[0].Rows[0]["Description"].ToString();
            }
        }
    }
    #endregion
}

