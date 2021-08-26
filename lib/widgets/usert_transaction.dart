import 'package:flutter/material.dart';
import 'package:personalexpense/models/transaction.dart';
import 'package:personalexpense/widgets/new_transaction.dart';
import 'package:personalexpense/widgets/transaction_list.dart';

class Usertransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Usertransactionstate();
  }
}

class Usertransactionstate extends State<Usertransaction> {
  final List<Transaction> usertransaction = [
    Transaction(
        id: 'T1', title: 'New Shoes', amount: 700, date: DateTime.now()),
    Transaction(
        id: 'T2', title: 'Home groceries', amount: 1600, date: DateTime.now()),
    Transaction(
        id: 'T3', title: 'New headphones', amount: 2800, date: DateTime.now())
  ];

  void addnewtransaction(String txtitle, double txamount) {
    final newtx = Transaction(
        amount: txamount,
        title: txtitle,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      usertransaction.add(newtx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Newtransaction(addnewtransaction),
        Transactionlist(usertransaction),
      ],
    );
  }
}
