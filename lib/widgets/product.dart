import 'package:ecommerce/constants.dart';
import 'package:ecommerce/home/home_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: SecondaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 140,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.70,
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: SecondaryColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                          ),
                          child: Image.network(product.image)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(demoProducts[0].title,
                              style: Theme.of(context).textTheme.titleMedium,
                              maxLines: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rs. ${demoProducts[0].price}',

                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: PrimaryColor)),
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: SecondaryColor,
                                    shape: BoxShape.circle
                                ),
                                child: Icon(Icons.favorite),

                              ),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}