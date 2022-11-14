import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/curve_clipper.dart';
import 'package:ecommerce/widgets/customAppBar2.dart';
import 'package:flutter/material.dart';
import '../home/home_model.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final Product product = demoProducts[0];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipPath(
                clipper : CurveClipper(),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: SecondaryColor,
                          ),
                        child: Image.network(product.image, fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(product.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold,),
                                  maxLines:5,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text('By Clothing Brand',
                                style: Theme.of(context).textTheme.caption?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ), Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 30,
                                  color: Colors.black.withOpacity(0.4),
                                ),
                              ),
                            ),
                        SizedBox(height: 20),
                        Text('Rs. ${product.price}',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Description',
                            style: Theme.of(context).textTheme.caption?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Text(product.description,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomAppBar2(),
            ],
          ),
        ),
      ),
    );
  }
}
