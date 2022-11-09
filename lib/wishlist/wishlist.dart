import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/horizontal_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home/home_model.dart';
import '../widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../widgets/layout.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

bool fav = true;
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
          Layout(widget: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: demoProducts.map((e) =>
                      HorizontalCard(productImage: e.image,
                        cardTitle: e.title,
                        cardSubtitle: "Rs. "+e.price.toString(),
                        icon: Icon(Icons.favorite, color:(fav == true? Colors.red : Colors.grey),),
                        press: () {},)).toList(),
                ),
                SizedBox(height: 100,)
              ],
            ),
          )),
          BottomNavBar(),
        ],
      ),
    );
  }
}
