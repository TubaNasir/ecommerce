import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter, child: Text('cart')),
          BottomNavBar(),
        ],
      ),
    );
  }
}
