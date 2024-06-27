import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';
import 'package:ropnet/api_service.dart';
import 'package:ropnet/user.dart';

class ReplenishPage extends StatefulWidget {
  const ReplenishPage({super.key});

  @override
  _ReplenishPageState createState() => _ReplenishPageState();
}

class _ReplenishPageState extends State<ReplenishPage> {
  late Future<User> futureUser;
  final ApiService apiService = ApiService();
  String? dropdownValue;
  List<String> contracts = [];

  @override
  void initState() {
    super.initState();
    futureUser = apiService.fetchUser();
    futureUser.then((user) {
      setState(() {
        contracts = user.contracts;
        dropdownValue = contracts.isNotEmpty ? contracts.first : null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Тинькофф", style: TextStyles.StyleText.copyWith(fontSize: 30)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FutureBuilder<User>(
                future: futureUser,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return Container(
                      width: 331,
                      height: 108,
                      margin: const EdgeInsets.only(top: 47),
                      decoration: BoxDec.DecBox,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Выберите договор", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: DropdownMenu(
                              dropdownMenuEntries: contracts.map<DropdownMenuEntry<String>>((String value) {
                                return DropdownMenuEntry<String>(value: value, label: value);
                              }).toList(),
                              width: 290,
                              textStyle: TextStyles.StyleText.copyWith(fontSize: 15),
                              inputDecorationTheme: DropMenuDec.MenuDec,
                              initialSelection: dropdownValue,
                              onSelected: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Text('No data found');
                  }
                },
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
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Сумма", style: TextStyles.StyleText.copyWith(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                        width: 290,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: FieldDec.TextFieldDec,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 193,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsProj.colorYel,
                  ),
                  child: const Text(
                    'Оплатить',
                    style: TextStyles.StyleText,
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
