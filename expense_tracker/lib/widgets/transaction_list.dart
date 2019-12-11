import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

const PrimaryColor = const Color(0xff162229);

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Card(
              elevation: 7,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: PrimaryColor,
                  radius: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      child: Text(
                        '\$${transactions[index].amount}',
                        style: TextStyle(
                          color: Color(0xffe7eaef),
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  transactions[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle:
                    Text(DateFormat.yMMMd().format(transactions[index].date)),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Theme.of(context).errorColor,
                  onPressed: () => deleteTx(transactions[index].id),
                ),
              ),
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
