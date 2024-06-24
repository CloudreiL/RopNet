import 'package:flutter/material.dart';


class ColorGray{
  static const Color colorsGray=  Color.fromRGBO(66, 74, 96, 1);
}

class ColorYel{
  static const Color colorYel = Color.fromRGBO(255, 239, 132, 1);
}

class ColorBlue{
  static const Color colorBlue = Color.fromRGBO(77, 147, 207, 1);
}

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
    color: ColorGray.colorsGray,
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
      color: ColorGray.colorsGray
    ),
    filled: true,
    fillColor: Colors.white,
  );
}

class DropMenuDec{
  static InputDecorationTheme MenuDec = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    labelStyle: TextStyles.StyleText.copyWith(
        color: ColorGray.colorsGray
    ),
    filled: true,
    fillColor: Colors.white,
  );
}
