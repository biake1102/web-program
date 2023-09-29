using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hw1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a = 200 + 3.5 * 40;
            double b = 200 + 5 * 40 + (10 - 5) * 30;
            double c = 200 + 5 * 40 + (25 - 5) * 30;
            Label1.Text = a.ToString();
            Label2.Text = b.ToString();
            Label3.Text = c.ToString();
        }
    }
}