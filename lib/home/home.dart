import 'package:camera/camera.dart';
import 'package:ecommerce/home/home_model.dart';
import 'package:ecommerce/home/widgets/catgories.dart';
import 'package:ecommerce/home/widgets/heading.dart';
import 'package:ecommerce/home/widgets/popular_products.dart';
import 'package:ecommerce/home/widgets/promotion.dart';
import 'package:ecommerce/search/search.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:ecommerce/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  final CameraDescription camera;
  const Home({required this.camera,super.key});

  @override
  State<Home> createState() => _HomeState(this.camera);
}

class _HomeState extends State<Home> {

  final CameraDescription camera;
  _HomeState(this.camera);

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
                    SearchBar(camera: camera),
                    const SizedBox(height: 20),
                    const Heading(text: 'Categories'),
                    const SizedBox(height: 10),
                    Categories(camera: camera),
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
                    SingleChildScrollView(child: Products(demoList: demoProducts,camera: camera,),physics: NeverScrollableScrollPhysics(),),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            BottomNavBar(camera: camera,),
          ],
        ),
      ),
    );
  }
}






