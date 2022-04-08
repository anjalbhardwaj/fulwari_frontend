import 'package:flutter/cupertino.dart';

import './../provider/productsService.dart';

class ProductsModel extends ChangeNotifier {
  ProductsService _productService = ProductsService();
  List? productList = [];
  ProductsModel({this.productList});

  getModelFlowersList() async {
    var data = await _productService.getServiceFlowersList();
  }
}
