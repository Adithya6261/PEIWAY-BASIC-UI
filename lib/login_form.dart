// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Sign_up.dart';
import 'package:flutter_application_2/home_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormState>();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 70)),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/pp.png', height: 50, width: 50),
                        Text(
                          'PEIWAY',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff3C3C3B),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff3C3C3B),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'please enter a valid username';
                          //   }
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 5,bottom: 5),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.person_outline_outlined,
                                color: Color(0xff4DAF50),
                                size: 22,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(color: Color.fromARGB(255, 200, 200, 195), width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(color: Color.fromARGB(255, 200, 200, 195), width: 1.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                             focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  50), // Maintain the same border radius
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff3C3C3B),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          obscureText: true,
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter a valid password';
                          //   }
                          //   else if(value.length<8){
                          //     return 'password must be atleast 8 characters';
                          //    }
                                                
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 5,bottom: 5),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Icon(
                                Icons.lock_outlined,
                                color: Color(0xff4DAF50),
                                size: 22,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(color: Color.fromARGB(255, 200, 200, 195), width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(color: Color.fromARGB(255, 200, 200, 195), width: 1.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  50), // Maintain the same border radius
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.0),
                            ),
                        
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              minimumSize: Size(160, 65),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                // Here you can perform login authentication
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Your Password?',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff3C3C3B),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 170,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account?'),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sign()));
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
