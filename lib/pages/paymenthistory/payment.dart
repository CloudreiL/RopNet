import 'package:flutter/material.dart';
import 'package:ropnet/classes/class.dart';
import 'package:ropnet/classes/style.dart';

class PaymentPage extends StatefulWidget{
  const PaymentPage ({Key? key, required this.title, required this.paymentIndex}) : super(key: key);

  final String title;
  final int paymentIndex;

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>{

  @override
  Widget build(BuildContext context){

    final payment = payments[widget.paymentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyles.StyleText.copyWith(fontSize: 30)),
      ),
      body: Container(),
    );
  }
}