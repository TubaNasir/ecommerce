import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/order_model.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../../widgets/horizontal_card.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Orders',
        backButton: true,
      ),
      body: ListView(
          children: demoOrders
              .map((e) => HorizontalCard(
                    productImage: e.image,
                    cardTitle: "Order ID: " + e.orderid.toString(),
                    cardSubtitle: e.placedOn + '\n' + e.status,
                    icon: Icon(Icons.chevron_right, color: PrimaryColor,),
                    press: () {},
                  ))
              .toList()),
    );
  }
}


