import 'package:camera/camera.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/login/login.dart';
import 'package:flutter/material.dart';

class SignupRedirection extends StatelessWidget {
  final CameraDescription camera;
  const SignupRedirection({required this.camera,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?"),
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Login(camera: camera,)),
              );
            },
            child: Text(" Login.", style: TextStyle(color: PrimaryColor))),
      ],
    );
  }
}