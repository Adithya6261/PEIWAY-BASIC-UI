// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  List<String> Answers = [
    "How does it Work?",
    "Why do you need my location?",
    "Do I have search limit?",
    "Can i use many accounts?",
    "How are transport timetable checked?",
    "How to impose a delay in transport?",
    "Its free?",
    "Why should i use this application?",
    "Can i buy ticket using application?",
    "Can i add photos?",
    "How can i delete my account?",
  ];

  Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff4DAF50),
        title: Image.asset(
          'assets/p_logo.png',
          width: 30,
          height: 30,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,size: 20,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.search,color: Colors.white,),
        ],
      ),
      body:
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Text(
              'FAQ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) => Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: ExpansionTile(
                  title: Text(Answers[index]),
                  iconColor: Colors.green,
                  collapsedIconColor: Colors.green,
                ),
              )),
              separatorBuilder: (Context, index) => Divider(indent: 10,endIndent: 15,
                color: Color.fromARGB(255, 200, 200, 195),
              ),
              itemCount: Answers.length,
            ),
          ),
        ],
      ),
    );
  }
}
