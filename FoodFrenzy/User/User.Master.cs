using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFrenzy.User
{
    public partial class User : System.Web.UI.MasterPage
    {
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

            if (!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            }
            else
            {
                form1.Attributes.Remove("class");

                //Load the control
                Control sliderUserControl = (Control)Page.LoadControl("SliderUserControl.ascx");

                //Add the control to the panel
                pnlSliderUC.Controls.Add(sliderUserControl);
            }

            if (Session["userId"] != null || userId!=null)
            {
                lbLoginOrLogout.Text = "Logout";
                Utils utils = new Utils();
                Session["cartCount"]=utils.cartCount(Convert.ToInt32(userId)).ToString();
            }
            else
            {
                lbLoginOrLogout.Text = "Login";
                Session["cartCount"] = "0";
            }
        }

        protected void lbLoginOrLogout_Click(object sender, EventArgs e)
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

            if (Session["userId"]==null && userId==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Clear the session variables
                Session.Clear();
                Session.Abandon();

                // Delete the persistent login cookie
                HttpCookie cookie = new HttpCookie("FoodFrenzyLogin");
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);

                // Redirect to the login page
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
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

            if (Session["userId"] != null || userId!=null)
            {
                lbRegisterOrProfile.ToolTip = "User Profile";
                Response.Redirect("Profile.aspx");
            }
            else
            {
                lbRegisterOrProfile.ToolTip = "User Registration";
                Response.Redirect("Registration.aspx");
            }
        }
    }
}