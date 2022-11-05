import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/suffix_icon.dart';
import 'package:ecommerce/components/button.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  Form(
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
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly
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
                            SocialCard(icon: 'assets/icons/google-icon.svg', onPressed: () {},),
                            SocialCard(icon: 'assets/icons/facebook-2.svg', onPressed: () {},),
                            SocialCard(icon: 'assets/icons/twitter.svg', onPressed: () {},),

                          ],
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  InkWell(child: Text("Don't have an account? Signup.")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
   SocialCard({
    Key? key,
    required this.icon,
    required this.onPressed
  }) : super(key: key);

  final String icon;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Container(
          decoration: BoxDecoration(
            color: TextColor,
            shape: BoxShape.circle,
          ),
            child: SvgPicture.asset(icon)
        ),
      ),
      onTap: onPressed,
    );
  }
}
