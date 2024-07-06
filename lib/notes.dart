/* 
--> Data type
1- String : نص;
2- Integer : رقم صحيح
3- double: رقم عشري
4- num: any type of number
5- bool: true or false
6- List: [1,2,3,4,5]
7- dynamic
8- Object
9- null 

--> Function

--> Class

-- constructor;

---> condition

----->  compile time vs run time 

-----> var - final - const - static - late. 
(initialization - decleration)

1- var : can be  reinitializated with any type (var no assigned to specific type) in compile time and runtime infinitly.
when i need a variable (متغير  بيتغير بجد);

2- final : can be decrirated, can be reinitialized in compiletime or run time one time only after decliration.


3- const : must be  initialized in compile time;



4- late: variable that can be declirated now in compiletime and must be initialized later in runtime.
when i dont need this var to be null or to initialized now.

5- static: shared variable amonge instances.

used inside class only,,, used with other modifiers in run time, must used with const inside class,,,




*/

// class Person {
//   // instance variable
//   final String name;
//   final int? phoneNumber;
//   num age;
//   final bool isMale;
//   final double? salary;
//   final bool? isMarried;
//   final List<String>? children;
//   final dynamic nickName;

//   Person(
//       {required this.name,
//       this.phoneNumber,
//       required this.age,
//       required this.isMale,
//       this.salary,
//       required this.isMarried,
//       this.children,
//       this.nickName}) {
//     numberOfPersonsInstances = numberOfPersonsInstances + 1;
//     print(
//         "number of person instances in this session is: $numberOfPersonsInstances");
//   }

//   static int numberOfPersonsInstances = 0; // shared variable among instances

//   late String lateVar;

//   final String y = "";
//   static const String z = "";

//   printPersonData() {
//     lateVar = "dekmklmw";
//     print(lateVar);

//     const String? nameeeee = "www";
//     var q;
//     q = 10;
//     q = "";
//     q = true;

//     final int? grade;

//     grade = 10;

//     print(phoneNumber);

//     String? hisOrHer;

//     if (isMale == true) {
//       hisOrHer = "his";
//     } else {
//       hisOrHer = "her";
//     }

//     print(
//         "this person name is $name and ${isMale ? "his" : "her"} age is $age");
//     print("this person name is $name and $hisOrHer age is $age");
//   }

//   calculatePersonRealAge({required int yearsDifferance, required String x}) {
//     age = age + yearsDifferance;
//     print(age);
//   }
// }

import 'package:flutter/material.dart';

////////////////////////

/* 
/////////////////////////////
/////////// OOP /////////////
/////////////////////////////

everything is an Object.


1- Inheritance
to inherits the properties of the parent class(parameters -methods)

2- Abstraction
- parent classess that are used to be inherited (to make subclassess from them), not logic to make instance of it.
- class that can not be instantiated.

3- Polymorphysim
a- override ---> to override an inherited value from the super class.
b- overload self study


4- encapsulation
each class must be a closed unit to avoid unintended changes to avoid erros.

*/

abstract class Human {
  String? name;
  num? age;
  String? nationality;
  String? gender;
  Human({this.name, this.age, this.gender, this.nationality});
  int id = 234;

  eat(); // abstract method
}

abstract class Machine {
  String? brandName;
  int? versionNumber;
  Machine(this.brandName, this.versionNumber);
}

class Student extends Human {
  Student({
    super.name,
    super.age,
    super.gender,
    super.nationality,
  }) {
    id = 12345;
    // print(super.id);
  }

  int? _studentId = 1827272;

  get getStudentId {
    print(_studentId);
  }

  set setStudentId(int newStudentID) {
    _studentId = newStudentID;
  }

  getStudentData() {
    // name = "Mohamed";
    print(
      "this studen id is: $_studentId  and his name is $name and his age is $age, and he is $nationality and he/she is $gender",
    );
  }

  @override //decorator
  eat() {
    print("eat apple");
  }
}

class Teacher extends Human {
  Teacher({this.teacherID, super.name});
  int? teacherID;

  @override
  eat() {}
}

class SmartBoard extends Machine {
  SmartBoard(super.brandName, super.versionNumber);
}

class Projector extends Machine {
  Projector(super.brandName, super.versionNumber);
}

// interface class Serilizable {
//   toJson() {}
// }

// class User implements Serilizable {
//   @override
//   toJson() {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
// }

// class BankAccount {
//   num balance;
//   final String owner;

//   BankAccount(this.balance, this.owner);

//   // deposit() {}

//   withdraw(num overDrawnValue) {
//     if (overDrawnValue <= balance) {
//       balance = balance - overDrawnValue;
//       print(balance);
//     } else {
//       throw HandleOverDrawn;
//     }
//   }
// }

// class HandleOverDrawn implements Exception {}

///////////////////////////////////////
//////////////  Flutter ///////////////
///////////////////////////////////////

/* 
in flutter every UI component is a widget.
the ui component (widget) must extends from stateless or statefull widget.
to inherit "build" function.



*/

class TextAndButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello"),
        ElevatedButton(onPressed: () {}, child: Text("Press here"))
      ],
    );
  }
}
