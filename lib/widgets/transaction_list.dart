import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personalexpense/models/transaction.dart';
import 'package:personalexpense/widgets/usert_transaction.dart';

class Transactionlist extends StatelessWidget {
  late final List<Transaction> tr;
  Transactionlist(this.tr);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: tr.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '${tx.amount!.toStringAsFixed(2)}RS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                padding: EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tx.title.toString(),
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        DateFormat('yyyy/MM/dd').format(tx.date).toString(),
                        style: TextStyle(fontSize: 8.0, color: Colors.grey),
                      )
                    ]),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
