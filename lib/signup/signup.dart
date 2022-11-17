import 'package:camera/camera.dart';
import 'package:ecommerce/complete_profile/complete_profile.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/login/login.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/form_field.dart';

class SignUp extends StatefulWidget {
  final CameraDescription camera;
  const SignUp({required this.camera,super.key});

  @override
  State<SignUp> createState() => _SignUpState(camera);
}

class _SignUpState extends State<SignUp> {
  final CameraDescription camera;
  _SignUpState(this.camera);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  RegisterMessage(),
                  SizedBox(height: 20),
                  SignUpForm(camera: camera,),
                  SizedBox(height: 20),
                  SignupRedirection(camera: camera,),
                  SizedBox(height: 20),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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

class RegisterMessage extends StatelessWidget {
  const RegisterMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Register Account",
      style: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  final CameraDescription camera;
  const SignUpForm({required this.camera,super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState(camera);
}

class _SignUpFormState extends State<SignUpForm> {
  bool enabled = true;
  final CameraDescription camera;
  _SignUpFormState(this.camera);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomFormField(
            labelText: "Email",
            hintText: "Enter your email",
            icon: SuffixIcon(icon: Icons.email),
            enabled: enabled,
          ),
          SizedBox(
            height: 20,
          ),
          CustomFormField(
            labelText: "Password",
            hintText: "Enter your password",
            icon: SuffixIcon(icon: Icons.person),
            enabled: enabled,
          ),
          SizedBox(
            height: 20,
          ),
          CustomFormField(
            labelText: "Confirm Password",
            hintText: "Re-enter password",
            icon: SuffixIcon(icon: Icons.person),
            enabled: enabled,
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
              text: "Continue",
              pressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CompleteProfile(camera: camera,),
                  ),
                );
              }),
          SizedBox(height: 10),
          Text(
            'By continuing, you confirm that you agree \nwith our Terms and Conditions',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: 30),
          Text(
            "or signin with",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SocialCard(
              icon: 'assets/icons/google-icon.svg',
              onPressed: () {},
            ),
            SocialCard(
              icon: 'assets/icons/facebook-2.svg',
              onPressed: () {},
            ),
            SocialCard(
              icon: 'assets/icons/twitter.svg',
              onPressed: () {},
            ),
          ]),
        ],
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  SocialCard({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final String icon;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(12),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: SecondaryColor,
              shape: BoxShape.circle,
            ),
            child: Container(child: SvgPicture.asset(icon))),
      ),
      onTap: onPressed,
    );
  }
}
