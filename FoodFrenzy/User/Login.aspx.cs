using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFrenzy.User
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"]!=null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text.Trim()=="Admin" && txtPassword.Text.Trim()=="1234")
            {
                Session["admin"] = txtUsername.Text.Trim();
                Response.Redirect("../Admin/Dashboard.aspx");
            }
            else
            {
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("User_Crud", con);
                cmd.Parameters.AddWithValue("@Action", "SELECT4LOGIN");
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count ==1)
                {
                    string encryptedPassword = dt.Rows[0]["Password"].ToString();
                    string decryptedPassword = Decrypt(encryptedPassword);

                    if (decryptedPassword == txtPassword.Text.Trim())
                    {
                        Session["username"] = txtUsername.Text.Trim();
                        Session["userId"] = dt.Rows[0]["UserId"];
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Invalid Credentials!";
                        lblMsg.CssClass = "alert alert-danger";
                    }
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Invalid Credentials!";
                    lblMsg.CssClass = "alert alert-danger";
                }
            }
        }

        public string Decrypt(string encrypString)
        {
            byte[] b;
            string decrypted;

            try
            {
                b = Convert.FromBase64String(encrypString);
                decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
            }
            catch (FormatException fe)
            {
                decrypted = "";
            }
            return decrypted;
        }
    }
}