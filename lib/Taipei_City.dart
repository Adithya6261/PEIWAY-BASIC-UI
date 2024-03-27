// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Elephant_Mountain.dart';
import 'package:flutter_application_2/Mountain_View.dart';
import 'package:flutter_application_2/Route.dart';

class Taipei extends StatelessWidget {
  const Taipei({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/city.jpg'),
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
                           color: Colors.white,
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
                    top: 340,
                    right: 30,
                    child: Text(
                      '12.7k',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20), // Added left and right padding below the image
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Taipei 101',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff4DAF50),
                        ),
                        Text(
                          'No.7,Section 5,Xinyi District,Taipei City',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Construction on the 250 story tower started in 2000 and finished in 2004. The tower has served as an icon of modern Taiwan since its beginning.Construction on the 250 story tower started in 2000 and finished in 2004.tower started in 2000 and finished in 2004. The tower has served as an icon of modern Taiwan since its beginning. ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.8,
                      ),
                    ),
                    SizedBox(height: 60),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Popular Places :',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Elephant())));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    height: 90,
                                    width: 135,
                                    child: Image.asset(
                                      'assets/view.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text('Elephant Mountain',style: TextStyle(fontSize: 12),)
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
                                      builder: ((context) => Mountain()),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    height: 90,
                                    width: 135,
                                    child: Image.asset(
                                      'assets/mountain.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(height: 10),
                              Text('Yangmingshan',style: TextStyle(fontSize: 12),)
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 90,
                                  width: 135,
                                  child: Image.asset(
                                    'assets/art.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.blue,
                                ),
                              ),
                               SizedBox(height: 10),
                              Text('Art Gallery',style: TextStyle(fontSize: 12),)
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
                              MaterialPageRoute(
                                  builder: ((context) => Directions())));
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
            ],
          ),
        ),
      ),
    );
  }
}
