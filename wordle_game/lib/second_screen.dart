import 'package:flutter/material.dart';
import 'package:wordle_game/first_screen.dart';
import 'screen_arguments.dart';

class SecondScreen extends StatelessWidget
{
  final String title;
  final String mesage;

  SecondScreen({required this.title,required this.mesage});

  static const String routeName = '/second';
  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)?.settings?.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('back'),
          onPressed: () {
            //Navigator.of(context).pop();
            Navigator.pushNamed(context, FirstScreen.routeName);
          },
        ),
      ),
    );
  }
}