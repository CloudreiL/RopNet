import 'package:flutter/material.dart';

import 'package:ropnet/classes/style.dart';
import 'package:ropnet/pages/paymenthistory/paymenthistoryinfo.dart';

const List <String> options = <String>[
  "0001",
  "0002",
  "0003",
  "0004"
];

class PaymentHistory extends StatefulWidget{
  const PaymentHistory ({super.key});

  @override
  _PaymentHistoryState createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory>{

  final TextEditingController _dateController_1 = TextEditingController();
  final TextEditingController _dateController_2 = TextEditingController();


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
                        inputDecorationTheme: DropMenuDec.MenuDec,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:22),
              width: 350,
              height: 108,

              decoration: BoxDec.DecBox,

              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 10),
                    child: Text("Период", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 160,
                        height: 50,

                        child: TextField(
                          controller: _dateController_1,
                          decoration: FieldDec.TextFieldDec.copyWith(prefixIcon: const Icon(Icons.calendar_today_outlined, size: 20)),
                          readOnly: true,
                          onTap:
                          (){
                            _selectDate_1();
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 160,
                        height: 50,

                        child: TextField(
                          controller: _dateController_2,
                          decoration: FieldDec.TextFieldDec.copyWith(prefixIcon: const Icon(Icons.calendar_today_outlined, size: 20)),
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
              margin: const EdgeInsets.only(top:48),
              width: 193,
              child: ElevatedButton(onPressed: (){
                if (_dateController_1.text.isEmpty || _dateController_2.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Выберите даты',style: TextStyles.StyleText.copyWith(color: Colors.white)),
                        duration: const Duration(seconds: 1),
                      )
                  );
                } else{
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentInfo(
                          startDate: _dateController_1.text,
                          endDate: _dateController_2.text,
                        ),
                      )
                  );
                }
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsProj.colorYel
                ),
                child: const Text('Показать', style: TextStyles.StyleText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate_1() async{
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    );

    if (picked != null){
      setState(() {
        _dateController_1.text = picked.toString().split(" ")[0];
      });
    }
  }

  Future<void> _selectDate_2() async{
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    );

    if (picked != null){
      setState(() {
        _dateController_2.text = picked.toString().split(" ")[0];
      });
    }
  }
}

