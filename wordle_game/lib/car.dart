// ignore_for_file: prefer_initializing_formals

class Car {
  String name = "";
  int yOfProd = 0;

  //Constructor đầy đủ
  // Car(String name,int yOfProd)
  // {
  //   this.name = name;
  //   this.yOfProd = yOfProd;
  // }

  //Constructor rút gọn
  //Car(this.name, this.yOfProd);

  //constructor argument;
  Car({required this.name, required this.yOfProd});

  @override
  String toString() {
    return '$name - $yOfProd';
  }

  //method
  void doSomeThing() {
    print('im doing something .... ');
    this.subEvent();
  }

  void sayHello({required String personName}) {
    print('Hello $personName');
  }

  Function subEvent = (){};
}
