import 'package:flutter/material.dart';
import 'package:ropnet/classes/style.dart';
import 'package:ropnet/pages/notificationpage.dart';
import 'package:ropnet/api_service.dart';
import 'package:ropnet/user.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late Future<User> futureUser;
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    futureUser = apiService.fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Аккаунт',
          style: TextStyles.StyleText.copyWith(fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ),
              );
            },
            icon: const Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<User>(
          future: futureUser,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              User user = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 337,
                    height: 146,
                    decoration: BoxDec.DecBox,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 100,
                          color: Colors.white,
                        ),
                          Padding(padding: EdgeInsets.only(right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  user.firstName,
                                  style: TextStyles.StyleText.copyWith(color: Colors.white),
                                ),
                                Text(
                                  user.secondName,
                                  style: TextStyles.StyleText.copyWith(color: Colors.white),
                                ),
                                Text(
                                  user.lastName,
                                  style: TextStyles.StyleText.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 337,
                    height: 140,
                    decoration: BoxDec.DecBox,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Телефон',
                                style: TextStyles.StyleText.copyWith(color: ColorsProj.colorYel, fontSize: 15),
                              ),
                              Text(
                                user.phone,
                                style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Контактный телефон',
                                style: TextStyles.StyleText.copyWith(color: ColorsProj.colorYel, fontSize: 15),
                              ),
                              Text(
                                '-', // Место для контактного телефона, если он отличается
                                style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Email',
                                style: TextStyles.StyleText.copyWith(color: ColorsProj.colorYel, fontSize: 15),
                              ),
                              Text(
                                user.email,
                                style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 337,
                    height: 108,
                    decoration: BoxDec.DecBox,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Баланс",
                            style: TextStyles.StyleText.copyWith(color: ColorsProj.colorYel),
                          ),
                        ),
                        Text(
                          "${user.balance} руб.",
                          style: TextStyles.StyleText.copyWith(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Text('No data found');
            }
          },
        ),
      ),
    );
  }
}
