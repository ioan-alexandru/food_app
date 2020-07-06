import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/services/category.dart';

class CategoryProvider with ChangeNotifier {
  CategoryServices _categoryServices = CategoryServices();
  List<CategoryModel> categories = [];

  CategoryProvider.initialize() {
    _loadCategories();
  }

  Future _loadCategories() async {
    categories = await _categoryServices.getCategories();
    notifyListeners();
  }
}