<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FoodFrenzy.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";
            }, seconds * 1000);
        }
    </script>

    <style>  
        .contact_image {
            position: absolute;
            top: 0;
            right: 0;
            height: 400px;
            width: auto;
            margin-right: 100px;
            margin-top: 100px;
            z-index: -1;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Contact section -->
  <section class="book_section layout_padding">
      <img src="../Images/chef.png" alt="" class="contact_image" />
    <div class="container">
      <div class="heading_container">
          <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
          </div>
        <h2>
          Send Your Query
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <form>
              <div>
                  <asp:RequiredFieldValidator ID="rfvName" runat="server"
                   ErrorMessage="Name is required" ControlToValidate="txtName"
                   ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtName" runat="server" CssClass="form-control"
                   placeholder="Your Name" ToolTip="Name"></asp:TextBox>
              </div>
              <div>
                  <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                   ErrorMessage="Email is required" ControlToValidate="txtEmail"
                   ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                   placeholder="Your Email" ToolTip="Email" TextMode="Email"></asp:TextBox>
              </div>
              <div>
                  <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"
                   placeholder="Subject" ToolTip="Subject"></asp:TextBox>
              </div>
              <div>
                  <asp:RequiredFieldValidator ID="rfvQuery" runat="server"
                   ErrorMessage="Give Your Feedback!" ControlToValidate="txtQuery"
                   ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtQuery" runat="server" CssClass="form-control"
                     placeholder="Enter Your Query/Feedback" ToolTip="Query/Feedback" TextMode="MultiLine"></asp:TextBox>
              </div>
              <div>
                
              </div>
              <div class="btn_box">
                  <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                      CssClass="btn btn-warning rounded-pill pl-5 pr-5 text-white" OnClick="btnSubmit_Click"/>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

</asp:Content>
