// ignore_for_file: unnecessary_import, avoid_print, non_constant_identifier_names, prefer_final_fields, unused_field, prefer_const_constructors, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, unused_import, prefer_const_literals_to_create_immutables

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/model/travelmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imagesize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        //app back color
        // backgroundColor: Colors.white,
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 1.8,
              // color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: [
                  //Background Image
                  Container(
                      width: double.infinity,
                      height: size.height / 2.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65),
                              bottomRight: Radius.circular(65)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                Places[_selectedIndex].image,
                              )))),
                  //Head Icons
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(160, 158, 158, 158)),
                            child: const Icon(CupertinoIcons.arrow_left),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(160, 158, 158, 158)),
                            child: const Icon(CupertinoIcons.heart),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //List
                  Positioned(
                    right: 2,
                    top: 100,
                    child: SizedBox(
                      width: 90,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: Places.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      decoration: BoxDecoration(
                                          borderRadius: _selectedIndex == index
                                              ? BorderRadius.circular(1000)
                                              : BorderRadius.circular(22),
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(Places[index].image),
                                            fit: BoxFit.fill,
                                          )),
                                      width: _selectedIndex == index
                                          ? imagesize + 20
                                          : imagesize,
                                      height: _selectedIndex == index
                                          ? imagesize + 20
                                          : imagesize,
                                      duration: Duration(milliseconds: 500),
                                    )),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),

                  //Place name and info's
                  Positioned(
                    top: 320,
                    left: imagesize / 1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Places[_selectedIndex].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(CupertinoIcons.placemark_fill),
                            Text(Places[_selectedIndex].Location,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              // color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Color.fromARGB(60, 0, 0, 0), width: 2)),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Distance: "),
                              Text(Places[_selectedIndex].Distance,
                                  style: TextStyle(color: Colors.blueAccent))
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Color.fromARGB(60, 0, 0, 0), width: 2)),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Temp: "),
                              Text(
                                Places[_selectedIndex].Temperature,
                                style: TextStyle(color: Colors.blueAccent),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Color.fromARGB(60, 0, 0, 0), width: 2)),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rating: "),
                              Text(Places[_selectedIndex].Rating,
                                  style: TextStyle(color: Colors.blueAccent))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          ExpandableText(
                            Places[_selectedIndex].Description,
                            expandText: 'Know More',
                            collapseText: "I've known enough",
                            maxLines: 1,
                            linkColor: Colors.red,
                            textDirection: TextDirection.ltr,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Price",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(Places[_selectedIndex].Price,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                              Container(
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                child: const Icon(
                                  CupertinoIcons.arrow_right,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
