import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:ecommerce/model/BottomNavBar_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          SearchBar(),
                          SizedBox(height: 20),
                          Categories(),
                        ],
                      ),
                    ),
                  ),
                ),
            ),
            BottomNavBar(size: size),
          ],
        ),
      ),
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
          color: SecondaryColor,
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: const TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search Product',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 90,
                vertical: 9
            )
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/clothes.svg", "text": "Clothing"},
      {"icon": "assets/icons/electronics.svg", "text": "Electronics"},
      {"icon": "assets/icons/groceries.svg", "text": "Groceries"},
      {"icon": "assets/icons/beauty.svg", "text": "Sports"},
      {"icon": "assets/icons/sports.svg", "text": "Beauty"},

    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories.map((cat) => CategoryCard(category: cat, onPress: (){}))
                  .toList(),),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
   CategoryCard({
    Key? key,
    required this.category, required this.onPress,
  }) : super(key: key);

  VoidCallback onPress;
  final Map<String, dynamic> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: PrimaryLightColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(category["icon"]),
          ),
        ),
        SizedBox(height: 5),
        Text(category["text"]),
      ],
    );
  }
}

