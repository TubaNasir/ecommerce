import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../../home/home.dart';
import '../../home/home_model.dart';
import '../../search/search.dart';

class StoreHome extends StatelessWidget {
  const StoreHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Store Name",
        backButton: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Heading(text: 'Products'),
            SizedBox(height: 20,),
            ProductList(demoList: demoProducts,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PrimaryColor,
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
