<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FoodFrenzy.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <div class="pcoded-inner-content">
                    <div class="main-body">
                        <div class="page-wrapper">

                            <div class="page-body">
                                <div class="row">
                                    <!-- card1 start -->
                                    <div class="col-md-6 col-xl-3">
                                        <a href="Category.aspx">
                                            <div class="card widget-card-1">
                                                <div class="card-block-small">
                                                    <i class="icofont icofont-tags bg-c-blue card1-icon"></i>
                                                    <span class="text-c-blue f-w-600">Categories</span>
                                                    <h4>45</h4>
                                                    <div>
                                                        <span class="f-left m-t-10 text-muted">
                                                            <i class="text-c-blue f-16 icofont icofont-listing-number m-r-10"></i>All Categories
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- card1 end -->
                                    <!-- card1 start -->
                                    <div class="col-md-6 col-xl-3">
                                        <a href="Product.aspx">
                                            <div class="card widget-card-1">
                                                <div class="card-block-small">
                                                    <i class="icofont icofont-package bg-c-pink card1-icon"></i>
                                                    <span class="text-c-pink f-w-600">Products</span>
                                                    <h4>150+</h4>
                                                    <div>
                                                        <span class="f-left m-t-10 text-muted">
                                                            <i class="text-c-pink f-16 icofont icofont-listing-number m-r-10"></i>All Products
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- card1 end -->
                                    <!-- card1 start -->
                                    <div class="col-md-6 col-xl-3">
                                        <a href="OrderStatus.aspx">
                                            <div class="card widget-card-1">
                                            <div class="card-block-small">
                                                <i class="icofont icofont-chart-histogram bg-c-green card1-icon"></i>
                                                <span class="text-c-green f-w-600">Order</span>
                                                <h4>Status</h4>
                                                <div>
                                                    <span class="f-left m-t-10 text-muted">
                                                        <i class="text-c-green f-16 icofont icofont-clock-time m-r-10"></i>Last 24 hours
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                    <!-- card1 end -->
                                    <!-- card1 start -->
                                    <div class="col-md-6 col-xl-3">
                                        <a href="Users.aspx">
                                            <div class="card widget-card-1">
                                            <div class="card-block-small">
                                                <i class="icofont icofont-users-social bg-c-yellow card1-icon"></i>
                                                <span class="text-c-yellow f-w-600">Users</span>
                                                <h4>1000+</h4>
                                                <div>
                                                    <span class="f-left m-t-10 text-muted">
                                                        <i class="text-c-yellow f-16 icofont icofont-users m-r-10"></i>Customers
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                    <!-- card1 end -->
                                </div>
                            </div>

                            <div id="styleSelector">
                             </div>

                        </div>
                    </div>
                </div>

</asp:Content>
