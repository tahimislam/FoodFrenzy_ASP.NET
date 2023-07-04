<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="FoodFrenzy.User.ForgotPass" %>
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
                <h2>Password Recovery</h2>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form_container">
                            <img id ="userLogin" src="../Images/bgpass.png" alt="" class="img-thumbnail" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form_container">
                            <div>

                            <asp:RequiredFieldValidator ID="rfvemail" runat="server"
                                ErrorMessage="Email is required" ControlToValidate="txtEmail"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                                placeholder="Enter Email" ToolTip="Email"></asp:TextBox>

                            </div>

                            <div>

                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                ErrorMessage="Password is required" ControlToValidate="txtPassword"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPassword" runat="server"
                                ErrorMessage="Password must be at least 6 characters long"
                                ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"
                                ValidationExpression="^.{6,}$" Font-Size="Small"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"
                                placeholder="Type new Password" ToolTip="Password" TextMode="Password"></asp:TextBox>

                            </div>

                            <div class="btn_box">

                                <asp:Button ID="btnLogin" runat="server" Text="Reset Password"
                                CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" OnClick="btnLogin_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    </section>

</asp:Content>
