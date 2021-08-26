import 'package:flutter/material.dart';
import 'package:personalexpense/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:personalexpense/widgets/new_transaction.dart';
import 'package:personalexpense/widgets/transaction_list.dart';
import 'package:personalexpense/widgets/usert_transaction.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Personal-expense app",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal expense-app"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "Enter-Expenses",
                    style: TextStyle(fontSize: 40.0),
                  )),
                )),
            Usertransaction(),
          ],
        ),
      ),
    );
  }
}
