package com.godigin.funcs.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @Autowired
    private HomeService homeService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String requestHomepage() {
        homeService.loadRecommendedMeals();
        return "home";
    }

}
