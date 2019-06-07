
import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(padding: EdgeInsets.all(10.0), child: Text('Details')),
            Container(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Delete'),
              onPressed: () => Navigator.pop(context, true),
            )
          ],
        ),
      ),
    );
  }
}
