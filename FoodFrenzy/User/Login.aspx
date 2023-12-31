﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoodFrenzy.User.Login" %>
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
                <h2>Login</h2>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form_container">
                            <img id ="userLogin" src="../Images/login.png" alt="" class="img-thumbnail" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form_container">
                            <div>

                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                                ErrorMessage="Username is required" ControlToValidate="txtUsername"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"
                                placeholder="Enter Username" ToolTip="Username"></asp:TextBox>

                            </div>

                            <div>

                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                ErrorMessage="Password is required" ControlToValidate="txtPassword"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"
                                placeholder="Enter Password" ToolTip="Password" TextMode="Password"></asp:TextBox>

                            </div>

                            <div>
                                <a href="ForgotPass.aspx" class='badge badge-info' style='margin-left: 410px; 
                                    padding: 10px 20px; background-color:orangered; color: #fff; 
                                    text-decoration: none; border-radius: 5px;'
                                    onmouseover="this.style.backgroundColor='#eb4600'; this.style.color='#fff';" 
                                    onmouseout="this.style.backgroundColor='orangered'; this.style.color='#fff';">Forgot Password?</a>
                            </div>
                            <br>

                            <div class="btn_box">

                                <asp:Button ID="btnLogin" runat="server" Text="Login"
                                CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" OnClick="btnLogin_Click"/>

                                <span class="pl-3 text-info">Don't have an account? <a href='Registration.aspx' class='badge badge-info'>Register Here..</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    </section>

</asp:Content>
