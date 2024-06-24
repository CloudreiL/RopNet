import 'package:flutter/material.dart';

import 'package:ropnet/classes/style.dart';

class TechSuppPage extends StatelessWidget{
  const TechSuppPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ТехПоддержка", style: TextStyles.StyleText.copyWith(fontSize: 30)),
      ),
        body: const Center(
          child: Text("TechSupp Page ", textAlign:  TextAlign.center,),
        )
    );
  }
}