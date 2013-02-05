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
//下载于51aspx.com
public partial class SysManage_Login : System.Web.UI.Page
{
    //用于动态设置页面标题
    protected string PageTitle;
    protected string PageKeyWords;
    protected string PageDescription;
    protected string PageUrl;
    protected string ThisYear;

    protected void Page_Load(object sender, EventArgs e)
    {
        string url = Request.Url.ToString();
        if (CheckString.CheckSqlKeyWord(url) == true)
        {
            MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + ",请不要输入非法字段！", "Login.aspx");
        }
        else
        {
            ShowWebInfo();
            if (!this.IsPostBack)
            {
                if (Request["action"] != null)
                {
                    if (Request["action"].ToString() == "logout")
                    {
                        LogManage.WriteLog(Request.UserHostAddress, "登陆退出", "系统退出", "成功", " 管理员退出系统");
                        SessionUtil.RemoveAdminSession();
                        this.txtAdminName.Text = "";
                        this.txtPassword.Text = "";
                        this.txtCheckNum.Text = "";                        
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {
                    if (SessionUtil.GetAdminSession() != null)
                    {
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        this.txtAdminName.Text = "";
                        this.txtPassword.Text = "";
                        this.txtCheckNum.Text = "";                        
                    }
                }
            }
        }
    }

    #region  登录事件
    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        if (this.txtAdminName.Text.Trim() == "")   //当用户名为空时触发的事件
        {
            MessageBox.Show(this, "用户名不能为空，请重新输入！");
            this.txtPassword.Text = "";
            this.txtCheckNum.Text = "";
            this.txtAdminName.Focus();
        }
        else
        {
            if (this.txtPassword.Text.Trim() == "")   //当密码为空时触发的事件
            {
                MessageBox.Show(this, "密码不能为空，请重新输入！");
                this.txtCheckNum.Text = "";
                this.txtPassword.Focus();
            }
            else
            {
                if (this.txtCheckNum.Text.Trim() == "")   //当验证码为空时触发的事件
                {
                    MessageBox.Show(this, "验证码不能为空，请重新输入！");
                    this.txtPassword.Text = "";
                    this.txtPassword.Focus();
                }
                else  //当所有项全部不为空时触发的事件
                {
                    if (this.txtCheckNum.Text.Trim().ToLower() != Session["validate_code"].ToString().ToLower())  //判断用户填写的验证码和生成的验证码是否一致，当不一致时触发的事件
                    {
                        MessageBox.Show(this, "验证码不正确，请重新输入！");
                        this.txtPassword.Text = "";
                        this.txtCheckNum.Text = "";
                        this.txtPassword.Focus();
                    }
                    else  //判断用户填写的验证码和生成的验证码是否一致，当一致时触发的事件
                    {
                        //判断用户名和密码中是否含有非法字段
                        if (CheckString.CheckSqlKeyWord(this.txtAdminName.Text) == true || CheckString.CheckSqlKeyWord(this.txtPassword.Text) == true)
                        {
                            MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + ",请不要输入非法字段！", "Login.aspx");
                        }
                        else
                        {
                            WebProject.BLL.SysManage.ZT_SYS_AdminInfo bll_AdminInfo = new WebProject.BLL.SysManage.ZT_SYS_AdminInfo();
                            DataSet ds = bll_AdminInfo.GetList("AdminNo='" + this.txtAdminName.Text.Trim() + "'");
                            if (ds.Tables[0].Rows.Count == 0)  //当用户名不存在触发的事件
                            {
                                MessageBox.Show(this, "用户名不存在，请重新输入！");
                                this.txtAdminName.Text = "";
                                this.txtPassword.Text = "";
                                this.txtCheckNum.Text = "";
                                this.txtAdminName.Focus();
                            }
                            else if (ds.Tables[0].Rows.Count > 0)
                            {
                                string PassWord = MD5Encrypt.MD5(this.txtPassword.Text.Trim());
                                if (ds.Tables[0].Rows[0]["Password"].ToString() != PassWord)
                                {
                                    MessageBox.Show(this, "密码错误，请重新输入！");
                                    this.txtPassword.Text = "";
                                    this.txtCheckNum.Text = ""; 
                                    this.txtPassword.Focus();
                                }
                                else
                                {
                                    if (ds.Tables[0].Rows[0]["IsLockedOut"].ToString() == "1")
                                    {
                                        MessageBox.Show(this, "此帐号已被禁用！");
                                        this.txtPassword.Text = "";
                                        this.txtCheckNum.Text = "";
                                        this.txtPassword.Focus();
                                    }
                                    else
                                    {
                                        if (ds.Tables[0].Rows[0]["RoleNo"].ToString() == "")
                                        {
                                            MessageBox.Show(this, "此帐号还没有被分配权限！");
                                            this.txtPassword.Text = "";
                                            this.txtCheckNum.Text = "";
                                            this.txtPassword.Focus();
                                        }
                                        else
                                        {
                                            int AdminID = 0;
                                            string AdminNo = "", AdminName = "", RoleNo = "";
                                            if (ds.Tables[0].Rows[0]["AdminID"].ToString() != "")
                                            {
                                                AdminID = Convert.ToInt32(ds.Tables[0].Rows[0]["AdminID"]);
                                            }
                                            if (ds.Tables[0].Rows[0]["AdminNo"].ToString() != "")
                                            {
                                                AdminNo = ds.Tables[0].Rows[0]["AdminNo"].ToString();
                                            }
                                            if (ds.Tables[0].Rows[0]["AdminName"].ToString() != "")
                                            {
                                                AdminName = ds.Tables[0].Rows[0]["AdminName"].ToString();
                                            }
                                            if (ds.Tables[0].Rows[0]["RoleNo"].ToString() != "")
                                            {
                                                RoleNo = ds.Tables[0].Rows[0]["RoleNo"].ToString();
                                            }
                                            WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
                                            string RoleName = "";
                                            DataSet ds2 = bll_RoleInfo.GetList(" RoleNo='" + RoleNo + "'");
                                            if (ds2.Tables[0].Rows.Count > 0)
                                            {
                                                if (ds2.Tables[0].Rows[0]["RoleName"].ToString() != "")
                                                {
                                                    RoleName = ds2.Tables[0].Rows[0]["RoleName"].ToString();
                                                }
                                            }
                                            AdminSession adminSession = new AdminSession(AdminID, AdminNo, AdminName, RoleNo, RoleName);
                                            SessionUtil.SaveAdminSession(adminSession);
                                            this.txtAdminName.Text = "";
                                            this.txtPassword.Text = "";
                                            this.txtCheckNum.Text = "";
                                            this.txtAdminName.Focus();
                                            LogManage.WriteLog(Request.UserHostAddress, "登陆退出", "系统登陆", "成功", " 管理员登陆系统");
                                            WebProject.Model.SysManage.ZT_SYS_AdminInfo model_AdminInfo = bll_AdminInfo.GetModel(AdminID);
                                            model_AdminInfo.LastLoginDate = DateTime.Now;
                                            bll_AdminInfo.Update(model_AdminInfo);
                                            Page.Response.Redirect("Index.aspx");
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
    #endregion


    #region 重置事件
    protected void btnReset_Click(object sender, ImageClickEventArgs e)
    {
        this.txtAdminName.Text = "";
        this.txtPassword.Text = "";
        this.txtCheckNum.Text = "";
        this.txtAdminName.Focus();
    }
    #endregion


    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        ThisYear = DateTime.Now.Year.ToString();
        WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
        DataSet ds = bll_WebMainInfo.GetList(" 1=1 ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            PageTitle = ds.Tables[0].Rows[0]["Title"].ToString();
            PageKeyWords = ds.Tables[0].Rows[0]["KeyWords"].ToString();
            PageDescription = ds.Tables[0].Rows[0]["Description"].ToString();
            PageUrl = ds.Tables[0].Rows[0]["WebURL"].ToString();
        }
    }
    #endregion
}
