import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/order/order_model.dart';
import 'package:ecommerce/order/widgets/details_card.dart';
import 'package:ecommerce/order/widgets/products_card.dart';
import 'package:ecommerce/order/widgets/total_card.dart';

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
          widget: SingleChildScrollView(
            child: Column(
              children: [
                Text('ORDER ID: ${order.id}',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center),
                Text('Placed on: 3/9/21',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                DetailsCard(),
                ProductsCard(),
                TotalCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


