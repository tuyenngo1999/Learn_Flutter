import 'package:flutter/material.dart';

class MyApp02 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp02> with WidgetsBindingObserver{
  String _email = "";
  final emailEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print('Run initstate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailEditingController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    print('Run dispose');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print('background mode');
    } else if (state == AppLifecycleState.resumed) {
      print('foreground mode');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Run build');
    return MaterialApp(
      title:'this is statefullWidget',
      home:Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: TextField(
                  controller: emailEditingController,
                  onChanged: (text){
                    setState(() {
                      _email = text;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      )
                    )
                  ),
                ),
              ),
              Text(
                _email,
                style: const TextStyle(fontSize: 30,color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      )
      
    );
  }
}