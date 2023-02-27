import 'dart:ffi';

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
  /*print('name : ${myCar.name} -- yOfProd : ${myCar.yOfProd}');
  myCar.sayHello(personName: 'hue do');
  myCar.subEvent = (){
    print('this is main class');
  };
  myCar.doSomeThing();
  */

  List<Car> cars = <Car>[];
  cars.add(Car(name: 'honda', yOfProd: 1991));
  cars.add(Car(name: 'yamaha', yOfProd: 2011));
  cars.add(Car(name: 'nissan', yOfProd: 2015));

  //sort ascending
  //cars.sort((car1,car2) => car1.yOfProd - car2.yOfProd);
  //cars.sort((car1,car2) => car2.name.compareTo(car1.name));
  // cars[0].yOfProd = 2015;
  // var filterCars = cars.where((car) => car.yOfProd == 2015 && car.name.toUpperCase().contains("DA")).toList();
  //
  // List<String> carsName = cars.map((e) => e.name).toList();
  // print(filterCars);
  //for each
  // cars.forEach((element) {
  //   print(element);
  // });

  final List <int> someNumbers = [1,2,3,4];
  List <int> someNumbers2 = someNumbers;
  someNumbers2.add(5);
  print(someNumbers);
  print(someNumbers2);

  Map<String,Object> person = Map();
  person['name'] = 'tuyen';
  person['age'] = 20;
  person['name'] = 'hue';
  print(person['name']);

  runApp(
    Center(
      child: Text(
          person['name'].toString(),
          style: const TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr),
    ),
  );
}
