import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
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
      appBar: CustomAppBar(title: 'Welcome, Tuba!'),
      backgroundColor: PrimaryColor,
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: PrimaryGradientColor,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0)),
                  ),
                child: Text('home')
                ),
              ),
          ),
          BottomNavBar(size: size),
        ],
      ),
    );
  }
}
