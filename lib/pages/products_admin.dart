import 'package:flutter/material.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget productCard = Center(
      child: Text('Product Admin'),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Manage Products'),),
      body: Center(
        child: Text('Manage your products'),
      )
    );
  }
}
