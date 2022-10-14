import 'package:flutter/material.dart';

void main() {
  runApp(LikeMeeApp());
}

class LikeMeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('LIKE',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  Text('MEE',
                      style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      )),
                ],
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: const ActionButton()));
  }
}

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  List changeWord = [
    'YOU ARE \n WELCOMED',
    'I LOVE YOU',
    'MEET ME UP \n TOMORROW',
    'BEAUTIFUL BABY'
  ];
  String changeImage = 'images/boy.jpg';
  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 600,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(image: AssetImage(changeImage), height: 400, width: 400),
          Text(changeWord[0],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              )),
          Container(
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 40),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: const Text('Get Started'),
                onPressed: () {
                  setState(() {
                    changeWord = changeWord[1];
                    changeImage = 'images/likemee.jpg';
                  });
                },
              )),
          Container(
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: const Size(280, 40),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Text('login with email',
                    style: TextStyle(color: Colors.black)),
                onPressed: () {
                  setState(() {
                    changeWord = changeWord[2];
                    changeImage = 'images/boy.jpg';
                  });
                },
              ))
        ]));
  }
}
