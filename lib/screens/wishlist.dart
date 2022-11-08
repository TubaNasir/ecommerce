import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/horizontal_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:ecommerce/model/BottomNavBar_model.dart';
import 'package:provider/provider.dart';

import '../components/layout.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Wishlist",
        backButton: false,
      ),
      body: Stack(
        children: [
          Layout(widget: ListView(
            children: demoProducts.map((e) =>
                HorizontalCard(productImage: e.image,
                  cardTitle: e.title,
                  cardSubtitle: e.price.toString(),
                  icon: Icon(Icons.favorite, color: Colors.red,),
                  press: () {},)).toList(),
          )),
          BottomNavBar(),
        ],
      ),
    );
  }
}
