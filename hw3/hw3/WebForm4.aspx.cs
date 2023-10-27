using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hw3
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name,pass,loca,num,birth,read,com,ex;
            
            name = Session["name"].ToString();
            pass = Session["pass"].ToString();
            loca = Session["loca"].ToString();
            num = Session["num"].ToString();
            birth = Session["birth"].ToString();
            read = Session["read"].ToString();
            com = Session["com"].ToString();
            ex = Session["ex"].ToString();
                      
            lblOutput.Text += "名稱: " + name + "<br/>";
            lblOutput.Text += "密碼: " + pass + "<br/>";
            lblOutput.Text += "地址: " + loca + "<br/>";
            lblOutput.Text += "電話: " + num + "<br/>";
            lblOutput.Text += "生日: " + birth + "<br/>";
            if (Session["read"] is true)
            {
                lblOutput.Text += "興趣 : 看書" + "<br/>";
            }
            if (Session["com"] is true)
            {
                lblOutput.Text += "興趣 : 打電腦" + "<br/>";
            }
            if (Session["ex"] is true)
            {
                lblOutput.Text += "興趣 : 運動";
            }
            Session.Abandon();
            
        }

        
    }
}