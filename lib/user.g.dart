// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// user.g.dart
User _$UserFromJson(Map<String, dynamic> json) {
      return User(
            id: json['id'] as String? ?? '',
            phone: json['phone'] as String? ?? '',
            password: json['password'] as String? ?? '',
            firstName: json['firstName'] as String? ?? '',
            secondName: json['secondName'] as String? ?? '',
            lastName: json['lastName'] as String? ?? '',
            email: json['email'] as String? ?? '',
            balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
            contracts: (json['contracts'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
                [],
            payments: (json['payments'] as List<dynamic>?)
                ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
                .toList() ??
                [],
      );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'password': instance.password,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'lastName': instance.lastName,
      'email': instance.email,
      'balance': instance.balance,
      'contracts': instance.contracts,
      'payments': instance.payments,
};

Payment _$PaymentFromJson(Map<String, dynamic> json) {
      return Payment(
            paymentNumber: json['paymentNumber'] as String? ?? '',
            date: json['date'] as String? ?? '',
            amount: json['amount'] as int? ?? 0,
            contract: json['contract'] as String? ?? '',
            status: json['status'] as String? ?? '',
            paymentMethod: json['paymentMethod'] as String? ?? '',
      );
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'paymentNumber': instance.paymentNumber,
      'date': instance.date,
      'amount': instance.amount,
      'contract': instance.contract,
      'status': instance.status,
      'paymentMethod': instance.paymentMethod,
};
