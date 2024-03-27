// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AnotherRoute extends StatelessWidget {
  const AnotherRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Color(0xff4DAF50),
        title: Image.asset(
          'assets/p_logo.png',
          width: 30,
          height: 30,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
            weight: 10,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 30, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  )),
                  SizedBox(width: 10),
                  Icon(Icons.train_outlined),
                  SizedBox(width: 5),
                  Text(
                    'MRT',
                    style: TextStyle(
                        fontFamily: 'Monaserrat', fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 25,
                    width: 20,
                    child: Icon(
                      Icons.train_outlined,
                      color: Colors.white,
                      size: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 218, 55, 55),
                    ),
                  ),
                  SizedBox(width: 20),
                  RichText(
                      text: TextSpan(text: 'Jaintain Station', children: [
                    TextSpan(text: '  ('),
                    TextSpan(text: 'P:'),
                    TextSpan(
                        text: '3',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: ')'),
                  ])),
                  SizedBox(width: 30),
                  Text(
                    'Zhongpo',
                    style: TextStyle(
                        fontFamily: 'Monaserrat', fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 60, top: 5, bottom: 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '.\n.\n.',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                                height: 0.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Text(
                    '13 Stations on the way',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(25)),
                  Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '13',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Xinyl anhe',
                    style: TextStyle(
                      fontFamily: 'Monaserrat',
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 200, 200, 195),
                indent: 35,
                endIndent: 8,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 15, bottom: 15, left: 25, right: 25)),
                  Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '14',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Taipei101 World Trade Center',
                    style: TextStyle(
                      fontFamily: 'Monaserrat',
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 200, 200, 195),
                indent: 35,
                endIndent: 8,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 15, bottom: 15, left: 25, right: 25)),
                  Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '15',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Xiangshan',
                    style: TextStyle(
                        fontFamily: 'Monaserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.green),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      )),
                      SizedBox(width: 10),
                      Icon(Icons.directions_bus_filled_outlined),
                      SizedBox(width: 5),
                      Text('R5',
                          style: TextStyle(
                              fontFamily: 'Monaserrat',
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yangmingshan',
                          style: TextStyle(
                              fontFamily: 'Monaserrat',
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.green,
                        size: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 60, top: 5, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '.\n.\n.',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                    height: 0.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Text(
                        '5 Stops on the way',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, left: 25, right: 25)),
                      Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'John Cruch',
                        style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 200, 200, 195),
                    indent: 35,
                    endIndent: 8,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, left: 25, right: 25)),
                      Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Teachers Center',
                        style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontSize: 13,
                        ),
                      ),
                      Divider(color: Colors.grey),
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 200, 200, 195),
                    indent: 35,
                    endIndent: 8,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, left: 25, right: 25)),
                      Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Yangmingshan',
                        style: TextStyle(
                            fontFamily: 'Monaserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.green),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.green,
                        size: 30,
                      ),
                      Divider(color: Colors.grey),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 25,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Text('OR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Monaserrat', fontWeight: FontWeight.bold,fontSize: 15)),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
                  SizedBox(width: 10),
                  Icon(Icons.directions_bus_outlined),
                  SizedBox(width: 5),
                  Text('526',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 20),
                  Text('Dinghu',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_up, color: Colors.green, size: 30),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 200, 200, 195),
                indent: 5,
                endIndent: 8,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
                  SizedBox(width: 10),
                  Icon(Icons.directions_bus_outlined),
                  SizedBox(width: 5),
                  Text('260',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 20),
                  Text('Taipei Station',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_up, color: Colors.green, size: 30),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 200, 200, 195),
                indent: 5,
                endIndent: 8,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
                  SizedBox(width: 10),
                  Icon(Icons.directions_bus_outlined),
                  SizedBox(width: 5),
                  Text('515',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 20),
                  Text('Jingshan Campsite',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_up, color: Colors.green, size: 30),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 200, 200, 195),
                indent: 5,
                endIndent: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
                  SizedBox(width: 10),
                  Icon(Icons.directions_bus_outlined),
                  SizedBox(width: 5),
                  Text('520 m',
                      style: TextStyle(
                          fontFamily: 'Monaserrat',
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(
                    '5 min',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 200, 200, 195),
                indent: 5,
                endIndent: 10,
              ),
              SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      'FINISH TRIP',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
