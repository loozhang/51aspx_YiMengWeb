using System;
using System.Configuration;

namespace WebProject.DBUtility
{    
    public class PubConstant
    {        
        /// <summary>
        /// ��ȡ�����ַ���
        /// </summary>
        public static string ConnectionString
        {           
            get 
            {
                string _connectionString = ConfigurationManager.AppSettings["ConnectionString"];
                string ConStringEncrypt = ConfigurationManager.AppSettings["ConStringEncrypt"];
                if (ConStringEncrypt == "true")
                {
                    _connectionString =WebProject.Common.Encrypt.DESEncrypt.Decrypt(_connectionString,"NNSOFT");
                }
                return _connectionString; 
            }
        }

        /// <summary>
        /// �õ�web.config������������ݿ������ַ�����
        /// </summary>
        /// <param name="configName"></param>
        /// <returns></returns>
        public static string GetConnectionString(string configName)
        {
            string _connectionString = ConfigurationManager.AppSettings[configName];
            string ConStringEncrypt = ConfigurationManager.AppSettings["ConStringEncrypt"];
            if (ConStringEncrypt == "true")
            {
                _connectionString = WebProject.Common.Encrypt.DESEncrypt.Decrypt(_connectionString, "NNSOFT");
            }
            return _connectionString;
        }
    }
}
