import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PlayWithStatemanagement extends StatefulWidget {
  PlayWithStatemanagement({super.key});

  @override
  State<PlayWithStatemanagement> createState() =>
      _PlayWithStatemanagementState();
}

class _PlayWithStatemanagementState extends State<PlayWithStatemanagement> {
  List data = [
    {
      'category': 'الطلبات الجارية',
      'body': ' nkleklcelmewkldmeklmklewmdewklmdklewmklemkmdeklwmklwmkl'
    },
    {
      'category': 'الطلبات المكتملة',
      'body': ' ٧٢٨٦٢٨٣٦٧٢٦٧٢٦٩٢٧٦٢٨٢٧٣٢٨٠٧٢٨٠٧٢٣٧٢٩٣٧٢٩٢٩٧-٣٢٣٩٣٢'
    },
    // 'الملغية',
    // 'المستردة'
  ];

  int _selectedItemIndex = 0;
  late Size size;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(22),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedItemIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(2),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: _selectedItemIndex == index
                          ? Colors.red
                          : const Color.fromARGB(255, 198, 185, 184),
                    ),
                    child: Center(
                        child: Text(
                      data[index]['category'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                  ),
                );
              },
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(data[_selectedItemIndex]['body']),
            ),
          ),
          // Text('-------------------------------------------------'),

          Divider(
            color: Colors.black,
            height: 3,
            thickness: 3,
          ),

          SizedBox(
            height: size.height / 3,
          ),

          PassWordTextField(),

          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "You have logged in successfully",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 2,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: Text("Log in")),
        ],
      ),
    ));
  }
}

class PassWordTextField extends StatefulWidget {
  const PassWordTextField({
    super.key,
  });

  @override
  State<PassWordTextField> createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;

                  // if (isVisible == true) {
                  //   isVisible = false;
                  // } else {
                  //   isVisible = true;
                  // }
                });
              },
              child: Icon(isVisible ? Icons.visibility : Icons.visibility_off)),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(22))),
    );
  }
}
