import 'package:flutter/material.dart';

import 'package:ropnet/classes/style.dart';
import 'package:ropnet/pages/balance/replenish.dart';

class BalancePage extends StatelessWidget{
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Пополнить баланс", style: TextStyles.StyleText.copyWith(fontSize: 30)),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top:28, bottom: 28),
              child: Text("Вы можете пополнять свой лицевой счет удобным для вас способом через платежные терминалы, через банк, со счета мобильного телефона",
                style: TextStyles.StyleText.copyWith(
                  fontSize: 15,
                  color: ColorGray.colorsGray
                ),
                textAlign: TextAlign.center,
              )
            ),
            Container(
              width: 301,
              height: 81,

              decoration: BoxDec.DecBox.copyWith(color: Colors.white),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReplenishPage())
                  );
                },
                child: Image.asset("assets/images/tinkoff.png"),
              ),
            )

          ],
        ),
      ),
    );
  }
}