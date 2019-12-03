import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xff162229);

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
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
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
