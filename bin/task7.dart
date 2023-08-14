import 'dart:io';

import 'package:test/test.dart';

void main() {
  //Task 1
  //--------------------------------------------------
  sentanceDraw('TASK1');
  print("Area : ${rectangularArea(5, 6)}");

  //Task 2
  //--------------------------------------------------
  List n = [6, 5, 52, 4, 9, 78, 60, 1, 3, 9, 153];
  sentanceDraw('TASK2');
  print(sortList(n));
  // print(sortList(n).firstElement);
  // print(sortList(n).lastElement);

  //Task 3
  //--------------------------------------------------
  sentanceDraw('Task3');
  car('BMW', 'X6', 8000000 , );

  //Task 4
  //--------------------------------------------------
  sentanceDraw('Task4');
  Student student1 = Student(
    name: 'Kerolos',
    id: '20201700614',
    level: 4,
    marks: 10,
    email: 'kerolos@gmail.com',
    phone: '01227447196',
  );
  print('Marks : ${student1.marks}');
  print("Marks after Bonus : ${student1.bonus(20)}");
  print("Marks after Minus : ${student1.minus(10)}");
}

double rectangularArea(double width, double height) {
  return height * width;
}

({int firstElement, int lastElement}) sortList(List n) {
  n.sort();
  return (firstElement: n.first, lastElement: n.last);
}

void car(
  String name,
  String model,
  int price, [
  String? color,
  int? speed,
]) {
  print('Name : $name  , Model : $model  , Price : $price');
  color != null ? print('The color is $color') : 0;
  speed != null ? print('The Speed is $speed') : 0;
}

class Student {
  String name;
  String id;
  int level;
  double marks;
  String? email;
  String? phone;
  Student({
    required this.name,
    required this.id,
    required this.level,
    required this.marks,
    this.email,
    this.phone,
  });

  double bonus(double increase) {
    marks += increase;
    return marks;
  }

  double minus(double decrease) {
    marks -= decrease;
    return marks;
  }
}

void sentanceDraw(String s) {
  print('');
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('\n| $s |');
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('');
}
