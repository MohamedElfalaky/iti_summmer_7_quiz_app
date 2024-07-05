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


*/

class Person {
  String name;
  int? phoneNumber;
  num age;
  bool isMale;
  double? salary;
  bool? isMarried;
  List<String>? children;
  dynamic nickName;

  Person(
      {required this.name,
      this.phoneNumber,
      required this.age,
      required this.isMale,
      this.salary,
      required this.isMarried,
      this.children,
      this.nickName});

  printPersonData() {
    String? hisOrHer;

    if (isMale == true) {
      hisOrHer = "his";
    } else {
      hisOrHer = "her";
    }

    print(
        "this person name is $name and ${isMale ? "his" : "her"} age is $age");
    print("this person name is $name and $hisOrHer age is $age");
  }
}
