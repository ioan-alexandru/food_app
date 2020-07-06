import 'package:flutter/material.dart';
import 'package:foodapp/models/products.dart';
import 'package:foodapp/models/restaurant.dart';
import 'package:foodapp/services/product.dart';

class ProductProvider with ChangeNotifier {
  ProductServices _productServices = ProductServices();
  List<ProductModel> products = [];
  List<ProductModel> productsByCategory = [];
  List<ProductModel> productsByRestaurant = [];

  ProductModel product;

  ProductProvider.initialize() {
    _loadProducts();
  }

  _loadProducts() async {
    products = await _productServices.getProducts();
    notifyListeners();
  }

  Future loadProductsByCategory({String categoryName})async{
    productsByCategory = await _productServices.getProductsOfCategory(category: categoryName);
    notifyListeners();
  }

  Future loadProductsByRestaurant({int restaurantId})async{
    productsByRestaurant = await _productServices.getProductsByRestaurant(id: restaurantId);
    notifyListeners();
  }
}
