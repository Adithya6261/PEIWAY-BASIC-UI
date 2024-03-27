// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child:
                        Image.asset('assets/pp.png', height: 50, width: 50),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'PEIWAY',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff3C3C3B),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 30,
                      top: 20,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'First name:',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff3C3C3B),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 35,
                                  width: 150,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(255, 200, 200, 195),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Last name:',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff3C3C3B),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 35,
                                  width: 165,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                     enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(255, 200, 200, 195),
                                    
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Login:',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff3C3C3B),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 35,
                          width: 340,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 200, 200, 195),
                            
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'E-Mail address:',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff3C3C3B),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 35,
                          width: 340,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                color: Color.fromARGB(255, 200, 200, 195),
                                
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password:',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff3C3C3B),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 35,
                          width: 340,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 200, 200, 195),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                side: BorderSide(color: Colors.green),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                activeColor: Colors.green,
                                value: this.value,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.value = value ?? false;
                                  });
                                },
                              ),
                              RichText(
                                text: TextSpan(
                                  // Here is the explicit parent TextStyle
                                  style: new TextStyle(
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                  ),
                                  children: <TextSpan>[
                                    new TextSpan(text: 'I have read and agree to the'),
                                    new TextSpan(
                                        text: 'Terms of Use',
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold)),
                                            new TextSpan(text: ' and '),
                                            new TextSpan(text: 'Privacy  Policy',style: TextStyle(fontWeight: FontWeight.w600))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100),
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
                              Navigator.pop(context);
                            },
                            child: Text(
                              'CREATE',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
