import 'package:flutter/material.dart';

import 'package:ropnet/classes/style.dart';

const List <String> options = <String>[
  "0001",
  "0002",
  "0003",
  "0004"
];

class PaymentHistory extends StatefulWidget{
  const PaymentHistory ({super.key});

  _PaymentHistoryState createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory>{

  TextEditingController _dateController_1 = TextEditingController();
  TextEditingController _dateController_2 = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("История платежей", style: TextStyles.StyleText.copyWith(fontSize: 30),),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 350,
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
                        inputDecorationTheme: DropMenuDec.MenuDec,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:22),
              width: 350,
              height: 108,

              decoration: BoxDec.DecBox,

              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Период", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 150,
                        height: 50,

                        child: TextField(
                          controller: _dateController_1,
                          decoration: FieldDec.TextFieldDec.copyWith(prefixIcon: Icon(Icons.calendar_today_outlined, size: 20,)),
                          readOnly: true,
                          onTap:
                          (){
                            _selectDate_1();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 150,
                        height: 50,

                        child: TextField(
                          controller: _dateController_2,
                          decoration: FieldDec.TextFieldDec.copyWith(prefixIcon: Icon(Icons.calendar_today_outlined, size: 20,)),
                          readOnly: true,
                          onTap:
                          (){
                            _selectDate_2();
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:48),
              width: 193,
              child: ElevatedButton(onPressed: (){
              },
                child: Text('Показать', style: TextStyles.StyleText,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorYel.colorYel
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _selectDate_1() async{
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    );

    if (_picked != null){
      setState(() {
        _dateController_1.text = _picked.toString().split(" ")[0];
      });
    }
  }

  Future<void> _selectDate_2() async{
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    );

    if (_picked != null){
      setState(() {
        _dateController_2.text = _picked.toString().split(" ")[0];
      });
    }
  }

}

