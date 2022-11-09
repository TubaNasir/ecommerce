import 'package:ecommerce/constants.dart';
import 'package:ecommerce/home/home.dart';
import 'package:ecommerce/order/order_details.dart';
import 'package:ecommerce/search/search.dart';
import 'package:ecommerce/success/success.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/themes.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (_) => NavBar(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: const Success(),
    );
  }
}





