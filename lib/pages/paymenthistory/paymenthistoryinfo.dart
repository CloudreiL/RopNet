import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';
import 'package:ropnet/classes/class.dart';

class PaymentInfo extends StatefulWidget{
  final String startDate;
  final String endDate;

  static int ind = 0;

  const PaymentInfo ({Key? key, required this.startDate, required this.endDate}) : super(key: key);

  @override
  _PaymentInfoState createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("История платежей", style: TextStyles.StyleText.copyWith(fontSize: 30)),
        backgroundColor: Colors.transparent,
      ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:15),
                height: 77,
                width: 331,

                decoration: BoxDec.DecBox,

                child: Column(
                  children: [
                    Text("Период", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 15),
                          child: Text(widget.startDate, style: TextStyles.StyleText.copyWith(color: Colors.white)),
                        ),

                        Text("—", style: TextStyles.StyleText.copyWith(color: Colors.white)),

                        Padding(padding: EdgeInsets.only(right: 15),
                          child: Text(widget.endDate, style: TextStyles.StyleText.copyWith(color: Colors.white)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24),
                child: Text("Детальная статистика для всех договоров", style: TextStyles.StyleText.copyWith(fontSize: 15)),
              ),
              TextButton(onPressed: (){},
                  child: Text("Скачать историю", style: TextStyles.StyleText.copyWith(fontSize: 15,color: ColorBlue.colorBlue),)
              ),
              Divider(
                color: ColorBlue.colorBlue, thickness: 2
              ),
              Expanded(child: ListView.builder(
                itemCount: payments.length,
                  itemBuilder: (context, index){
                    return Center(
                      child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        InkWell(
                          onTap: (){
                            PaymentInfo.ind = index;
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            width: 331,
                            height: 103,

                            decoration: BoxDec.DecBox.copyWith(color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(payments[index].date_paym, style: TextStyles.StyleText),
                                Text(payments[index].num_paym, style: TextStyles.StyleText),
                                Text(payments[index].contract_num as String, style: TextStyles.StyleText),
                              ],
                            ),
                          ),
                        )
                      ],
                      ),
                    );
                  },

              )

              )],
          ),
        ),
    );
  }
}