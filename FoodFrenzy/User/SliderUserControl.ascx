<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="FoodFrenzy.User.SliderUserControl" %>

<div class="imagee-containerr">
    <img src="../Images/hero.png" alt="pizza" class="right-image">
</div>

<!-- slider section -->
<section class="slider_section ">
    <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-7 col-lg-6 ">
                            <div class="detail-box">
                                <h1 style="color: #ffbe33; font-size: 60px; font-family: Cooper">Hungry?</h1>
                                <h2 style="font-size: 40px;">Get Your Favorite Food Delivered Right to Your Doorstep</h2>
                                <br>
                                <div class="btn-box">
                                    <a href="Menu.aspx" class="btn1">Explore Food
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item ">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-7 col-lg-6 ">
                            <div class="detail-box">
                                <h1 style="color: #ffbe33; font-size: 60px; font-family: Cooper">Epicurean?</h1>
                                <h2 style="font-size: 40px;">Indulge in a culinary adventure with our diverse menu selection</h2>
                                <br>
                                <div class="btn-box">
                                    <a href="Menu.aspx" class="btn1">Explore Food
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-7 col-lg-6 ">
                            <div class="detail-box">
                                <h1 style="color: #ffbe33; font-size: 60px; font-family: Cooper">Enchanting!</h1>
                                <h2 style="font-size: 40px;">Making every meal a memorable experience</h2>
                                <br>
                                <div class="btn-box">
                                    <a href="Menu.aspx" class="btn1">Explore Food
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <ol class="carousel-indicators">
                <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
                <li data-target="#customCarousel1" data-slide-to="1"></li>
                <li data-target="#customCarousel1" data-slide-to="2"></li>
            </ol>
        </div>
    </div>


</section>
<!-- end slider section -->
