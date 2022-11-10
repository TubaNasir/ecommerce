import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/layout.dart';
import 'package:ecommerce/widgets/suffix_icon.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();

}


class _CheckoutState extends State<Checkout> {

  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation = '';
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Checkout', backButton: true),
        body: Layout(
          widget: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "Enter your name",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: SuffixIcon(icon: Icons.lock),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Contact",
                          hintText: "Enter your contact",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: SuffixIcon(icon: Icons.phone),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          labelText: "Address",
                          hintText: "Enter your password",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: SuffixIcon(icon: Icons.location_on),
                        ),
                      ),
                      Container(
                        height: 65,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.0),
                            border: Border.all(color: TextColor2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            // Initial Value
                            borderRadius: BorderRadius.circular(28),
                            isExpanded: true,
                            value: dropdownvalue,
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
