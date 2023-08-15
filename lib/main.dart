import 'package:flutter/material.dart';
import 'module_product_info.dart';
import 'section_product_details_shipping_info.dart';
import 'section.dart';
import 'frame_1.dart';
import 'frame_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ContentProductDetailsProductInfo(), 
            SectionProductDetailsShippingInfo(), 
            Section(), 
            Frame1171274847(),
            Frame1171274848(),
          ],
        ),
      ),
    );
  }
}

