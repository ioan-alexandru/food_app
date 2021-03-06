import 'package:cloud_firestore/cloud_firestore.dart';

class CartItemModel {
  static const ID = 'id';
  static const NAME = 'name';
  static const PRODUCT_ID = 'productId';
  static const QUANTITY = 'quantity';
  static const PRICE = 'price';
  static const IMAGE = 'image';


  String _id;
  String _name;
  String _image;
  String _productId;
  int _quantity;
  int _price;


  String get id => _id;

  String get name => _name;

  String get image => _image;

  String get productId => _productId;

  int get quantity => _quantity;

  int get price => _price;


  CartItemModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data[ID];
    _name = snapshot.data[NAME];
    _image = snapshot.data[IMAGE];
    _quantity = snapshot.data[QUANTITY];
    _price = snapshot.data[PRICE];
    _productId = snapshot.data[PRODUCT_ID];
  }
}