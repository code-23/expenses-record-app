import 'package:flutter/material.dart';

class Newtransaction extends StatelessWidget {
  late final Function addtx;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  Newtransaction(this.addtx);

  void submitData() {
    final enteredTitle = titlecontroller.text;
    final enteredamount = double.parse(amountcontroller.text);
    if (enteredTitle.isEmpty || enteredamount <= 0) {
      return;
    }
    addtx(titlecontroller.text, double.parse(amountcontroller.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titlecontroller,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountcontroller,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: () {
                submitData();
              },
              child: Text(
                "Add Transaction",
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
