import 'package:ecommerce/components/button.dart';
import 'package:ecommerce/components/suffix_icon.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                  SizedBox(height: 80),
                  CompleteProfileMessage(),
                  SizedBox(height: 40),
                  ProfileForm(),
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

class CompleteProfileMessage extends StatelessWidget {
  const CompleteProfileMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Complete Profile",
      style: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "First Name",
              hintText: "Enter your first name",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.account_circle),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Last Name",
              hintText: "Enter your last name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.account_circle),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Contact Number",
              hintText: "Enter your contact number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcon(icon: Icons.phone),
            ),
          ),
          SizedBox(height: 30),
          CustomButton(
              text: "Sign Up",
              pressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CompleteProfile(),
                  ),
                );
              }
              ),
        ],
      ),
    );
  }
}


