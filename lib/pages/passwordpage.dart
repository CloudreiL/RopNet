import 'package:flutter/material.dart';

import 'package:ropnet/classes/style.dart';

class PasswordPage extends StatelessWidget{
  const PasswordPage({super.key});
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
             Padding(padding: EdgeInsets.all(27),
             child: Icon(Icons.vpn_key_outlined, color: ColorGray.colorsGray, size: 100)
             ),
             Text("Текущий пароль", style: TextStyles.StyleText),
             Container(
               width: 300,
               margin: EdgeInsets.only(top: 15, bottom: 15),
               child: TextField(
                 decoration: FieldDec.TextFieldDec,
               ),
             ),
             Text("Новый пароль", style: TextStyles.StyleText),
             Container(
               width: 300,
               margin: EdgeInsets.only(top: 15, bottom: 15),
               child: TextField(
                 decoration: FieldDec.TextFieldDec.copyWith(
                     suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye))
                 ),
               ),
             ),
             Text("Подтверждение пароля", style: TextStyles.StyleText),
             Container(
               width: 300,
               margin: EdgeInsets.only(top:15),
               child: TextField(
                 decoration: FieldDec.TextFieldDec.copyWith(
                     suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye))
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