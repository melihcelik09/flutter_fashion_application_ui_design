import 'package:flutter/material.dart';

class Constant {
  static const TextStyle appTitle = TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontSize: 22,
      fontWeight: FontWeight.bold);
  static const TextStyle followSuggestText = TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.bold);
  static const TextStyle userTitleText = TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.bold);
  static const TextStyle postText = TextStyle(
    color: Colors.grey,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static const TextStyle tagText = TextStyle(
      color: Colors.brown,
      fontFamily: 'Montserrat',
      fontSize: 11,
      fontWeight: FontWeight.w800);
  static const Color cameraIcon = Colors.black;
  static const followSuggestPadding = EdgeInsets.only(top: 10);
  static const followSuggestPaddingAll = EdgeInsets.all(10);
  static const postCardPaddingAll = EdgeInsets.all(16);

  static BorderRadius borderRadius = BorderRadius.circular(36);
  static BorderRadius borderRadiusImage = BorderRadius.circular(5);
  static BorderRadius borderRadiusDetail = BorderRadius.circular(10);

  static BoxDecoration buttonStyle = BoxDecoration(
      borderRadius: Constant.borderRadius,
      color: const Color.fromRGBO(150, 99, 66, 1));
  static const Icon moreButtonStyle =
      Icon(Icons.more_vert, color: Colors.grey, size: 22);
  static BoxDecoration tagStyle = BoxDecoration(
      borderRadius: Constant.borderRadiusImage,
      color: const Color.fromRGBO(231, 220, 220, 1));
  static const Color bottomButtonColor = Color.fromRGBO(230, 230, 230, 1);
}
