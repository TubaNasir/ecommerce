import 'package:ecommerce/constants.dart';
import 'package:ecommerce/login/login.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/suffix_icon.dart';
import 'package:flutter/material.dart';

import '../widgets/form_field.dart';

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

class ProfileForm extends StatefulWidget {
  const ProfileForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

bool enabled = true;

class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        CustomFormField(
          labelText: "First Name",
          hintText: "Enter your first name",
          icon: SuffixIcon(icon: Icons.person),
          enabled: enabled,
        ),
        SizedBox(height: 20,),
        CustomFormField(
          labelText: "Last Name",
          hintText: "Enter your last name",
          icon: SuffixIcon(icon: Icons.person),
          enabled: enabled,
        ),
        SizedBox(height: 20,),
        CustomFormField(
          labelText: "Contact Number",
          hintText: "Enter your contact number",
          icon: SuffixIcon(icon: Icons.phone_android),
          enabled: enabled,
        ),
        SizedBox(height: 20,),
        CustomButton(
            text: "Sign Up",
            pressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            }),
      ],
    );
  }
}


