// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Elephant_Mountain.dart';
import 'package:flutter_application_2/Mountain_View.dart';
import 'package:flutter_application_2/Taipei_City.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> dummylist = [
    {
      "title": "Yangmingshan National Park",
      "likes": "24.3k",
      "image": 'assets/mountain.jpeg',
    },
    {
      "title": "Elephant Mountain",
      "likes": "30.5k",
      "image": 'assets/view.jpg',
    },
    {
      "title": "Taipei 101",
      "likes": "40.7k",
      "image": 'assets/city.jpg',
    },
  ];
  List<Map<String, dynamic>> filterdummylist = [];

  @override
  void initState() {
    filterdummylist = dummylist;
    super.initState();
  }

  void _filterdummyList(String value) {
    setState(() {
      if (value.isNotEmpty) {
        filterdummylist =
            dummylist.where((item) => item['title'].toLowerCase().contains(value.toLowerCase())).toList();
      } else {
        filterdummylist = dummylist;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Color(0xff4DAF50),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          'p_logo.png',
          width: 30,
          height: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: Align(
                    alignment: Alignment.center,
                    child: TextField(
                      controller: _controller,
                      onChanged: _filterdummyList,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                              ),
                              VerticalDivider(
                                color: Color.fromARGB(255, 200, 200, 195),
                                width: 18,
                                indent: 5,
                                endIndent: 5,
                              ),
                            ],
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xff4DAF50),
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xff4DAF50),
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: filterdummylist.length,
                  itemBuilder: (context, index) =>
                      _placesListItemWidget(context, filterdummylist[index]),
                ),
                // SizedBox(height: 20),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: ((context) => Elephant()),
                //       ),
                //     );
                //   },
                // ),
                // SizedBox(height: 20),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: ((context) => Taipei()),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _placesListItemWidget(BuildContext context, Map<String, dynamic> item) {
  return GestureDetector(
    onTap: () {
      // print(item['title']);
      if (item['title'] == 'Yangmingshan National Park') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => Mountain()),
          ),
        );
      }
      else if(item['title'] == 'Elephant Mountain'){
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => Elephant()),
          ),
        );
      }
      else{
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => Taipei()),
          ),
        );
      }
    },
    child: SizedBox(
      height: 240,
      child: Card(
        elevation: 0.2,
        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 180,
                width: 350,
                child: Image.asset(
                  item['image'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          item['title'],
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite,
                      color: Color(0xff4DAF50),
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          item['likes'],
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
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
  );
}
