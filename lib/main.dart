import 'package:flutter/material.dart';
import 'package:getx_state_management/views/shopping_page/shopping_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ShoppingPage(),
    );
  }
}
