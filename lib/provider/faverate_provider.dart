import 'dart:core';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../productmodel.dart';

class FavertProvider extends ChangeNotifier {
  final List<Product> _favert = [];
  List<Product> get favert => _favert;
  void toggleFavorite(Product product){
    if(_favert.contains(product)){
      _favert.remove(product);
      
    }else{
      _favert.add(product);
    }
    notifyListeners();
  }
 
 bool isExist( Product product){
  final isExist = _favert.contains(product);
  return isExist;
 }

  static FavertProvider of(BuildContext context,{
    bool listen = true,
  }){
    return Provider.of<FavertProvider>(context,listen: listen );
  }
  
}
