import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';
import 'package:ropnet/pages/paymenthistory/paymentstatus/paymentpaid.dart';
import 'package:ropnet/api_service.dart';
import 'package:ropnet/user.dart';

class PaymentInfo extends StatefulWidget {
  final String startDate;
  final String endDate;

  static int ind = 0;

  const PaymentInfo({super.key, required this.startDate, required this.endDate});

  @override
  _PaymentInfoState createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  late Future<User> futureUser;
  final ApiService apiService = ApiService();
  List<Payment> payments = [];

  @override
  void initState() {
    super.initState();
    futureUser = apiService.fetchUser();
    futureUser.then((user) {
      setState(() {
        payments = user.payments;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("История платежей", style: TextStyles.StyleText.copyWith(fontSize: 30)),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 77,
              width: 331,
              decoration: BoxDec.DecBox,
              child: Column(
                children: [
                  Text("Период", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(widget.startDate, style: TextStyles.StyleText.copyWith(color: Colors.white)),
                      ),
                      Text("—", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(widget.endDate, style: TextStyles.StyleText.copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text("Детальная статистика для всех договоров", style: TextStyles.StyleText.copyWith(fontSize: 15)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Скачать историю", style: TextStyles.StyleText.copyWith(fontSize: 15, color: ColorsProj.colorBlue)),
            ),
            const Divider(color: ColorsProj.colorBlue, thickness: 2),
            Expanded(
              child: FutureBuilder<User>(
                future: futureUser,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: payments.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: InkWell(
                                  onTap: () {
                                    PaymentInfo.ind = index;
                                    if (payments[index].status == "Оплачен") {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PaymentPaidPage(
                                            title: payments[index].date,
                                            paymentIndex: PaymentInfo.ind,
                                            colorPaid: ColorsProj.colorBlue,
                                            iconPaid: const Icon(Icons.check, color: ColorsProj.colorsGray, size: 110),
                                            fontPaid: Colors.white,
                                          ),
                                        ),
                                      );
                                    } else if (payments[index].status == "В ожидании") {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PaymentPaidPage(
                                            title: payments[index].date,
                                            paymentIndex: PaymentInfo.ind,
                                            colorPaid: ColorsProj.colorYel,
                                            iconPaid: const Icon(Icons.schedule, color: ColorsProj.colorsGray, size: 110),
                                            fontPaid: ColorsProj.colorsGray,
                                          ),
                                        ),
                                      );
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PaymentPaidPage(
                                            title: payments[index].date,
                                            paymentIndex: PaymentInfo.ind,
                                            colorPaid: ColorsProj.colorRed,
                                            iconPaid: const Icon(Icons.close, color: ColorsProj.colorsGray, size: 110),
                                            fontPaid: ColorsProj.colorsGray,
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    width: 331,
                                    height: 103,
                                    decoration: BoxDec.DecBox.copyWith(color: Colors.white),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(payments[index].date, style: TextStyles.StyleText),
                                        Text(payments[index].contract, style: TextStyles.StyleText),
                                        Text(payments[index].paymentNumber, style: TextStyles.StyleText),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Text('No data found');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
