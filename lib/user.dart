import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String phone;
  final String password;
  final String firstName;
  final String secondName;
  final String lastName;
  final String email;
  final double balance;
  final List<String> contracts;
  final List<Payment> payments;

  User({
    required this.id,
    required this.phone,
    required this.password,
    required this.firstName,
    required this.secondName,
    required this.lastName,
    required this.email,
    required this.balance,
    required this.contracts,
    required this.payments,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  static List<User> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => User.fromJson(json)).toList();
  }
}

@JsonSerializable()
class Payment {
  final String paymentNumber;
  final String date;
  final int amount;
  final String contract;
  final String status;
  final String paymentMethod;

  Payment({
    required this.paymentNumber,
    required this.date,
    required this.amount,
    required this.contract,
    required this.status,
    required this.paymentMethod,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
