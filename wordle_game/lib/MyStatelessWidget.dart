import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('MyStatelessWidget build');
    return const Text('I am a StatelessWidget');
  }
}