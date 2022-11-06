import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(primary: PrimaryColor),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      //appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      textTheme: textTheme());
}

TextTheme textTheme() {
  return TextTheme(
      headline1: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),

    bodyText1: TextStyle(color: TextColor),
    bodyText2: TextStyle(color: TextColor),
  );
}

/*AppBarTheme appBarTheme() {
  return AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: const TextTheme(
      headline6: TextStyle(color: TextColor, fontSize: 18),
    ).headline6,

  );
}*/

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: TextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}