using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_project
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int pos;
            string no;
            if (e.CommandName == "Select")
            {
                pos = Convert.ToInt32(e.CommandArgument);
                no = GridView1.DataKeys[pos].Value.ToString();
                lblOutput.Text = no +"已加入購物車";

                /*// 連接字串，替換為您的資料庫連接字串
                string connectionString = "cards";

                // SQL UPDATE 命令
                string updateCommand = "UPDATE cards SET Column1 = @Value1, Column2 = @Value2 WHERE YourCondition";

                // 資料庫連接
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // 創建命令對象
                    using (SqlCommand command = new SqlCommand(updateCommand, connection))
                    {
                        // 替換參數值
                        command.Parameters.AddWithValue("@Value1", "NewValue1");
                        command.Parameters.AddWithValue("@Value2", "NewValue2");

                        // 執行 UPDATE 命令
                        int rowsAffected = command.ExecuteNonQuery();


                    }
                }
                */
            }


        }
    }
}