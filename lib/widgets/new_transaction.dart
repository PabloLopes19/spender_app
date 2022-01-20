import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: () {
                  addNewTransaction(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
                child: Text("Add Transaction"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
