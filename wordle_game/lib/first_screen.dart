import 'package:flutter/material.dart';
import 'package:wordle_game/second_screen.dart';
import 'screen_arguments.dart';

class FirstScreen extends StatelessWidget
{
  static const routeName = '/firstScreen';
  @override
  Widget build(BuildContext context) {
   // final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('first Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('next screen'),
          onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
            Navigator.pushNamed(context, SecondScreen.routeName,arguments: ScreenArguments('title', 'data truyen'));
            //Navigator.pushNamed(context, SecondScreen.routeName);
          },
        )
      ),
    );
  }
}