import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(8, 211, 116, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: colorGreen, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: colorWhite,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: colorGreen, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      border: OutlineInputBorder(),
      labelText: label);
}

ScreenBackground(context) {
  return SvgPicture.asset(
    "assets/images/clip.svg",
    alignment: Alignment.center,
    width: double.infinity,
    height: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,
  );
}

DecoratedBox AppDropDown(data) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: colorWhite,
      border: Border.all(color: colorWhite, width: 1),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: data,
    ),
  );
}
