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

  @override
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
                margin: const EdgeInsets.only(top: 47),

                decoration: BoxDec.DecBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(top:10),
                      child: Text("Выберите договор", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
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
              const SizedBox(height: 25),
              Container(
                width: 331,
                height: 108,
                margin: const EdgeInsets.only(top: 25),

                decoration: BoxDec.DecBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(top:10),
                      child: Text("Сумма", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
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
              const SizedBox(height: 100),
              SizedBox(
                width: 193,
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsProj.colorYel
                  ),
                  child: const Text('Оплатить', style: TextStyles.StyleText,
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