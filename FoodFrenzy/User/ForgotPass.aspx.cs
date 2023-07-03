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
    public partial class ForgotPass : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("User_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "PASSRECOVER");
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                updatePassword();
            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "No user exist with this Email!";
                lblMsg.CssClass = "alert alert-danger";
            }
        }

        void updatePassword()
        {
            string encryptedPassword = Encrypt(txtPassword.Text.Trim());

            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("User_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "PASSUPDATE");
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", encryptedPassword);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Visible = true;
                lblMsg.Text = "Password Changed Successfully!";
                lblMsg.CssClass = "alert alert-success";
                txtEmail.Text =string.Empty;
                txtPassword.Text = string.Empty;    
                Response.AddHeader("REFRESH", "1;URL=Login.aspx");
            }
            catch (Exception ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Error- " + ex.Message;
                lblMsg.CssClass = "alert alert-danger";
            }
            finally
            {
                con.Close();
            }
        }

        public string Encrypt(string decrypString)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(decrypString);
            string encrypted = Convert.ToBase64String(b);

            return encrypted;
        }
    }
}