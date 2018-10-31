"use strict"

var mainApp = angular.module('MainApp', []).directive('convertToNumber', function () {
    return {
        require: 'ngModel',
        link: function (scope, element, attrs, ngModel) {
            ngModel.$parsers.push(function (val) {
                return parseInt(val, 10);
            });
            ngModel.$formatters.push(function (val) {
                return '' + val;
            });
        }
    };

});

mainApp.controller('HeaderController', ['$scope', '$http', function HeaderController($scope, $http) {
    // init login model
    $scope.login = {
        "popup": false,
        "email": null,
        "password": null
    }

    // init login service
    $scope.loginService = {
        "loginClicked": null,
        "closeLogin": null,
        "loginByEmail" : null,
        "loginByGoogle" : null,
        "loginByFacebook" : null
    }

    $scope.loginService.loginClicked = function () {
        // open popup
        $scope.login.popup = true;
    }

    $scope.loginService.closeLogin = function (event) {
        // if click outside
        if (event.target.classList.contains("tb-cell")) {
            $scope.login.popup = false;
        }
    }

    $scope.loginService.loginByEmail = function() {
        // login
    }

    $scope.loginService.loginByGoogle = function() {
        console.log("google");
    }

    $scope.loginService.loginByFacebook = function() {

    }

    // init signup model
    $scope.signup = {
        "popup" : false,
        "firstName" : null,
        "lastName" : null,
        "email" : null,
        "password" : null,
        "confirmPassword" : null
    }

    // init signup service
    $scope.signupService = {
        "signupClicked" : null,
        "closeSignup" : null,
        "signupByEmail" : null,
        "signupByGoogle" : null,
        "signupByFacebook" : null
    }

    $scope.signupService.signupClicked = function() {
        // open popup
        $scope.signup.popup = true;
    }

    $scope.signupService.closeSignup = function() {
        // if click outside
        if (event.target.classList.contains("tb-cell")) {
            $scope.signup.popup = false;
        }
    }

    $scope.signupService.signupByEmail = function() {
        // signup
    }

    $scope.signupService.signupByFacebook = function() {
        $scope.loginService.loginByFacebook();
    };

    $scope.signupService.signupByGoogle = function() {
        $scope.loginService.loginByGoogle()
    };
}]);