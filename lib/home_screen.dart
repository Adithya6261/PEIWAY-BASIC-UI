// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application_2/FAQ.dart';
import 'package:flutter_application_2/Route.dart';
import 'package:flutter_application_2/Search_Bar.dart';
import 'package:flutter_application_2/Types_Of_Transport.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff4DAF50),
        title: Image.asset(
          'assets/p_logo.png',
          width: 50,
          height: 50,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Searchbar(),
                ),
              );
            },
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30, top: 160)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/robo.jpg'),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        // Here is the explicit parent TextStyle
                        style: new TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'Alex Walker\n',
                              style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 1)),
                          new TextSpan(text: 'Your Profile'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Color.fromARGB(255, 200, 200, 195),
            ),
            SizedBox(height: 60),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Find Routes',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3C3C3B)),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Directions()),
                );
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  'Timetable of transport',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3B),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => Transport())),
                );
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  'Last searches',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3B),
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  'Estimated places',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3B),
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  'Report a problem',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3B),
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  'Support',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3B),
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3B),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => Questions())),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
