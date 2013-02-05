using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Web;
using System.Text.RegularExpressions;
using System.IO;
using System.Security.Cryptography;
using System.Xml;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebProject.Common.Encrypt
{
    public class MD5Encrypt
    {
        /// <summary>
        /// 构造方法
        /// </summary>
        public MD5Encrypt()
        { 
        }
        #region MD5加密
        public static string MD5(string number)
        {
            ASCIIEncoding ASCIIenc = new ASCIIEncoding();
            string strReturn = "";
            byte[] ByteSourceText = ASCIIenc.GetBytes(number);
            MD5CryptoServiceProvider Md5Hash = new MD5CryptoServiceProvider();
            byte[] ByteHash = Md5Hash.ComputeHash(ByteSourceText);
            foreach (byte b in ByteHash)
            {
                strReturn += b.ToString("x2");
            }
            return strReturn;
        }
        #endregion
    }
}
