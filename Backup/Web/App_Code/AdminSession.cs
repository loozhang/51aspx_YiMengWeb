using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

/// <summary>
/// AdminSession 的摘要说明
/// </summary>
public class AdminSession
{
    public int AdminID;  //管理员ID
    public string AdminNo; //管理员编号
    public string AdminName; //管理员姓名
    public string RoleNo; //角色编号
    public string RoleName; //角色名称

    public AdminSession(int _AdminID, string _AdminNo, string _AdminName, string _RoleNo, string _RoleName)
    {
        this.AdminID = _AdminID;
        this.AdminNo = _AdminNo;
        this.AdminName = _AdminName;
        this.RoleNo = _RoleNo;
        this.RoleName = _RoleName;
    }  
}
