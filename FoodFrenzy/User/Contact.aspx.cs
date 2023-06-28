using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFrenzy.User
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string query = txtQuery.Text.Trim();

            lblMsg.Visible = true;
            lblMsg.Text = "Thank You for Giving Feedback!";
            lblMsg.CssClass = "alert alert-success";

            // Clear the form fields after submission
            ClearForm();
        }

        private void ClearForm()
        {
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSubject.Text = string.Empty;
            txtQuery.Text = string.Empty;
        }
    }
}