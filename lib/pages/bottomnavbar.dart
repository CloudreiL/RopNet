import 'package:flutter/material.dart';

import 'package:ropnet/pages/accountpage.dart';
import 'package:ropnet/pages/passwordpage.dart';
import 'package:ropnet/pages/paymentpage.dart';
import 'package:ropnet/pages/technicalsupportpage.dart';
class BottomNavBar extends StatefulWidget{
  const BottomNavBar({super.key});

  @override
  _BottomNavBarPage createState() => _BottomNavBarPage();
}


class _BottomNavBarPage extends State<BottomNavBar>{
  int myCurrentIndex = 0;

  List pages =[
    AccountPage(),
    PaymentPage(),
    PasswordPage(),
    TechSuppPage()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: (
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: const Offset(0,3),
              spreadRadius: 1,
              blurRadius: 10
          )
          ],
        ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Color.fromRGBO(66, 74, 96, 1),
                  selectedItemColor: Color.fromRGBO(255, 239, 132, 1),
                  unselectedItemColor: Colors.white,
                  showUnselectedLabels: false,

                  currentIndex: myCurrentIndex,
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Аккаунт"),
                    BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label: "Оплата"),
                    BottomNavigationBarItem(icon: Icon(Icons.vpn_key_outlined), label: "Пароль"),
                    BottomNavigationBarItem(icon: Icon(Icons.headset_mic_outlined), label:"Поддержка")
                  ],
                  onTap: (index){
                  setState(() {
                    myCurrentIndex = index;
                  });
                  },
                )

            )
      )
      ),
      body: pages[myCurrentIndex],
    );
  }
}

