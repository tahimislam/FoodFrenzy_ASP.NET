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
            string userId;
            // Check if the cookie exists
            if (Request.Cookies["FoodFrenzyLogin"] != null)
            {
                // Retrieve the cookie value
                string cookieValue = Request.Cookies["FoodFrenzyLogin"].Value;

                // Split the cookie value and retrieve the data
                // (assuming the format is "username=value&userId=value")
                string[] keyValuePairs = cookieValue.Split('&');

                // Create a dictionary to store the key-value pairs
                Dictionary<string, string> cookieData = new Dictionary<string, string>();

                // Iterate over the key-value pairs and store them in the dictionary
                foreach (string pair in keyValuePairs)
                {
                    string[] keyValue = pair.Split('=');
                    string key = keyValue[0];
                    string value = keyValue[1];
                    cookieData[key] = value;
                }

                // Retrieve the username and userId from the dictionary
                string username = cookieData["username"];
                userId = cookieData["userId"];

                // Use the retrieved values as needed
            }
            else
            {
                userId = null;
            }

            if (Session["userId"]!=null || userId!=null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text.Trim()=="Admin" && txtPassword.Text.Trim()=="1234")
            {
                Session["admin"] = txtUsername.Text.Trim();
                Response.Redirect("~/Admin/Dashboard.aspx");
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

                        // Create a persistent login cookie
                        HttpCookie cookie = new HttpCookie("FoodFrenzyLogin");
                        cookie.Values["username"] = txtUsername.Text.Trim();
                        cookie.Values["userId"] = dt.Rows[0]["UserId"].ToString();

                        // Set the cookie expiration to 7 days
                        cookie.Expires = DateTime.Now.AddDays(7);

                        // Add the cookie to the response
                        Response.Cookies.Add(cookie);

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