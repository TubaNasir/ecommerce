import 'package:ecommerce/home/home.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar_provider.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';


class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {

  final int _orderId = 13423;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Lottie.asset('assets/animations/order_success.json', repeat: false),
              Text('Thank you for placing \nyour order!\nYour order ID is ${_orderId}.\nWe will let you know once your \norder has been confirmed.',
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,),
              SizedBox(height: 5),
              CustomButton(text: 'Go to homepage', pressed: () {
                context.read<NavBar>().setPage('home');
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              ),
            ],
          )
        ),
      ),
    );
  }
}
