// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:math';

import 'package:bmi_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  // varible to toggle betweent the male and female
  bool isMale = true;
  // the value of  the slider
  double height = 120.0;

  int wieght = 40;
  int age = 20;

  double result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mode_night_rounded,
          ),
        ),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.grey[300]),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  // the male items
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(39, 42, 77, 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80.0,
                              width: 80.0,
                              child: Image.asset(
                                'assets/images/2.png',
                                color: isMale ? Colors.white : Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: isMale ? Colors.white : Colors.grey[600],
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // the female items
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(39, 42, 77, 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80.0,
                              width: 80.0,
                              child: Image.asset(
                                'assets/images/1.png',
                                color: isMale ? Colors.grey[600] : Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: isMale ? Colors.grey[600] : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xFF1D1E33),
                  //color: Color.fromRGBO(20, 24, 59, 0.7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(width: 6.0),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.grey[350],
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 22.0,
                        max: 220,
                        inactiveColor: Colors.grey,
                        activeColor: const Color(0xFFEB1555),
                        autofocus: true,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xFF1D1E33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.grey[350],
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "${age}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // the tow bottom
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[400],
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 50.0),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[400],
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xFF1D1E33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WIEGHT',
                            style: TextStyle(
                              color: Colors.grey[350],
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "${wieght}",
                            style: const TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    wieght--;
                                  });
                                },
                                child: Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[400],
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 50.0),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    wieght++;
                                  });
                                },
                                child: Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[400],
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 60.0,
            width: double.infinity,
            color: const Color(0xFFEB1555),
            child: MaterialButton(
              onPressed: () {
                result = wieght / pow(height / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      resultBmi: result,
                      height: height,
                      wieght: wieght,
                      age: age,
                      isMale: isMale,
                    ),
                  ),
                );
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
