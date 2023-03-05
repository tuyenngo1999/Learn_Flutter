import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'transaction.dart';
import 'TransactionList.dart';

//You can define your own Widget
class MyApp02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//This is a "very basic" statefulwidget
class _MyAppState extends State<MyApp02> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _contentController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime currentTime = DateTime.now();

  //define states
  Transaction _transaction = Transaction(content: '', amount: 0.0, createdDate: DateTime.now());
  final List<Transaction> _transactions = <Transaction>[];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    if (state == AppLifecycleState.paused) {
      print('BackGround mode');
    } else if (state == AppLifecycleState.resumed) {
      print('ForeGround Mode');
    }
  }

  void _insertTransaction() {
    _transactions.add(_transaction);
    _transaction = Transaction(content: '', amount: 0.0,createdDate: DateTime.now());
    _contentController.text = '';
    _amountController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "This is a StatefulWidget",
        home: Scaffold(
            appBar: AppBar(
              title: const Text('this is sample Flutter!'),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    print('You pressed phone');
                    setState(() {
                      this._insertTransaction();
                    });
                  },
                  icon: const Icon(Icons.phone),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              tooltip: 'AddTransaction',
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _insertTransaction();
                });
              },
            ),
            key: _scaffoldKey,
            body: SafeArea(
                minimum: const EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Content'),
                        controller: _contentController,
                        onChanged: (text) {
                          setState(() {
                            _transaction.content = text;
                          });
                        },
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount(money)'),
                        controller: _amountController,
                        onChanged: (text) {
                          setState(() {
                            _transaction.amount = double.tryParse(text) ??
                                0; //if error, value = 0
                          });
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _insertTransaction();
                          });
                          //_amountController.text = 'hello';
                        },
                        child: const Text('buy'),
                      ),
                      TransactionList(transactions: _transactions),
                    ],
                  ),
                ))));
  }
}
