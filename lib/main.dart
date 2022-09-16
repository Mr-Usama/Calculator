import 'package:flutter/material.dart';

void main() {
  runApp(const GeeksForGeeks());
}

class GeeksForGeeks extends StatelessWidget {
  const GeeksForGeeks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String enteredText = '';
  String operator = '';
  double result = 0;
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22252D),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      enteredText,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: const Color(0xff292D36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText = enteredText.substring(
                                    0, enteredText.length - 1);
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              'AC',
                              style: TextStyle(
                                color: Color(0xff26F4CE),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (i == 1) {
                                operator = '-';
                                i++;
                                setState(() {
                                  enteredText += '-';
                                });
                              } else if (i == 2) {
                                operator = '+';
                                i--;
                                setState(() {
                                  enteredText += '+';
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '+/_',
                              style: TextStyle(
                                color: Color(0xff26F4CE),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '%';
                              setState(() {
                                enteredText += '%';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '%',
                              style: TextStyle(
                                color: Color(0xff26F4CE),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '/';
                              setState(() {
                                enteredText += '/';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '/',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '7';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '7',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '8';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '8',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '9';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '9',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '*';
                              setState(() {
                                enteredText += '*';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '*',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '4';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '4',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '5';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '5',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '6';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '6',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '-';
                              setState(() {
                                enteredText += '-';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '-',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '1';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '2';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '3';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '+';
                              setState(() {
                                enteredText += '+';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText = '';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Icon(Icons.refresh),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '0';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '0',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '.';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '.',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              List myList = enteredText.split(operator);
                              double number1 = double.parse(myList[0]);
                              double number2 = double.parse(myList[1]);
                              //print(number1);
                              //print(number2);
                              //print(operator);
                              switch (operator) {
                                case '+':
                                  {
                                    result = number1 + number2;
                                    break;
                                  }
                                case '-':
                                  {
                                    result = number1 - number2;
                                    break;
                                  }
                                case '*':
                                  {
                                    result = number1 * number2;
                                    break;
                                  }
                                case '/':
                                  {
                                    result = number1 / number2;
                                    break;
                                  }
                                case '%':
                                  {
                                    result = number1 % number2;
                                    break;
                                  }
                              }
                              setState(() {
                                enteredText = result.toString();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '=',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
