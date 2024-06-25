
import 'package:flutter/material.dart';
import 'package:ropnet/classes/class.dart';
import 'package:ropnet/classes/style.dart';

class PaymentPaidPage extends StatefulWidget{
  const PaymentPaidPage ({super.key,
    required this.title,
    required this.paymentIndex,
    required this.colorPaid,
    required this.iconPaid,
    required this.fontPaid
  });

  final String title;
  final int paymentIndex;
  final Color colorPaid;
  final Icon iconPaid;
  final Color fontPaid;

  @override
  _PaymentPaidPageState createState() => _PaymentPaidPageState();
}

class _PaymentPaidPageState extends State<PaymentPaidPage>{

  @override
  Widget build(BuildContext context){

    final payment = payments[widget.paymentIndex];
    final summ = payment.summ;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.title, style: TextStyles.StyleText.copyWith(fontSize: 30)),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: widget.colorPaid,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(padding: const EdgeInsets.only(top: 25),
                      child: Text(payment.status_paym, style: TextStyles.StyleText.copyWith(color: widget.fontPaid, fontSize: 30)),
                    ),
                    widget.iconPaid,
                    Text("-$summ руб.", style: TextStyles.StyleText.copyWith(color: widget.fontPaid, fontSize: 30),)
                  ],
                ),
              ),
            const SizedBox(height: 23),
            Text("Детали платежа", style: TextStyles.StyleText.copyWith(fontSize: 25)),
            const SizedBox(height: 23),
            Container(
              width: 331,
              height: 222,

              decoration: BoxDec.DecBox.copyWith(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Номер платежа:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text(payment.num_paym, style: TextStyles.StyleText.copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Дата платежа:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text(payment.date_paym, style: TextStyles.StyleText.copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Сумма:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text("$summ руб.", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Договор:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text(payment.contract_num, style: TextStyles.StyleText.copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Договор:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text(payment.contract_num, style: TextStyles.StyleText.copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Состояние:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text(payment.status_paym, style: TextStyles.StyleText.copyWith(fontSize: 15, color: ColorsProj.colorBlue)),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Способ платежа:", style: TextStyles.StyleText.copyWith(fontSize: 15)),
                        Text(payment.method_paym, style: TextStyles.StyleText.copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}