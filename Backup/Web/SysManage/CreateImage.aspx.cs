using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Drawing;
using System.IO;
using System.Drawing.Imaging;

public partial class SysManage_CreateImage : System.Web.UI.Page
{
    private int letterWidth = 16;//单个字体的宽度范围
    private int letterHeight = 22;//单个字体的高度范围
    private int letterCount = 4;//验证码位数
    private Font theFont = new Font("Arial", 11, FontStyle.Bold);//字体
    private char[] chars = "123456789ABCDEFGHJKMNPQRSTUVWXYZ".ToCharArray();

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Expires = 0;
        Response.Buffer = true;
        Response.ExpiresAbsolute = DateTime.Now.AddSeconds(-1);
        Response.AddHeader("pragma", "no-cache");
        Response.CacheControl = "no-cache";
        int _count = StrToInt(q("n"), 0);
        letterCount = (_count < 4 || _count > 8) ? 4 : _count;
        string str_ValidateCode = GetRandomNumberString(letterCount);
        //用于验证的Session
        Session["validate_code"] = str_ValidateCode.ToLower();
        CreateImage(str_ValidateCode);
    }
    /// <summary>
    /// 把字符串转成整型
    /// </summary>
    public static int StrToInt(string _value, int _defaultValue)
    {
        if (IsNumber(_value))
            return int.Parse(_value);
        else
            return _defaultValue;
    }

    /// 判断是否是数字，包括小数和整数。      
    public static bool IsNumber(string _value)
    {
        return QuickValidate("^(0|([1-9]+[0-9]*))(.[0-9]+)?$", _value);
    }

    public static bool QuickValidate(string _express, string _value)
    {
        System.Text.RegularExpressions.Regex myRegex = new System.Text.RegularExpressions.Regex(_express);
        if (_value.Length == 0)
        {
            return false;
        }
        return myRegex.IsMatch(_value);
    }

    public void CreateImage(string checkCode)
    {

        int int_ImageWidth = checkCode.Length * letterWidth;
        Random newRandom = new Random();
        Bitmap image = new Bitmap(int_ImageWidth, letterHeight);
        Graphics g = Graphics.FromImage(image);
        //生成随机生成器
        Random random = new Random();
        //白色背景
        g.Clear(Color.White);
        //画图片的背景噪音线
        for (int i = 0; i < 10; i++)
        {
            int x1 = random.Next(image.Width);
            int x2 = random.Next(image.Width);
            int y1 = random.Next(image.Height);
            int y2 = random.Next(image.Height);

            g.DrawLine(new Pen(Color.Silver), x1, y1, x2, y2);
        }
        //画图片的前景噪音点
        for (int i = 0; i < 10; i++)
        {
            int x = random.Next(image.Width);
            int y = random.Next(image.Height);

            image.SetPixel(x, y, Color.FromArgb(random.Next()));
        }
        //灰色边框
        g.DrawRectangle(new Pen(Color.LightGray, 1), 0, 0, int_ImageWidth - 1, (letterHeight - 1));
        for (int int_index = 0; int_index < checkCode.Length; int_index++)
        {
            string str_char = checkCode.Substring(int_index, 1);
            Brush newBrush = new SolidBrush(GetRandomColor());
            Point thePos = new Point(int_index * letterWidth + 1 + newRandom.Next(3), 1 + newRandom.Next(3));
            g.DrawString(str_char, theFont, newBrush, thePos);
        }
        //将生成的图片发回客户端
        MemoryStream ms = new MemoryStream();
        image.Save(ms, ImageFormat.Png);
        Response.ClearContent(); //需要输出图象信息 要修改HTTP头 
        Response.ContentType = "image/Png";
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        image.Dispose();
        Response.End();
    }

    public Color GetRandomColor()
    {
        Random RandomNum_First = new Random((int)DateTime.Now.Ticks);
        System.Threading.Thread.Sleep(RandomNum_First.Next(50));
        Random RandomNum_Sencond = new Random((int)DateTime.Now.Ticks);
        //为了在白色背景上显示，尽量生成深色
        int int_Red = RandomNum_First.Next(256);
        int int_Green = RandomNum_Sencond.Next(256);
        int int_Blue = (int_Red + int_Green > 400) ? 0 : 400 - int_Red - int_Green;
        int_Blue = (int_Blue > 255) ? 255 : int_Blue;
        return Color.FromArgb(int_Red, int_Green, int_Blue);
    }

    //  生成随机数字字符串
    public string GetRandomNumberString(int int_NumberLength)
    {
        System.Random random = new Random();
        string validateCode = string.Empty;
        for (int i = 0; i < int_NumberLength; i++)
            validateCode += chars[random.Next(0, chars.Length)].ToString();
        return validateCode;
    }

    /// 获取querystring  
    public string q(string s)
    {
        if (HttpContext.Current.Request.QueryString[s] != null && HttpContext.Current.Request.QueryString[s] != "")
        {
            return SafetyStr(HttpContext.Current.Request.QueryString[s].ToString());
        }
        return string.Empty;
    }

    /// 过滤一般特殊特号,如单引、双引和回车和分号等       
    public string SafetyStr(string theString)
    {
        string[] aryReg = { "'", ";", "\"", "\r", "\n", "<", ">" };
        for (int i = 0; i < aryReg.Length; i++)
        {
            theString = theString.Replace(aryReg[i], string.Empty);
        }
        return theString;
    }
}
