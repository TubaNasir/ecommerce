import 'package:ecommerce/complete_profile/complete_profile.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/login/login.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  SizedBox(height: 40),
                  SignUpForm(),
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
        Text("Already have an account?"),
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Login()),
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

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
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
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.lock),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Confirm Password",
              hintText: "Re-type password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.lock),
            ),
          ),
          SizedBox(height: 30),
          CustomButton(
              text: "Continue",
              pressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CompleteProfile(),
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
