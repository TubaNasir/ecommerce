import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text,
    required this.pressed,
  }) : super(key: key);
  final String? text;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: TextButton(

        style: TextButton.styleFrom(
          //foregroundColor: Colors.white,
          backgroundColor: Colors.white,
        ),
        onPressed: pressed,
        child: Ink(
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: PrimaryGradientColor,
            borderRadius: BorderRadius.all(Radius.circular(80.0)),
          ),
          child: Container(
            //constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
            alignment: Alignment.center,
            child: Text(
              text!,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

