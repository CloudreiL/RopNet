import 'package:flutter/material.dart';

class TextStyles{
  // ignore: constant_identifier_names
  static const TextStyle StyleText = TextStyle(
    fontSize: 20,
    fontFamily: 'Mons',
    color: Colors.black
  );
}

class BoxDec{
  static BoxDecoration DecBox = BoxDecoration(
    color: const Color.fromRGBO(66, 74, 96, 1),
      boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: const Offset(0,3),
          spreadRadius: 1,
          blurRadius: 10
      )
      ],
      borderRadius: BorderRadius.circular(15)
  );
}

class FieldDec{
  static InputDecoration TextFieldDec = InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    labelStyle: TextStyles.StyleText.copyWith(
      color: const Color.fromRGBO(66, 74, 96, 1)
    ),
    filled: true,
    fillColor: Colors.white,
  );
}