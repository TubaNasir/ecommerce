import 'package:ecommerce/constants.dart';
import 'package:ecommerce/home/home_model.dart';
import 'package:ecommerce/search/search.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:ecommerce/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:ecommerce/widgets/product.dart';
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(title: 'Welcome, Tuba!', backButton: false),
        body: Stack(
          children: [
            Layout(
              widget: SingleChildScrollView(
                child: Column(
                  children: [
                    const SearchBar(),
                    const SizedBox(height: 20),
                    const Heading(text: 'Categories'),
                    const SizedBox(height: 10),
                    const Categories(),
                    const SizedBox(height: 20),
                    const Heading(text: 'Promotion'),
                    const SizedBox(height: 10),
                    const Promotion(),
                    const SizedBox(height: 20),
                    const Heading(text: "Popular Products"),
                    const SizedBox(height: 10),
                    const PopularProducts(),
                    const SizedBox(height: 20),
                    const Heading(text: "New Arrivals"),
                    const SizedBox(height: 10),
                    SingleChildScrollView(child: Products(demoList: demoProducts),physics: NeverScrollableScrollPhysics(),),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: demoProducts
                  .map((product) => Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ProductCard(product: product),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class Promotion extends StatelessWidget {
  const Promotion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child:
                    Image.asset("assets/images/banner1.png", fit: BoxFit.fill)),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text.rich(
                TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                    text: "10% Off\n",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Offer valid till Friday!'),
                ]),
              ),
            ),
          ],
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
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories
                  .map(
                    (cat) => CategoryCard(
                      category: cat,
                      onPress: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Search()));
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    required this.category,
    required this.onPress,
  }) : super(key: key);

  VoidCallback onPress;
  final Map<String, dynamic> category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          width: 80,
          child: Column(
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
              const SizedBox(height: 5),
              Text(category["text"]),
            ],
          ),
        ),
      ),
    );
  }
}
