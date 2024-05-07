import 'package:flutter/cupertino.dart';

class ZShadowStyle {
  static const textShadow = Shadow(
    blurRadius: 5.0,
    color: Color.fromRGBO(0, 0, 0, 0.5), // Black with 50% opacity
    offset: Offset(2.0, 2.0),
  );
}