import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/account/my_orders.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:ecommerce/model/BottomNavBar_model.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/screens/home.dart';
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
      home: const Home(),
    );
  }
}





