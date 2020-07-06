import 'package:flutter/material.dart';
import 'package:foodapp/models/restaurant.dart';
import 'package:foodapp/services/restaurant.dart';

class RestaurantProvider with ChangeNotifier{
  RestaurantServices _restaurantServices = RestaurantServices();
  List<RestaurantModel> restaurants = [];

  RestaurantModel restaurant;

  RestaurantProvider.initialize(){
    _loadRestaurants();
  }

  _loadRestaurants()async{
    restaurants = await _restaurantServices.getRestaurants();
    notifyListeners();
  }

}