<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Homepage</title>

        <link rel="stylesheet" href="/rs/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="/rs/css/bootstrap-theme.min.css"/>
        <link rel="stylesheet" href="/rs/css/main.css"/>

        <script src="/rs/js/production/angular.js"></script>
        <script src="/rs/js/dev/main.js"></script>
        <script src="/rs/js/dev/home.js"></script>
    </head>
    <body ng-app="MainApp" ng-controller="HomeController" ng-cloak>
        <%@ include file="header.jsp" %>
        <div id="home-content">

            <!--BANNER-->
            <div id="banner" class="slider-banner">
                <div class="tb">
                    <div class="tb-cell">
                        <div id="banner-content">
                            <h1>Dine with people around the world</h1>
                            <div id="home-search-box">
                                <input type="text" placeholder="Where do you want to eat?" name="" class="white-input"
                                       readonly="readonly"/>
                                <div id="search-suggestion">
                                    <ul>
                                        <li>
                                            <a href="/Bangkok/1" title="">Bangkok</a>
                                        </li>
                                        <li>
                                            <a href="/Ho Chi Minh City/2" title="">Ho Chi Minh City</a>
                                        </li>
                                        <li>
                                            <a href="/Hanoi/3" title="">Hanoi</a>
                                        </li>
                                        <li>
                                            <a href="/Singapore/4" title="">Singapore</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="banner-cover">
                    <div class="cover active">
                    </div>
                    <div class="cover">
                    </div>
                </div>
                <div id="banner-bg">
                </div>
            </div>
            <!--END BANNER-->

            <!--FEATURED LOCATIONS-->
            <div class="home-section grey-section">
                <div class="container">
                    <div class="home-section-title">
                        <h2>Featured Locations</h2>
                        <h5>Eating and chatting with local home cook around the world.</h5>
                    </div>
                    <div class="home-section-content">
                        <div id="featured-locations">
                            <ul class="clearfix">
                                <li>
                                    <div class="location" style="background-image: url(/rs/image/location.png)">
                                        <div class="tb">
                                            <div class="tb-cell">
                                                <p>Meet exciting people in</p>
                                                <hr/>
                                                <h3>Bangkok</h3>
                                            </div>
                                        </div>
                                        <a href="/Bangkok/1" title="">
                                            <img src="/rs/image/location.png" alt=""/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="location" style="background-image: url(/rs/image/hochiminh.jpg)">
                                        <div class="tb">
                                            <div class="tb-cell">
                                                <p>Feel dynamic and vibrant in</p>
                                                <hr/>
                                                <h3>Ho Chi Minh City</h3>
                                            </div>
                                        </div>
                                        <a href="/HoChiMinh/2" title="">
                                            <img src="/rs/image/location.png" alt=""/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="location" style="background-image: url(/rs/image/hanoi.jpg)">
                                        <div class="tb">
                                            <div class="tb-cell">
                                                <p>Xin chao! Welcome to</p>
                                                <hr/>
                                                <h3>Hanoi</h3>
                                            </div>
                                        </div>
                                        <a href="/Hanoi/3" title="">
                                            <img src="/rs/image/location.png" alt=""/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="location" style="background-image: url(/rs/image/singapore.jpg)">
                                        <div class="tb">
                                            <div class="tb-cell">
                                                <p>Enjoy a modern food styles in</p>
                                                <hr/>
                                                <h3>Singapore</h3>
                                            </div>
                                        </div>
                                        <a href="/Singapore/4" title="">
                                            <img src="/rs/image/location.png" alt=""/>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--END FEATURED LOCATIONS-->

            <!--RECOMMENDED MEALS-->
            <div class="home-section">
                <div class="container">
                    <div class="home-section-title">
                        <h2>Recommended Meals</h2>
                        <h5>Eating and chatting with local home cook around the world.</h5>
                    </div>
                    <div class="home-section-content">
                        <div id="recommended-meals">
                            <ul class="clearfix">
                                <li>
                                    <div class="single-meal">
                                        <div class="meal-cover" style="background-image: url(/rs/image/meal.png)">
                                            <a href="" title="">
                                                <img src="/rs/image/meal.png" alt/>
                                            </a>
                                            <span class="meal-price">$20</span>
                                        </div>
                                        <div class="meal-info">
                                            <div class="meal-name">
                                                <h4>Lorem ipsum dolor sit amet</h4>
                                                with
                                                <a href="" title="">Phuongsam</a>
                                            </div>
                                            <div class="meal-host">
                                                <img src="/rs/image/host.png" alt=""/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-meal">
                                        <div class="meal-cover" style="background-image: url(/rs/image/meal.png)">
                                            <a href="" title="">
                                                <img src="/rs/image/meal.png" alt/>
                                            </a>
                                            <span class="meal-price">$20</span>
                                        </div>
                                        <div class="meal-info">
                                            <div class="meal-name">
                                                <h4>Lorem ipsum dolor sit amet</h4>
                                                with
                                                <a href="" title="">Phuongsam</a>
                                            </div>
                                            <div class="meal-host">
                                                <img src="/rs/image/host.png" alt=""/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-meal">
                                        <div class="meal-cover" style="background-image: url(/rs/image/meal.png)">
                                            <a href="" title="">
                                                <img src="/rs/image/meal.png" alt/>
                                            </a>
                                            <span class="meal-price">$20</span>
                                        </div>
                                        <div class="meal-info">
                                            <div class="meal-name">
                                                <h4>Lorem ipsum dolor sit amet</h4>
                                                with
                                                <a href="" title="">Phuongsam</a>
                                            </div>
                                            <div class="meal-host">
                                                <img src="/rs/image/host.png" alt=""/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--END RECOMMENDED MEALS-->

            <!--HOW IT WORKS-->
            <div class="home-section grey-section">
                <div class="container">
                    <div class="home-section-title">
                        <h2>How it works</h2>
                    </div>
                    <div class="home-section-content">
                        <div id="how-it-works">
                            <ul class="row">
                                <li class="col-xs-4">
                                    <div class="single-how">
                                        <div class="image">
                                            <img src="/rs/image/discovering.svg" alt=""/>
                                        </div>
                                        <div class="how-title">
                                            <h5>discover</h5>
                                        </div>
                                        <p>Search home cooks in<br/>
                                            destination countries.</p>
                                    </div>
                                </li>
                                <li class="col-xs-4">
                                    <div class="single-how">
                                        <div class="image">
                                            <img src="/rs/image/booking.svg" alt=""/>
                                        </div>
                                        <div class="how-title">
                                            <h5>book a local cook</h5>
                                        </div>
                                        <p>Reverse your in-home meals.</p>
                                    </div>
                                </li>
                                <li class="col-xs-4">
                                    <div class="single-how">
                                        <div class="image">
                                            <img src="/rs/image/enjoying.svg" alt=""/>
                                        </div>
                                        <div class="how-title">
                                            <h5>go enjoy</h5>
                                        </div>
                                        <p>Enjoy the meal<br/> with local home cook.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--END HOW IT WORKS-->

        </div>
    </body>
</html>
