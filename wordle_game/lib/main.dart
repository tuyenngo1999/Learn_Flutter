import 'package:flutter/material.dart';
import 'package:wordle_game/screen_arguments.dart';
import 'package:wordle_game/second_screen.dart';
import 'first_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   FirstScreen.routeName:(context) =>FirstScreen(),
      //   SecondScreen.routeName : (context) => SecondScreen(),
      // },
      onGenerateRoute: (setting){
        if(setting.name == SecondScreen.routeName)
          {
            final ScreenArguments args = setting.arguments as ScreenArguments;

            return MaterialPageRoute(
                builder: (context){
                  return SecondScreen(title: args.title, mesage: args.message);
                }
            );
          }
      },
      home: Scaffold(
        body: SafeArea(child: FirstScreen(),),
      ),
    );
  }
}