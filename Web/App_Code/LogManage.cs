using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
///WriteLog 的摘要说明
/// </summary>
public class LogManage
{
    public LogManage()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    public static void WriteLog(string LoginIP, string LogType, string FuncName, string OperatorType, string OperatorInfo)
    {
        WebProject.Model.SysManage.ZT_SYS_LogInfo model_LogInfo = new WebProject.Model.SysManage.ZT_SYS_LogInfo();
        model_LogInfo.LogType = LogType;
        model_LogInfo.OperatorType = OperatorType;
        model_LogInfo.FuncName = FuncName;
        model_LogInfo.OperatorInfo = OperatorInfo;
        model_LogInfo.LoginIP = LoginIP;        
        try
        {
            string CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_LogInfo.CreateBy = CreateBy;
        }
        catch
        {
        }        
        model_LogInfo.CreateDate = DateTime.Now;
        WebProject.BLL.SysManage.ZT_SYS_LogInfo bll_LogInfo = new WebProject.BLL.SysManage.ZT_SYS_LogInfo();
        bll_LogInfo.Add(model_LogInfo);
    }
}
