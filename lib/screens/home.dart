import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:ecommerce/model/BottomNavBar_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter, child: Text('home')),
          BottomNavBar(size: size),
        ],
      ),
    );
  }
}
