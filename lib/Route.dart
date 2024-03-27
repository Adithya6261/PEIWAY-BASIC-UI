// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Types_Of_Transport.dart';

class Directions extends StatefulWidget {
  const Directions({Key? key}) : super(key: key);

  @override
  State<Directions> createState() => _DirectionsState();
}

class _DirectionsState extends State<Directions> {
  bool useTrain = false;
  bool useBus = false;
  bool useTaxi = false;
  bool useHighSpeedRail = false;
  bool useDeparture = true; 
  bool useArrival = false; 

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
        leading: Positioned(
          top: 25,
          left: 50,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 25, right: 25),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 200, 200, 195),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10, top: 5),
                        hintMaxLines: 3,
                        hintText: ' From:',
                        suffixIcon: Icon(Icons.play_circle_outline,
                            color: Colors.green),
                        border: InputBorder.none,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      indent: 0,
                      endIndent: 0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: ' To:',
                        suffixIcon: Icon(Icons.edit_outlined,
                            color: Colors.green),
                        border: InputBorder.none,
                        hintMaxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff4DAF50),
                      weight: 0.2,
                    ),
                    labelText: 'Xiangshan[mt.Elephant],Xinyl Dist,Taipei City',
                    labelStyle: TextStyle(
                        fontFamily: 'Monaserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 9),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 200, 200, 195),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Set useDeparture to true and useArrival to false
                          useDeparture = true;
                          useArrival = false;
                        });
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 35,
                          decoration: BoxDecoration(
                            color: useDeparture ? Colors.green : Colors.white, // Change color based on useDeparture
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Color.fromARGB(255, 200, 200, 195),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 30,
                                top: 8,
                                bottom: 12,
                                child: Text(
                                  'Departure',
                                  style: TextStyle(
                                    color: useDeparture ? Colors.white : Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Set useArrival to true and useDeparture to false
                          useArrival = true;
                          useDeparture = false;
                        });
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 35,
                          decoration: BoxDecoration(
                            color: useArrival ? Colors.green : Colors.white, // Change color based on useArrival
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            border: Border.all(
                            color: Color.fromARGB(255, 200, 200, 195),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 35,
                                top: 8,
                                bottom: 12,
                                child: Text(
                                  'Arrival',
                                  style: TextStyle(
                                    color: useArrival ? Colors.white : Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,                               
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 85,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('9:41',style: TextStyle(fontFamily: 'Montserrat',fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Today',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 0.5),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color.fromARGB(255, 200, 200, 195),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              buildToggleRow('Use train:', useTrain, (value) {
                setState(() {
                  useTrain = value;
                });
              }),
              Divider(color: Color.fromARGB(255, 200, 200, 195)),
              buildToggleRow('Use bus:', useBus, (value) {
                setState(() {
                  useBus = value;
                });
              }),
              Divider(color: Color.fromARGB(255, 200, 200, 195)),
              buildToggleRow('Use taxi:', useTaxi, (value) {
                setState(() {
                  useTaxi = value;
                });
              }),
              Divider(color: Color.fromARGB(255, 200, 200, 195)),
              buildToggleRow('Use high speed rail:', useHighSpeedRail, (value) {
                setState(() {
                  useHighSpeedRail = value;
                });
              }),
              SizedBox(height: 180),
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
                        builder: ((context) => Transport()),
                      ),
                    );
                  },
                  child: Text('FIND',style: TextStyle(fontFamily: 'Montserrat',letterSpacing: 1,fontSize:15,fontWeight: FontWeight.w600 ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildToggleRow(
      String label,
       bool value,
        ValueChanged<bool> onChanged
        )
         {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Transform.scale(
          scale: 0.85,
          child: CupertinoSwitch(

            activeColor: Color(0xff4DAF50),
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
