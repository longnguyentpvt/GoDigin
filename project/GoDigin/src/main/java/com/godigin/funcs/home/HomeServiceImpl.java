package com.godigin.funcs.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("homeService")
public class HomeServiceImpl implements HomeService {

    @Autowired
    private HomeRestaurantDAO restaurantDAO;

    @Override
    @Transactional
    public void loadRecommendedMeals() {
        restaurantDAO.getRecommendedRestaurant();
    }

}
