import 'package:ecommerce/constants.dart';
import 'package:ecommerce/home/home_model.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:ecommerce/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/product.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(title: "Search", backButton: true),
        body: Layout(
          widget: Column(
            children: [
              SearchBar(),
              SizedBox(height: 20),
              CustomButton(pressed: () {  },text: "Search using Camera!"),
              SizedBox(height: 20),
              (demoProducts.isNotEmpty)
                  ? Expanded(
                child: ProductList(demoList: demoProducts,),
                    // child: SingleChildScrollView(
                    //   child: Column(
                    //     children: [
                    //       GridView.count(
                    //           shrinkWrap: true,
                    //           primary: false,
                    //           crossAxisCount: 2,
                    //           children: List.generate(demoProducts.length, (index) {
                    //             return ProductCard(product: demoProducts[index]);
                    //           }),
                    //         ),
                    //     ],
                    //   ),
                    // ),
                  )
                  : Text('No Products Found'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  ProductList({Key? key, required this.demoList}) : super(key: key);

  List<Product> demoList;

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,
              children: List.generate(demoList.length, (index) {
                return ProductCard(product: demoList[index]);
              }),
            ),
          ],
        ),
      );
  }
}

