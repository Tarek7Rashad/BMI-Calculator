import 'dart:math';

import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool gender = true;
bool isClicked = false;
// Color color = const Color.fromARGB(255, 36, 2, 61).withOpacity(0.7);
String isMale = "Gender";
double height = 0;
double weight = 0;
int age = 0;

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffb101322),
      appBar: AppBar(
          backgroundColor: Colors.black,
          // centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI ',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                'CALCULATOR ',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              gender = true;
                              gender ? isMale = "Male" : isMale = "Female";

                              if (isClicked == false && isMale == "Male") {
                                isClicked = true;
                                // weight = 0;
                                // age = 0;
                                // height = 0;
                              } else if (isMale == "Male" &&
                                  isClicked == true) {
                                isClicked = false;
                                isMale = 'Gender';
                                weight = 0;
                                age = 0;
                                height = 0;
                              }
                              if (isClicked == true && isMale == "Male") {
                                isClicked = false;
                                isMale = "Gender";
                                if (isClicked == false && isMale == "Gender") {
                                  isMale = "Male";
                                  isClicked = true;
                                }
                              }

                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: 10)
                                ],
                                border:
                                    Border.all(width: 0.5, color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                color: isMale == "Male" && isClicked == true
                                    ? Colors.blue
                                    : Color.fromARGB(255, 36, 2, 61)
                                        .withOpacity(0.7),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 90,
                                  ),
                                  Text('Male',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              gender = false;
                              gender ? isMale = "Male" : isMale = "Female";

                              if (isClicked == true && isMale == "Female") {
                                isClicked = false;
                              } else if (isMale == "Female" &&
                                  isClicked == false) {
                                if (isClicked == true ||
                                    weight != 0 ||
                                    age != 0 ||
                                    height != 0) {
                                  weight = 0;
                                  age = 0;
                                  height = 0;
                                  isClicked = true;
                                  isMale = 'Gender';
                                }
                                if (isMale == "Male" &&
                                    weight == 0 &&
                                    age == 0 &&
                                    height == 0) {
                                  print(isClicked);
                                  isMale = 'Gender';
                                }
                              }
                              if (isClicked == false && isMale == "Gender") {
                                isClicked = true;
                                isMale = "Female";
                              }

                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: 10)
                                ],
                                border:
                                    Border.all(width: 0.3, color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                color: isMale != "Female"
                                    ? const Color.fromARGB(255, 36, 2, 61)
                                        .withOpacity(0.7)
                                    : Colors.blue,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    color: Colors.white,
                                    size: 90,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -10,
                          blurStyle: BlurStyle.inner,
                          blurRadius: 10)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$isMale',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                                fontSize: 34,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text('cm',
                              style: TextStyle(
                                  fontSize: 33,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal))
                        ],
                      ),
                      Slider(
                        value: height,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        max: 300,
                        // min: height,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 10)
                              ],
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 36, 2, 61)
                                  .withOpacity(0.7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Weight",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: null,
                                      onPressed: () {
                                        setState(() {
                                          if (weight == 0) {
                                            weight = 0;
                                          } else
                                            weight--;
                                        });
                                      },
                                      mini: true,
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      heroTag: null,
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      mini: true,
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 10)
                              ],
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 36, 2, 61)
                                  .withOpacity(0.7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Age",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: null,
                                      onPressed: () {
                                        setState(() {
                                          if (age == 0) {
                                            age = 0;
                                          } else
                                            age--;
                                        });
                                      },
                                      mini: true,
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      heroTag: null,
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      mini: true,
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: MaterialButton(
                height: 50,
                minWidth: double.maxFinite,
                onPressed: () {
                  double result = (weight / pow(height / 100, 2));
                  if (age == 0 || height == 0 || weight == 0) {
                  } else if (result != 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            gender: gender,
                            age: age,
                            height: height,
                            weight: weight,
                            result: result.round(),
                          ),
                        ));
                  }
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
