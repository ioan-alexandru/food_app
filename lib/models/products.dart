import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = 'id';
  static const NAME = 'name';
  static const RATING  = 'rating';
  static const IMAGE = 'image';
  static const PRICE = 'price';
  static const RESTAURANT_ID = 'restaurantId';
  static const RESTAURANT = 'restaurant';
  static const CATEGORY = 'category';
  static const FEATURED = 'featured';
  static const RATING_VOTES = 'ratingVotes';
  static const DESCRIPTION = 'description';

  String _id;
  String _name;
  double _rating;
  String _image;
  int _price;
  int _restaurantId;
  String _restaurant;
  String _category;
  bool _featured;
  int _ratingVotes;
  String _description;

  String get id => _id;

  String get name => _name;

  double get rating => _rating;

  String get image => _image;

  int get price => _price;

  int get restaurantId => _restaurantId;

  String get restaurant => _restaurant;

  String get category => _category;

  bool get featured => _featured;

  int get ratingVotes => _ratingVotes;

  String get description => _description;

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data[ID];
    _name = snapshot.data[NAME];
    _price = snapshot.data[PRICE];
    _image = snapshot.data[IMAGE];
    _rating = snapshot.data[RATING];
    _ratingVotes = snapshot.data[RATING_VOTES];
    _featured = snapshot.data[FEATURED];
    _category = snapshot.data[CATEGORY];
    _restaurant = snapshot.data[RESTAURANT];
    _restaurantId = snapshot.data[RESTAURANT_ID];
    _description = snapshot.data[DESCRIPTION];
  }
}
