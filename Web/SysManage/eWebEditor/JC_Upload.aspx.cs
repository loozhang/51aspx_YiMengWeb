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
using System.Xml;
using System.IO;
public partial class JC_Upload : System.Web.UI.Page,IDisposable
{
    XmlDocument doc = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        //btn_upload.Attributes.Add("onclick", "parent.Loading()");
        if (!IsPostBack)
        {
            if (Session["ZT_ADMIN"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                if (Request["type"] + "" == "")
                {
                    Response.Redirect("../Login.aspx");
                }
                else
                {
                    Session["FileType"] = Request.QueryString["type"];
                    resultPanel.Visible = false;
                }
            }
        }
    }

    /// <summary>
    /// 上传操作
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            string UpLoadPath = GetConfigInfo("UpLoadPath", "config.config");
            if (!Object.Equals(Session["FileType"], null))
            {
                if (Session["FileType"].ToString() == "image")
                {
                    SaveAs(UpLoadPath, "UpImage");
                }
                else if (Session["FileType"].ToString() == "vedio")
                {
                    SaveAs(UpLoadPath, "UpVedio");
                }
                else if (Session["FileType"].ToString() == "flash")
                {
                    SaveAs(UpLoadPath, "UpFlash");
                }
                else
                {
                    SaveAs(UpLoadPath, "UpOther");
                }
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }
        }
    }

    /// <summary>
    /// 保存文件
    /// </summary>
    /// <param name="UpLoadPath">路径</param>
    /// <param name="FileType">文件类型</param>
    private void SaveAs(string UpLoadPath,string FileType)
    {
        bool UpFileOk = false;
        string[] AllowFileExtensions = null;
        string currectFileExtension="";
        if (FileUpload1.HasFile)
        {
            currectFileExtension = Path.GetExtension(FileUpload1.FileName).ToLower();
            AllowFileExtensions = GetConfigInfo(FileType, "config.config").Split('|');
            for (int i = 0; i < AllowFileExtensions.Length; i++)
            {
                if (currectFileExtension == AllowFileExtensions[i].ToLower())
                {
                    UpFileOk = true;
                    break;
                }
            }
        }
        if (UpFileOk)
        {
            if (Directory.Exists(Server.MapPath(UpLoadPath)))
            {
                try
                {
                    Random r = new Random();
                    int random = r.Next(100, 999);
                    string filename=DateTime.Now.ToString("yyyyMMddhhmmssffff") + random + currectFileExtension;
                    FileUpload1.SaveAs(Server.MapPath(UpLoadPath + filename));
                    InsertFilePath.Value = Request.Path.Substring(0, Request.Path.LastIndexOf("/") + 1) + UpLoadPath + filename;
                    uploadPanel.Visible = false;
                    resultPanel.Visible = true;
                }
                catch
                {
                    Response.Redirect("Error.htm");
                }
            }
            else
            {
                try
                {
                    Random r = new Random();
                    int random = r.Next(100, 999);
                    Directory.CreateDirectory(Server.MapPath(UpLoadPath));
                    string filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + random + currectFileExtension;
                    FileUpload1.SaveAs(Server.MapPath(UpLoadPath + filename));
                    InsertFilePath.Value = Request.Path.Substring(0, Request.Path.LastIndexOf("/") + 1) + UpLoadPath + filename;
                    uploadPanel.Visible = false;
                    resultPanel.Visible = true;
                }
                catch 
                {
                    Response.Redirect("Error.htm");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('格式不正确');history.back(-1)</script>");
        }
    }

    /// <summary>
    /// 获取配置文件
    /// </summary>
    /// <param name="NodeName">节点名</param>
    /// <param name="path">文件路径</param>
    /// <returns></returns>
    public string GetConfigInfo(string NodeName,string path)
    {
        string temp="";
        try
        {
            doc = new XmlDocument();
            doc.Load(Server.MapPath(path));
            XmlNode xn = doc.SelectSingleNode("/UpConfig/" + NodeName);
            temp = xn.Attributes["value"].InnerText;
        }
        catch
        {
            throw new Exception("节点配置可能有误！");
        }
        return temp;
        this.Dispose();
    }

    #region IDisposable成员
    public override void Dispose()
    {
        doc = null;
    }
    #endregion
}
