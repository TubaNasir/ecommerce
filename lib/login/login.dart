import 'package:ecommerce/constants.dart';
import 'package:ecommerce/signup/signup.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce/home/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

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
                  SizedBox(height: 50),
                  WelcomeMessage(),
                  SizedBox(height: 50),
                  LoginForm(),
                  SizedBox(height: 20),
                  SignupRedirection(),
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
  const SignupRedirection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Text(" Signup.", style: TextStyle(color: PrimaryColor))),
      ],
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome",
      style: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.email),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.password),
            ),
          ),
          SizedBox(height: 40),
          CustomButton(
              text: "Continue",
              pressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              }),
          SizedBox(height: 30),
          Text(
            "or signup with",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            ],
          ),
          SizedBox(height: 20)
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