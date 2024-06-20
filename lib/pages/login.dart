import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top:80),
              child: Text("Добро пожаловать в RopNet",
                style: TextStyles.StyleText.copyWith(
                  fontSize: 30,
                  ),
                textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),

              Container(
                height: 305,
                width: 325,
                decoration: BoxDec.DecBox,
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top:20,bottom: 20),
                      child: Image.asset("assets/images/logo/logo_ropnet.png", width: 50, height: 50),
                    ),
                    const SizedBox(height: 5),
                    Padding(padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      width: 315,
                      child: TextField(
                        decoration: FieldDec.TextFieldDec.copyWith(
                          hintText: "Телефон",
                        ),
                      ),
                    ),),

                    Padding(padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 50,
                        width: 315,
                        child: TextField(
                          obscureText: true,
                          decoration: FieldDec.TextFieldDec.copyWith(
                              hintText: "Пароль",
                              suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye))
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}