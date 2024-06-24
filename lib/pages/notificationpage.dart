import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';

class NotificationPage extends StatelessWidget{
  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Уведомления", style: TextStyles.StyleText.copyWith(fontSize: 30),),
      ),
        body: const Center(
          child: Text("У вас пока нет уведомлений", textAlign:  TextAlign.center,
          style: TextStyles.StyleText,),
        )
    );
  }
}