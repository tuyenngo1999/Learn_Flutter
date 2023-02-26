import 'package:flutter/material.dart';
import 'car.dart';

String s1 = 'hello!';
String s2 = 'how are you today ????';
var s3 = '$s1 + $s2';
int x = 10;
int y = x * 2;

String status = "hom nay là \"hello\" đẹp trời";
List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 2, 1];
List<String> names = ['tuyen', 'cuong'];
List<String> stringNumbers = numbers.map((e) => 'value = $e').toList();

void main() {
  // for (var value in stringNumbers) {
  //   print(value);
  // }

  var myCar = Car(name: 'toyota', yOfProd: 19901);
  print('name : ${myCar.name} -- yOfProd : ${myCar.yOfProd}');
  myCar.sayHello(personName: 'hue do');
  myCar.subEvent = (){
    print('this is main class');
  };

  myCar.doSomeThing();

  runApp(
    Center(
      child: Text(
          myCar.toString(),
          style: const TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr)
    ),
  );
}
