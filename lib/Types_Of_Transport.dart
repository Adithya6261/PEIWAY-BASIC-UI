// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Route_2.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Transport extends StatefulWidget {
  const Transport({Key? key}) : super(key: key);

  @override
  State<Transport> createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  Color busIconBackgroundColor = Colors.white;
  Color trainIconBackgroundColor = Colors.white;
  Color carIconBackgroundColor = Colors.white;
  Color iconColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40,
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
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 10, top: 30,bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Choose type of transport',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          busIconBackgroundColor = Colors.green;
                          trainIconBackgroundColor = Colors.white;
                          carIconBackgroundColor =  Colors.white;
                          iconColor = Colors.white;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: busIconBackgroundColor,
                        ),
                        child: Icon(Icons.directions_bus_outlined, color: iconColor,size: 50,),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          busIconBackgroundColor = Colors.white;
                          trainIconBackgroundColor = Colors.green;
                          carIconBackgroundColor = Colors.white;
                          iconColor = Colors.white;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: trainIconBackgroundColor,
                        ),
                        child: Icon(Icons.train_outlined, color: iconColor,size: 50),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          busIconBackgroundColor = Colors.white;
                          trainIconBackgroundColor = Colors.white;
                          carIconBackgroundColor = Colors.green;
                          iconColor = Colors.white;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: carIconBackgroundColor,
                        ),
                        child: Icon(Icons.directions_car_filled_outlined, color: iconColor,size: 50),
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'Number:',hintStyle: TextStyle(fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color.fromARGB(255, 200, 200, 195),),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 200, 200, 195),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '9:02',
                    style: TextStyle(fontFamily: 'Monaserrat', fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                //  Text('AM', style: TextStyle(fontFamily: 'Monaserrat', fontSize: 10)),
                  SizedBox(width: 10),
                  Text('-', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey)),
                  SizedBox(width: 10),
                  Text('15 JULY', style: TextStyle(fontFamily: 'Monaserrat', fontSize: 40, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              ToggleSwitch(
                labels: ['Departure', 'Arrival'],
                minHeight: 40,
                minWidth: 120,
                cornerRadius: 20,
                activeBgColor: [Color(0xff4DAF50)],
                inactiveBgColor: Colors.white,
                borderColor: [Colors.black],
                borderWidth: 0.5,
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10, right: 10,top: 10)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Beitou Stop', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:02'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Zhiyuan New Village', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:05'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Doaxiang Market', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:07'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fuxinggang', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:09'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Wenhua Elementary School', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:12'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shixin Vocational High School', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:15'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('MRT Beitou Sta.', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:18'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Daye Zhongyang Entrance', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:20'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Beitou Elementary Shcool', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:21'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('First Commerical Bank', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:22'),
                    ],
                  ),
                  Divider(color: Color.fromARGB(255, 200, 200, 195),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Beitou Park', style: TextStyle(fontFamily: 'Monaserrat')),
                      Text('09:25'),
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
                        minimumSize: Size(160, 50),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RouteTrain()),
                        );
                      },
                      child: Text('DONE',style: TextStyle(fontSize: 17,fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


