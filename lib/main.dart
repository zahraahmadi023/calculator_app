import 'package:flutter/material.dart';

import 'CalcButton.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAD2FF),
      appBar: AppBar(
        title: const Text("Calculator", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF7886C7),
      ),
      body: Column(
        children: [

          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16),
              child: const Text(
                "----",
                style: TextStyle(fontSize: 48, color: Colors.black),
              ),
            ),
          ),
          const Divider(thickness: 2,color: Colors.black45,),

          const Expanded(
            flex: 3,
            child: Row(
              children: [

                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "C", fillColor: 0xFF7886C7,),
                            CalcButton(text: "%", fillColor:  0xFF7886C7,),
                            CalcButton(text: "-",fillColor: 0xFF7886C7,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "7", fillColor: 0xFF493D9E,),
                            CalcButton(text: "8", fillColor:  0xFF493D9E,),
                            CalcButton(text: "9",fillColor: 0xFF493D9E,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "4", fillColor: 0xFF493D9E,),
                            CalcButton(text: "5", fillColor:  0xFF493D9E,),
                            CalcButton(text: "6",fillColor: 0xFF493D9E,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "1", fillColor: 0xFF493D9E,),
                            CalcButton(text: "2", fillColor:  0xFF493D9E,),
                            CalcButton(text: "3",fillColor: 0xFF493D9E,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "AC", fillColor: 0xFF7886C7,textSize: 30,),
                            CalcButton(text: "0", fillColor:  0xFF493D9E,textSize: 30),
                            CalcButton(text: ".",fillColor: 0xFF493D9E,textSize: 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CalcButton(text: "*", fillColor: 0xFF7886C7,textSize: 30),
                      Expanded(flex: 2,child: CalcButton(text: "+", fillColor: 0xFF7886C7,textSize: 30)),
                      Expanded(flex: 2,child: CalcButton(text: "=", fillColor:  0xFF7886C7,textSize: 30)),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//////jjjjj
