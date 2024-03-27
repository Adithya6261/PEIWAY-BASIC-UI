// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Elephant_Mountain.dart';
import 'package:flutter_application_2/Route.dart';
import 'package:flutter_application_2/Taipei_City.dart';

class Mountain extends StatelessWidget {
  const Mountain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mountain.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    right: 20,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 330,
                    right: 30,
                    child: Text('25.4k',style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yangmingshan\nNational Park',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff4DAF50),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'No.1-20, Jhuzhi Lake Road, Beltou District',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Daiton National Park, Taiwan\'s first national park, was one of the three national parks designed by Governor General of Taiwan, Seizo Kobayashi, during Japanese rule in 1937. In 1950, President Chiang Kai-shek, in order to commemorate Ming dynasty, Ming Yangming. Elephant Mountain or Mount Elephant,is a Mountain in Xinyi District,Taipei,',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.8
                        
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Popular Places :',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Elephant()),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 90,
                              width: 150,
                              child: Image.asset(
                                'assets/view.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Elephant Mountain',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Taipei()),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 90,
                              width: 150,
                              child: Image.asset(
                                'assets/city.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Taipei City',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 90,
                            width: 150,
                            child: Image.asset(
                              'assets/art.jpg',
                              fit: BoxFit.cover,
                            ),
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Art Gallery',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ],
                ),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Directions()),
                    );
                  },
                  child: Text(
                    'FIND BEST ROUTE',
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
    );
  }
}
