import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp02> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    print('Run build');
    final contextEdittingController = TextEditingController();
    String context = "";
    final amountEdittingController = TextEditingController();
    int amount = 0;
    //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>()'';
    return MaterialApp(
      title: 'this is statefullWidget',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: contextEdittingController,
                onChanged: (text){
                  setState(() {
                    context = text;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Context',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),

              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount(money'),
                controller: amountEdittingController,
                onChanged: (text){
                  setState(() {
                    amount = int.tryParse(text) ?? 0;
                  });
                },
              ),
              TextButton(
                  child: Text('Insert Transaction'),
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: () {
                     print('Context : $context , amount : $amount');
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
