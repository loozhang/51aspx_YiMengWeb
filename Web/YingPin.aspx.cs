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

public partial class YingPin : System.Web.UI.Page
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
                ShowZhaoPinInfo();
                ShowWebInfo();
                this.sex1.Checked = true;
            }
        }
    }

    public void ShowZhaoPinInfo()
    {
        if (Request["ZhaoPinID"] + "" == "")
        {
            this.txtPosition.ReadOnly = false;
            this.txtPosition.Enabled = true;
        }
        else
        {
            try
            {
                int ZhaoPinID = Convert.ToInt32(Request.QueryString["ZhaoPinID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_ZhaoPin bll_ZhaoPin = new WebProject.BLL.BaseData.ZT_COM_ZhaoPin();
                WebProject.Model.BaseData.ZT_COM_ZhaoPin model_ZhaoPin = bll_ZhaoPin.GetModel(ZhaoPinID);
                this.txtPosition.Text = model_ZhaoPin.Position.ToString();
                this.txtPosition.ReadOnly = true;
                this.txtPosition.Enabled = false;
            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }


    #region 添加应聘信息
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (this.txtPosition.Text.Trim() == "")
        {
            MessageBox.Show(this, "请输入你要应聘的职位！");
            return;
        }
        else
        {
            if (this.txtName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入你的姓名！");
                return;
            }
            else
            {
                string sex = "1";
                if (this.sex1.Checked == false && this.sex2.Checked == false)
                {
                    MessageBox.Show(this, "请选择性别！");
                    return;
                }
                if (this.sex2.Checked)
                {
                    sex = "0";
                }
                else
                {
                    if (this.txtBirthday.Text.Trim() == "")
                    {
                        MessageBox.Show(this, "请输入你的出生年月！");
                        return;
                    }
                    else
                    {
                        if (this.txtAddress.Text.Trim() == "")
                        {
                            MessageBox.Show(this, "请输入你的现居地址！");
                            return;
                        }
                        else
                        {
                            if (this.txtMobile.Text.Trim() == "")
                            {
                                MessageBox.Show(this, "请填写您的手机号码！");
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
                                    MessageBox.Show(this, "请输入正确的手机号码！");//判断输入框中的值是否为数字和是否溢出
                                    return;
                                }
                                else
                                {
                                    if (CheckString.CheckSqlKeyWord(this.txtAddress.Text) == true || CheckString.CheckSqlKeyWord(this.txtBirthday.Text) == true || CheckString.CheckSqlKeyWord(this.txtEmail.Text) == true || CheckString.CheckSqlKeyWord(this.txtMobile.Text) == true || CheckString.CheckSqlKeyWord(this.txtName.Text) == true || CheckString.CheckSqlKeyWord(this.txtPosition.Text) == true || CheckString.CheckSqlKeyWord(this.txtTelephone.Text) == true)
                                    {
                                        MessageBox.Show(this, "应聘信息内请不要包含非法字符！");
                                        return;
                                    }
                                    WebProject.Model.BaseData.ZT_COM_RenCai model_RenCai = new WebProject.Model.BaseData.ZT_COM_RenCai();
                                    model_RenCai.Address = this.txtAddress.Text.Trim();
                                    model_RenCai.Birthday = Convert.ToDateTime(this.txtBirthday.Text.Trim());
                                    model_RenCai.CreateDate = DateTime.Now;
                                    model_RenCai.Email = this.txtEmail.Text.Trim();
                                    model_RenCai.Mobile = this.txtMobile.Text.Trim();
                                    model_RenCai.Name = this.txtName.Text.Trim();
                                    model_RenCai.Position = this.txtPosition.Text.Trim();
                                    model_RenCai.Sex = sex.ToString();
                                    model_RenCai.Telephone = this.txtTelephone.Text.Trim();
                                    WebProject.BLL.BaseData.ZT_COM_RenCai bll_RenCai = new WebProject.BLL.BaseData.ZT_COM_RenCai();
                                    bll_RenCai.Add(model_RenCai);
                                    if (Request["ZhaoPinID"] != "")
                                    {
                                        try
                                        {
                                            int ZhaoPinID = Convert.ToInt32(Request.QueryString["ZhaoPinID"].ToString());
                                            WebProject.BLL.BaseData.ZT_COM_ZhaoPin bll_ZhaoPin = new WebProject.BLL.BaseData.ZT_COM_ZhaoPin();
                                            WebProject.Model.BaseData.ZT_COM_ZhaoPin model_ZhaoPin = bll_ZhaoPin.GetModel(ZhaoPinID);
                                            model_ZhaoPin.Number += 1;
                                            bll_ZhaoPin.Update(model_ZhaoPin);
                                            MessageBox.ShowAndRedirect(this, "应聘信息填写成功!", "ZhaoPin.aspx");
                                        }
                                        catch
                                        {
                                            Response.Redirect("ErrorPage.aspx");
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Request["ZhaoPinID"] + "" == "")
        {
            Response.Redirect("YingPin.aspx");
        }
        else
        {
            int ZhaoPinID = 0;
            try
            {
                ZhaoPinID = Convert.ToInt32(Request.QueryString["ZhaoPinID"].ToString());
            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
            Response.Redirect("YingPin.aspx?ZhaoPinID=" + ZhaoPinID.ToString());

        }
    }
    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        if (Request["ZhaoPinID"] + "" == "")
        {
            WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
            DataSet ds1 = bll_WebInfo.GetList("FilePath='YingPin.aspx'");
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
        else
        {
            try
            {
                int ZhaoPinID = Convert.ToInt32(Request.QueryString["ZhaoPinID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                DataSet ds = bll_WebInfo.GetList("FilePath='YingPin.aspx?ZhaoPinID="+ZhaoPinID.ToString()+"'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Title = ds.Tables[0].Rows[0]["Title"].ToString();
                    KeyWords = ds.Tables[0].Rows[0]["KeyWords"].ToString();
                    Description = ds.Tables[0].Rows[0]["Description"].ToString();
                }
                else
                {
                    DataSet ds1 = bll_WebInfo.GetList("FilePath='YingPin.aspx'");
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

            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }
    #endregion
}

