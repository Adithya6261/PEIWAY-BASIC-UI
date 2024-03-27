// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Mountain_View.dart';
import 'package:flutter_application_2/Route.dart';
import 'package:flutter_application_2/Taipei_City.dart';

class Elephant extends StatelessWidget {
  const Elephant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/view.jpg'),
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
                    '17.8k',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 10), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Elephant\nMountain',
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
                      Text(
                        'Xiangshan(Mt.Elephant),Xinyl Dist,Taipei City',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Xiangshan is also known as Elephant Mountain or Mount Elephant,is a Mountain in Xinyi District,Taipei,Taiwan.It is close to the metro of xiangshan station.It is 183mt high and as hiking trail about 1.5km long s Elephant Mountain or Mount Elephant,is a Mountain in Xinyi District,Mount Elephant,is a Mountain in Xinyi District,',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.8,
                    ),
                  ),
                  SizedBox(height: 40),
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
                  SizedBox(height: 20),
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
                                        builder: ((context) => Mountain())));
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
                             SizedBox(height: 5),
                            Text('Yangmingshan',style: TextStyle(fontSize: 12),)
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
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 90,
                                  width: 135,
                                  child: Image.asset(
                                    'assets/city.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                             SizedBox(height: 5),
                            Text('Taipei City',style: TextStyle(fontSize: 12),)
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
                             SizedBox(height: 5),
                            Text('Art Gallery',style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      ],
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
    );
  }
}
