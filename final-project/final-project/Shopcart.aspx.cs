using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_project
{
    public partial class shopcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //用逗號分隔開的字串;去掉重複值
            string[] sarray = Session["goods"].ToString().Split(','); 
            
            ArrayList a1= new ArrayList();
            
            for(int i = 0; i < sarray.Length; i++) {
                if (a1.Contains(sarray[i]) == false)//判斷是否存在
                {
                    a1.Add(sarray[i]);//加入不存在的
                }
            }
            
            //ArrayList轉換成string[]
            string[] a2 = new string[a1.Count];
            for (int i = 0;i < a1.Count; i++) {
                a2[i] = a1[i].ToString();
            }

            //將多組商品加入CheckBoxList
            for(int i = 0;i < a2.Length; i++)
            {
                if (a2[i] != "")
                {
                    goodslist.Items.Add(a2[i]);
                }
            }
            Session["goods"] = "";//清除

        }

        protected void buy_Click(object sender, EventArgs e)
        {

        }

        protected void caltotal_Click(object sender, EventArgs e)
        {

        }
    }
}