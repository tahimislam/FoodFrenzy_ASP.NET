<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FoodFrenzy.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../All_files/images/about-img.png" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Food<span style="color:#ffbe33;">Frenzy</span>
              </h2>
            </div>
            <p>
                    Indulge in a culinary adventure like no other! Discover a world of flavors, 
                    savor every bite, and satisfy your cravings with our irresistible selection of delectable dishes. 
                    Order now and embark on a tantalizing journey of taste!
                    <br>
                    <br>
                    Welcome to FoodFrenzy, where we strive to bring convenience, 
                    variety, and quality to your dining experience. 
                    We are committed to providing you with the best possible service, 
                    that includes ensuring that the food you receive is of the highest quality. 
                    All food is prepared and delivered to you in a timely and hygienic manner.
                    <br>
                    <br>
                    We also offer a range of promotions and discounts, 
                    allowing you to enjoy your favorite meals at affordable prices. 
                    Our customer service team is always available to assist you with any queries or concerns you may have, 
                    and we welcome your feedback as we strive to continually improve our service. We...
            </p>
            <a href="#">
              Read More
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

</asp:Content>
