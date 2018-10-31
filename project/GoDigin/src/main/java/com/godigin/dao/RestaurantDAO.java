package com.godigin.dao;

import com.godigin.funcs.home.HomeRestaurantDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("restaurantDAO")
public class RestaurantDAO implements HomeRestaurantDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void getRecommendedRestaurant() {
        Session session = sessionFactory.getCurrentSession();
    }

}
