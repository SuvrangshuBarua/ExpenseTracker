import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xff162229);

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredAmount <= 0 || enteredTitle.isEmpty) {
      return;
    }
    addTx(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Color(0xffe7eaef),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: PrimaryColor,
                child: Text(
                  'Add Transaction',
                  style: TextStyle(color: Colors.white),
                ),
                textColor: PrimaryColor,
                onPressed: submitData,
              ),
            )
          ],
        ),
      ),
    );
  }
}
