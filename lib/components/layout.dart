import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key, required this.widget}) : super(key: key);

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            decoration: const BoxDecoration(
              gradient: PrimaryGradientColor,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.only(topLeft: Radius.circular(30.0)),
              ),

            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: this.widget,
                    ),
                  ),
                  SizedBox(height:100)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
