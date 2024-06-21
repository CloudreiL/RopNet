import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';

const List <String> options = <String>[
  "0001",
  "0002",
  "0003",
  "0004"
];

class ReplenishPage extends StatefulWidget {
  const ReplenishPage({super.key});

  _ReplenishPageState createState() => _ReplenishPageState();
}

class _ReplenishPageState extends State<ReplenishPage>{

  String dropdownValue = options.first;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Тинькофф", style: TextStyles.StyleText.copyWith(fontSize: 30))
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 331,
                height: 108,
                margin: EdgeInsets.only(top: 47),

                decoration: BoxDec.DecBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top:10),
                      child: Text("Выберите договор", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: DropdownMenu(
                        dropdownMenuEntries: options.map<DropdownMenuEntry<String>>((String value) {return DropdownMenuEntry<String>(value: value, label: value);}).toList(),
                        width: 290,
                        textStyle: TextStyles.StyleText.copyWith(fontSize: 15),
                        inputDecorationTheme: DropMenuDec.MenuDec
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: 331,
                height: 108,
                margin: EdgeInsets.only(top: 25),

                decoration: BoxDec.DecBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top:10),
                      child: Text("Сумма", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: SizedBox(
                        width: 290,
                        child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: FieldDec.TextFieldDec
                        ),
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                width: 193,
                child: ElevatedButton(onPressed: (){},
                  child: Text('Оплатить', style: TextStyles.StyleText,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorYel.colorYel
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}