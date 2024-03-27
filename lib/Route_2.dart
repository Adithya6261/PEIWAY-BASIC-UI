// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Route_3.dart';

class RouteTrain extends StatelessWidget {
  RouteTrain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Color(0xff4DAF50),
        title: Positioned(
          left: 50,
          right: 50,
          child: Image.asset(
            'assets/p_logo.png',
            width: 30,
            height: 30,
          ),
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
          padding: EdgeInsets.only(bottom: 40, left: 30, right: 30, top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 200, 200, 195),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: ' From:',
                          suffixIcon: Icon(Icons.play_circle_outline,
                              color: Colors.green),
                          border: InputBorder.none),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 200, 200, 195),
                      indent: 0,
                      endIndent: 0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: ' To:',
                        suffixIcon:
                            Icon(Icons.edit_outlined, color: Colors.green),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: Colors.green,
                    ),
                    labelText: 'Xiangshan[mt.Elephant],Xinyl Dist,Taipei City',
                    labelStyle: TextStyle(
                        fontFamily: 'Monaserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 195),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 100,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color.fromARGB(255, 200, 200, 195),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Depart for :')),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('07',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 4),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 12, top: 38),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'minutes',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Color.fromARGB(255, 200, 200, 195),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Time on the road :'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('19',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 4),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 12, top: 38),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'minutes',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.train_outlined, size: 30),
                      SizedBox(width: 13),
                      Text(
                        'MRT',
                        style: TextStyle(
                            fontFamily: 'Monaserrat',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 20,
                        child: Icon(Icons.train_outlined,color: Colors.white,size: 12,),
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
                      SizedBox(width: 20),
                      Text(
                        'Zhongpo',
                        style: TextStyle(
                            fontFamily: 'Monaserrat',
                            fontWeight: FontWeight.bold),
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
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25, right: 25, top: 15, bottom: 15)),
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
                              left: 25, right: 25, top: 15, bottom: 15)),
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
                      SizedBox(width: 10),
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
                              left: 25, right: 25, top: 15, bottom: 15)),
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
                      SizedBox(width: 10),
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
                      Divider(
                        color: Color.fromARGB(255, 200, 200, 195),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.directions_bus_filled_outlined, size: 30),
                          SizedBox(width: 17),
                          Text(
                            'R5',
                            style: TextStyle(
                                fontFamily: 'Monaserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Yangmingshan',
                            style: TextStyle(
                                fontFamily: 'Monaserrat',
                                fontWeight: FontWeight.bold),
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
                                  left: 25, right: 25, top: 15, bottom: 15)),
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
                            'Zion Chuntch',
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
                                  left: 25, right: 25, top: 15, bottom: 15)),
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
                            'Teachers center',
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
                                  left: 25, right: 25, top: 15, bottom: 15)),
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
                                    fontSize: 11,
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
                ],
              ),
              SizedBox(height: 30),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => AnotherRoute())));
                    },
                    child: Text(
                      'FIND',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
