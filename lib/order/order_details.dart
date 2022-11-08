import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/order/order_model.dart';
import 'package:ecommerce/order/widgets/details_card.dart';
import 'package:ecommerce/order/widgets/products_card.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Order Details', backButton: true),
        body: Layout(
          widget: Column(
            children: [
              Text('ORDER ID: ${order.id}',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center),
              Text('Placed on: 3/9/21',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              DetailsCard(),
              ProductsCard(),
          Card(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total: ',
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Rs. ${order.total}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}


