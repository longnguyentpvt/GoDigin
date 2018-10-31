<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header ng-controller="HeaderController">
    <div id="header-container">
        <div class="clearfix">
            <!--LOGO-->
            <div id="logo-header">
                <a href="/" title="">
                    <img src="/rs/image/logo.svg" alt=""/>
                </a>
            </div>
            <!--END LOGO-->
            <!--DESTINATIONS-->
            <div id="destination-search">
                <div class="tb search-btn">
                    <div class="tb-cell">
                        <span class="location-marker inline-btn"></span>
                        <a href="" title="">Destinations</a>
                    </div>
                </div>
                <div class="result">
                    <ul>
                        <li>
                            <a href="/Bangkok/1" title="">Bangkok</a>
                        </li>
                        <li>
                            <a href="/HoChiMinh/2" title="">Ho Chi Minh City</a>
                        </li>
                        <li>
                            <a href="/Hanoi/3" title="">Ha noi</a>
                        </li>
                        <li>
                            <a href="/Singapore/4" title="">Singapore</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--END DESTINATIONS-->

            <!--MENU-->
            <c:if test="${empty sessionScope.Account}">
                <div id="header-menu">
                    <ul class="clearfix">
                        <li id="become-btn">
                            <a href="" title="" class="white-btn">Become a host</a>
                        </li>
                        <li>
                            <span class="signup-link link" ng-click="signupService.signupClicked()">Sign up</span>
                        </li>
                        <li>
                            <span class="login-link link" ng-click="loginService.loginClicked()">Login</span>
                        </li>
                    </ul>
                </div>
            </c:if>
            <!--END MENU-->
            <!--MENU AFTER LOGIN-->
            <c:if test="${sessionScope.Account.role == 1}">
                <div id="header-menu" style="right:-60px;">
                    <ul class="clearfix logged-in">
                        <li style="width:90px;margin-left:0;">
                            <a href="" title="" class=""><img src="/rs/image/envelop.png" alt=""/></a>
                        </li>
                        <li style="width:150px;margin-left:0;" id="show-menu">
                            <c:if test="${sessionScope.Account.image == null}">
                                <img src="/rs/image/avatar.svg"/>
                            </c:if>
                            <c:if test="${sessionScope.Account.image != null}">
                                <img src="${sessionScope.Account.image}"/>
                            </c:if>


                            <a href="#" title="" class="user-profile">${sessionScope.Account.lastName}</a>
                            <div class="menu">
                                <ul class="menu-showed">
                                    <li>
                                        <a href="/Host/Profile/Account">
                                            My Profile
                                        </a>
                                    </li>

                                    <li>
                                        <a href="/Logout">
                                            Logout
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li style="width:150px;margin-left:0;">
                            <a href="/Host/CreatingMeal" title="">Create your menu</a>
                        </li>
                    </ul>
                </div>
            </c:if>

            <!--END MENU-->
        </div>

        <!--LOGIN POPUP-->
        <div class="main-popup" id="login-popup" ng-class="{'active' : login.popup}" ng-click="loginService.closeLogin($event)">
            <div class="tb">
                <div class="tb-cell">
                    <div class="popup-content">
                        <div class="popupScroll">
                            <form method="POST"
                                  action="/Login">
                                <div class="popup-row">
                                    <a href="" class="white-btn fb-btn" ng-click="loginService.loginByFacebook()">
                                        <span></span>
                                        Log in with Facebook
                                    </a>
                                </div>
                                <div class="popup-row">
                                    <div class="white-btn gg-btn" ng-click="loginSerive.loginByGoogle()">
                                        <span></span>
                                        Log in with Google
                                    </div>

                                </div>
                                <div class="popup-row" style="text-align: center">
                                    Or email address
                                </div>
                                <div class="popup-row">
                                    <input type="text" name="email" placeholder="Email address" class="blue-input" ng-model="login.email" maxlength="250"/>
                                </div>
                                <div class="popup-row">
                                    <input type="password" name="password" placeholder="Password" class="blue-input" ng-model="login.password" maxlength="32"/>
                                </div>
                                <div class="popup-row">
                                    <input type="submit" class="white-btn pink-btn" value="Login" ng-click="loginService.loginByEmail()">
                                </div>
                                <div class="popup-row" style="text-align: center">
                                    <a href="" title="" class="pink-link">Forgot my password</a>
                                </div>
                                <div class="popup-row" style="text-align: center">
                                    Not a member.
                                    <a href="" title="" class="blue-link signup-link">Sign up</a>
                                    now
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--END LOGIN POPUP-->

        <!--SIGNUP POPUP-->
        <div class="main-popup" id="signup-popup" ng-class="{'active' : signup.popup}" ng-click="signupService.closeSignup($event)">
            <div class="tb">
                <div class="tb-cell">
                    <div class="popup-content">
                        <div class="popupScroll">
                            <form method="POST"
                                  action="/Register">

                                <div class="popup-row">
                                    <a href="" class="white-btn fb-btn" ng-click="signupService.signupByFacebook()">
                                        <span></span>
                                        Sign up with Facebook
                                    </a>
                                </div>
                                <div class="popup-row">
                                    <a href="" class="white-btn gg-btn" ng-click="signupService.signupByGoogle()">
                                        <span></span>
                                        Sign up with Google
                                    </a>
                                </div>
                                <div class="popup-row" style="text-align: center">
                                    Or
                                </div>
                                <div class="popup-row">
                                    <input type="text" placeholder="First name" name="firstName" class="blue-input" ng-model="signup.firstName" maxlength="50"/>
                                </div>
                                <div class="popup-row">
                                    <input type="text" placeholder="Last name" name="lastName" class="blue-input" ng-model="signup.lastName" maxlength="50"/>
                                </div>
                                <div class="popup-row">
                                    <input type="text" placeholder="Email address" name="email" class="blue-input" ng-model="signup.email" maxlength="250"/>
                                </div>
                                <div class="popup-row">
                                    <input type="password" placeholder="Password" name="password" class="blue-input" ng-model="signup.password" maxlength="250"/>
                                </div>   <div class="popup-row">
                                    <input type="password" placeholder="Confirm Password" name="passwordConfirm" class="blue-input" ng-model="signup.confirmPassword" maxlength="250"/>
                                </div>
                                <div class="popup-row">
                                    By Signning up an account, you confirm that you
                                    accept our
                                    <a href="" title="" class="blue-link">Terms of Service</a>
                                    .
                                </div>
                                <div class="popup-row">
                                    <input type="submit" class="white-btn pink-btn" value="Sign up" ng-click="signupService.signupByEmail()">
                                </div>
                                <div class="popup-row" style="text-align: center">
                                    Already a member.
                                    <a href="" title="" class="blue-link login-link">Login</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--END SIGNUP POPUP-->
    </div>
</header>
