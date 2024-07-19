import 'package:flutter/material.dart';

class StatemanagementUsingSetState extends StatefulWidget {
  StatemanagementUsingSetState({super.key});

  @override
  State<StatemanagementUsingSetState> createState() =>
      _StatemanagementUsingSetStateState();
}

class _StatemanagementUsingSetStateState
    extends State<StatemanagementUsingSetState> {
  int shapeSize = 0;

  // 0 --> small square
  // 1 --> medium square
  // 2 --> large square
  // 3 --> super large square
  double squareHeight = 100;
  double squareWidth = 100;

  @override
  Widget build(BuildContext context) {
    // if (shapeSize == 0) {
    //   squareHeight = 100;
    //   squareWidth = 100;
    // } else if (shapeSize == 1) {
    //   squareHeight = 200;
    //   squareWidth = 200;
    // } else if (shapeSize == 2) {
    //   squareHeight = 300;
    //   squareWidth = 300;
    // } else {
    //   squareHeight = 400;
    //   squareWidth = 400;
    // }

    switch (shapeSize) {
      case 0:
        squareHeight = 100;
        squareWidth = 100;
        break;
      case 1:
        squareHeight = 200;
        squareWidth = 200;
        break;
      case 2:
        squareHeight = 300;
        squareWidth = 300;
        break;
      default:
        squareHeight = 400;
        squareWidth = 400;
        break;
    }

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              height: squareHeight,
              width: squareWidth,
              color: Colors.red,
            ),
            Spacer(),
            // Spacer(),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shapeSize = 0;
                    });
                  },
                  child: Text("small square")),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shapeSize = 1;
                    });
                  },
                  child: Text("Medium square")),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shapeSize = 2;
                    });
                  },
                  child: Text("Large square")),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shapeSize = 3;
                    });
                  },
                  child: Text("Super large square")),
            ),
          ],
        ),
      ),
    );
  }
}

///////  State management //////





