import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  // ResultPage({Key? key}) : super(key: key);
  int result = 0;
  String isMale = "";
  double weight = 0;
  double height = 0;
  int age = 0;
  bool gender = false;
  ResultPage(
      {Key? key,
      required this.gender,
      required this.age,
      required this.height,
      required this.weight,
      required this.result})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RESULT ',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                'PAGE ',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ],
          )),
      backgroundColor: Color(0xffb101322),
      body: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gender
                ? Image.asset(
                    'assests/images/male-removebg-preview.png',
                    width: 200,
                    height: 200,
                  )
                : Image.asset(
                    'assests/images/woman-removebg-preview.png',
                    width: 200,
                    height: 200,
                  ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Gender :',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${gender ? "Male" : "Female"}',
                            style: TextStyle(fontSize: 24, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Age :      ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(fontSize: 24, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Height :',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${height.round()}',
                            style: TextStyle(fontSize: 24, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Weight :',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(fontSize: 24, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Result :',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${result}',
                            style: TextStyle(fontSize: 24, color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
