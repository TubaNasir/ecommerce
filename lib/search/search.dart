import 'package:ecommerce/constants.dart';
import 'package:ecommerce/home/home_model.dart';
import 'package:ecommerce/product_detail/product_detail.dart';
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
              const SearchBar(),
              const SizedBox(height: 20),
              (demoProducts.isNotEmpty)
                  ? 
                // Expanded(
                // child: ProductList(demoList: demoProducts,),)
                Products(demoList: demoProducts)
                  : const Text('No Products Found'),
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
      Container(
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

class Products extends StatelessWidget {
  final List<Product> demoList;

  const Products({Key? key, required this.demoList}) : super(key: key);

  Widget _buildProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Product product = demoList[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetail()
          ),
        );
      },
      child: ProductCard(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
          padding: const EdgeInsets.only(bottom: 10.0),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemCount: demoList.length,
          itemBuilder: (context, index) {
            return Transform.translate(
              offset: Offset(0.0, index.isOdd ? 30 : 0.0),
              child: _buildProducts(context, index),
            );
          }),
    ));
  }
}

