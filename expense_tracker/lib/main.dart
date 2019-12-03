import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
const PrimaryColor = const Color(0xff162229);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: PrimaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9ba8b8),
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Expense Tracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: PrimaryColor,
                child: Center(
                  child: Text(
                    'Chart!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                elevation: 5,
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
