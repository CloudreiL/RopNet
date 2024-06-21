import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';
import 'package:ropnet/pages/notificationpage.dart';

class AccountPage extends StatelessWidget{
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Аккаунт', style: TextStyles.StyleText.copyWith(fontSize: 30),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationPage(),
            ),
            );
          }, icon: Icon(Icons.notifications_none_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width:337,
              height: 146,

              decoration: BoxDec.DecBox,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.account_circle_outlined, size: 100, color: Colors.white,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(right: 15),
                          child: Text('Фамилия', style: TextStyles.StyleText.copyWith(color: Colors.white))
                      ),
                      Text('Имя', style: TextStyles.StyleText.copyWith(color: Colors.white)),
                      Text('Отчество', style: TextStyles.StyleText.copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width:337,
              height: 140,

              decoration: BoxDec.DecBox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left:10, right:10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Мобильный телефон', style: TextStyles.StyleText.copyWith(color: ColorYel.colorYel, fontSize: 15)),
                          Text('+ 7 999 999 99 99', style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 15))
                        ],
                      )
                  ),

                  SizedBox(height: 15),

                  Padding(padding: EdgeInsets.only(left:10, right:10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Контактный телефон', style: TextStyles.StyleText.copyWith(color: ColorYel.colorYel, fontSize: 15)),
                          Text('-', style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 15))
                        ],
                      )
                  ),

                  SizedBox(height: 15),

                    Padding(padding: EdgeInsets.only(left:10, right:10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Email', style: TextStyles.StyleText.copyWith(color: ColorYel.colorYel, fontSize: 15)),
                        Text('example@mail.ru', style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 15))
                        ],
                      )
                    )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width:337,
              height: 108,
              decoration: BoxDec.DecBox,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(0),
                  child: Text("Баланс", style: TextStyles.StyleText.copyWith(color: ColorYel.colorYel))
                  ),
                  Text("[amount] руб.", style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 30))
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}