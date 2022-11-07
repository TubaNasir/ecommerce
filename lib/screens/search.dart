import 'package:ecommerce/components/layout.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/product.dart';
import 'package:ecommerce/model/product_model.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Search", backButton: true),
      body: Stack(children: [
        Layout(
          widget: SingleChildScrollView(
            child: Column(
              children: [
                SearchBar(),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  children: List.generate(demoProducts.length, (index) {
                    return ProductCard(product: demoProducts[index]);
                  }),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: SecondaryColor, borderRadius: BorderRadius.circular(20.0)),
      child: const TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search Product',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(horizontal: 90, vertical: 9)),
      ),
    );
  }
}
