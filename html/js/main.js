/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {

    // search box click
    $("#home-search-box > input").on("click", function () {
        $("#search-suggestion").toggleClass("active");
    });

    // header location click
    $("#destination-search .search-btn a").on("click", function () {
        $("#destination-search .result").toggleClass("active");
        return false;
    });

    $(document).click(function (event) {
        // detect click outside of search box
        if (!$(event.target).closest('#home-search-box > input').length && !$(event.target).is('#home-search-box > input')) {
            $("#search-suggestion.active").removeClass("active");
        }

        // detect click outside of location header
        if (!$(event.target).closest('#destination-search .search-btn a').length && !$(event.target).is('#destination-search .search-btn a')) {
            $("#destination-search .result").removeClass("active");
        }
    });


    // check banner has slider or not
    if ($("#banner").hasClass('slider-banner')) {
        // cover transition
        var totalCover = $("#banner-cover > .cover").length;
        var currentCoverNo = 2;
        setInterval(function () {
            $("#banner-cover > .cover.active").removeClass("active");
            $("#banner-cover > .cover:nth-of-type(" + currentCoverNo + ")").addClass("active");
            currentCoverNo++;
            if (currentCoverNo > totalCover) {
                currentCoverNo = 1;
            }
        }, 5000);
    }

    var loginPopup = $("#login-popup");
    var signupPopup = $("#signup-popup");

    // open login box
    $('#header-container a.login-link').click(function () {
        // close another popup
        $(".main-popup.active").removeClass("active");

        // open login popup
        loginPopup.addClass("active");
        return false;
    });

    // open signup box
    $('#header-container a.signup-link').click(function () {
        // close another popup
        $(".main-popup.active").removeClass("active");

        // open login popup
        signupPopup.addClass("active");
        return false;
    });

    // close popup
    $(document).on('click', '.main-popup.active', function (event) {
        if ($(event.target).is(".main-popup.active .tb-cell")) {
            $(this).removeClass("active");
        }
    });

    // square meal post
    var mealWidth = $("#recommended-meals .single-meal")[0].getBoundingClientRect().width;
    var mealInfoHeight = $("#recommended-meals .single-meal .meal-info")[0].getBoundingClientRect().height;
    var mealCoverHeight = mealWidth - mealInfoHeight;
    $("#recommended-meals .single-meal .meal-cover").height(mealCoverHeight);
});


