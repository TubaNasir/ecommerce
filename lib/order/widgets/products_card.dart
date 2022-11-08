import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class ProductsCard extends StatefulWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: SecondaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Products: ',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Divider(
                color: SecondaryColor,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
