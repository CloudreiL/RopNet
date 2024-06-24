import 'package:flutter/material.dart';

import 'package:ropnet/classes/style.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage>{

  bool _isObscure = true;
  bool _isObscure_2 = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Изменение пароля", style: TextStyles.StyleText.copyWith(fontSize: 30),),
      ),
        body: SingleChildScrollView(
        child: Center(
         child: Column(
           children: [
             const Padding(padding: EdgeInsets.all(27),
             child: Icon(Icons.vpn_key_outlined, color: ColorGray.colorsGray, size: 100)
             ),
             const Text("Текущий пароль", style: TextStyles.StyleText),
             Container(
               width: 300,
               margin: const EdgeInsets.only(top: 15, bottom: 15),
               child: TextField(
                 decoration: FieldDec.TextFieldDec,
               ),
             ),
             const Text("Новый пароль", style: TextStyles.StyleText),
             Container(
               width: 300,
               margin: const EdgeInsets.only(top: 15, bottom: 15),
               child: TextField(
                 obscureText: _isObscure,
                 decoration: FieldDec.TextFieldDec.copyWith(
                   suffixIcon: IconButton(onPressed: (){
                     setState(() {
                       _isObscure = !_isObscure;
                     });
                   },
                     icon: Icon(
                       _isObscure ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                     ),
                   ),
                 ),
               ),
             ),
             const Text("Подтверждение пароля", style: TextStyles.StyleText),
             Container(
               width: 300,
               margin: const EdgeInsets.only(top:15),
               child: TextField(
                 obscureText: _isObscure_2,
                 decoration: FieldDec.TextFieldDec.copyWith(
                   suffixIcon: IconButton(onPressed: (){
                     setState(() {
                       _isObscure_2 = !_isObscure_2;
                     });
                   },
                     icon: Icon(
                       _isObscure_2 ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                     ),
                   ),
                 ),
               ),
             ),

           ],
         ),
        )
        ),
    );
  }
}