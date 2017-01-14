<%@ WebHandler Language="C#" Class="IpAddressHandler" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Text;
using System.Net;
using System.IO;
using System.Diagnostics;


public class IpAddressHandler : IHttpHandler
{
    public bool IsReusable { get { return false; } }
    public void Write(object obj){
        HttpContext.Current.Response.Write("<p>" + obj.ToString()+"</p>");
    }
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
   
        //string ip = "113.67.72.101";//自动获取用户IP 
        ////string ip = TextBox1.Text.Trim(); 
        //if (ip == string.Empty) return;
        //string url = context.Server.MapPath("~/data/qqwry.Dat");
        //Write(url);

        //using (FileStream fs = new FileStream(url, FileMode.Open, FileAccess.Read))
        //{

        //    BinaryReader reader = new BinaryReader(fs);

        //    Byte[] header = reader.ReadBytes(IPFormat.HeaderLength);
        //     Write(BitConverter.ToUInt32(header, 0));
        //     Write(BitConverter.ToUInt32(header, 4));

        //}
        
        
        //IPSeeker seeker = new IPSeeker(url);//纯真IP地址库存放目录！！
        //System.Net.IPAddress ipaddr = System.Net.IPAddress.Parse(ip);
        //IPLocation loc = seeker.GetLocation(ipaddr);
        //if (loc == null)
        //{
        //    Write("指定的IP地址无效！");
        //}
        //else
        //{
        //    Write("地址:" + loc.Country + loc.Zone + "");

        //}

        //IP.EnableFileWatch = true; // 默认值为：false，如果为true将会检查ip库文件的变化自动reload数据
        string url2 = context.Server.MapPath("~/data/IPv4.Dat");
        IP.Load(url2);
        Write(""+String.Join(", ", IP.Find("113.67.72.101")));
        Write("" + String.Join(", ", IP.Find("192.1.1.1")));
        //Write("" + String.Join(", ", IP.Find("113.0.72.3")));
        //Write("" + String.Join(", ", IP.Find("113.67.0.0")));

    }
 



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}