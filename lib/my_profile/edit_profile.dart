import 'package:ecommerce/screens/my_profile.dart';
import 'package:ecommerce/widgets/button.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/suffix_icon.dart';
import 'package:flutter/material.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Profile", backButton: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            child: EditProfileForm(),
          ),
      ),
    );
  }
}

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        FormField(
          labelText: "Email",
          hintText: "your email",
          icon: SuffixIcon(icon: Icons.email),
        ),
        SizedBox(height: 20,),
        FormField(
          labelText: "First Name",
          hintText: "your first name",
          icon: SuffixIcon(icon: Icons.person),
        ),
        SizedBox(height: 20,),
        FormField(
          labelText: "Last Name",
          hintText: "your last name",
          icon: SuffixIcon(icon: Icons.person),
        ),
        SizedBox(height: 20,),
        FormField(
          labelText: "Phone Number",
          hintText: "your phone number",
          icon: SuffixIcon(icon: Icons.phone_android),
        ),
        SizedBox(height: 20,),
        FormField(
          labelText: "Gender",
          hintText: "your gender",
          icon: SuffixIcon(icon: Icons.person),
        ),
        SizedBox(height: 20,),
        CustomButton(
            text: "Edit",
            pressed: () {
              print('hello');
              //state mgmt set enabled to tru; if enabled = true, button = save changes
            }),
      ],
    );
  }
}


class FormField extends StatelessWidget {
  const FormField(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.icon})
      : super(key: key);

  final String labelText, hintText;
  final SuffixIcon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            enabled: false,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: icon, //SuffixIcon(icon: Icons.email)
          ),
        ),
      ],
    );
  }
}
