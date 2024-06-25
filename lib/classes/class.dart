

class Payments {
  int id;
  String date_paym;
  String num_paym;
  String contract_num;
  int summ;
  String status_paym;
  String method_paym;

  Payments(this.id, this.date_paym,
      this.num_paym, this.contract_num,
      this.summ, this.method_paym, this.status_paym);
}

List<Payments> payments = [
  Payments(1, "2024-06-28", "101", "0001", 699, "Тинькофф Банк", "Оплачен"),
  Payments(2, "2024-06-29", "104", "0002", 699, "Тинькофф Банк", "В ожидании"),
  Payments(3, "2024-06-30", "099", "0002", 699, "Тинькофф Банк", "Отменен"),
  Payments(2, "2024-06-29", "105", "0002", 699, "Тинькофф Банк", "В ожидании"),
];