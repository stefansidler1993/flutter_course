import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        addProduct({'title': 'Chocolate', 'image': 'assets/images/food.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
