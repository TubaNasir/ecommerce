import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../home/home_model.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key}) : super(key: key);

  final Product product = demoProducts[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
        backButton: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.18,
                    ),
                    decoration: BoxDecoration(
                        color: PrimaryLightColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 4,
                                blurRadius: 15,
                                offset: Offset(3, 3),
                              )]
                          ),
                          height: MediaQuery.of(context).size.height*0.28,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              product.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AutoSizeText(
                          product.title,
                          maxLines: 3,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                              color: PrimaryColor,
                              fontWeight: FontWeight.bold,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AutoSizeText(
                          product.description,
                          maxLines: 3,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!

                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Price\n",
                              style:
                              Theme.of(context).textTheme.titleMedium),
                          TextSpan(
                              text: "Rs. ${product.price}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.bold))
                        ]),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
