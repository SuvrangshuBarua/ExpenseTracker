
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
const PrimaryColor = const Color(0xff172b69);

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
      backgroundColor: Color(0xffe8a93f),
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Expense Tracker'),
      ),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Color(0xfff1ebe0),
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
                        print(titleController.text);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
