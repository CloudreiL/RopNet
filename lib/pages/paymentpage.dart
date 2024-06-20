import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';

class PaymentPage extends StatelessWidget{
  const PaymentPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Оплата", style: TextStyles.StyleText. copyWith(fontSize: 30),),
      ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 62),
              Container(
                width: 301,
                height: 69,
                decoration: BoxDec.DecBox,
                child: TextButton(onPressed: (){},
                  child: Text("Пополнить баланс", style: TextStyles.StyleText.copyWith(fontSize: 25, color: Colors.white)),
                ),
              ),
              SizedBox(height: 46),

              Container(
                width: 301,
                height: 69,
                decoration: BoxDec.DecBox,
                child: TextButton(onPressed: (){},
                  child: Text("История платежей", style: TextStyles.StyleText.copyWith(fontSize: 25, color: Colors.white)),
                ),
              ),

            ],
          ),
        ),
    );
  }
}