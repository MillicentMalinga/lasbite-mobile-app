import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './take_bite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Container(
              height: 250.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/baked-chicken-wings-asian-style-tomatoes-sauce-plate.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 100.0,
                    left: 40.0,
                    child: Container(
                      height: 100.0,
                      width: 300.0,
                      decoration: const BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topLeft: Radius.circular(50))),
                    ),
                  ),
                  Positioned(
                      top: 125,
                      left: 50,
                      child: Text(
                        'Too much? Share it!',
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ))
                ],
              )),
          SizedBox(
              height: 250,
              child: Stack(children: [
                Positioned(
                  top: 35,
                  left: 20,
                  child: Material(
                      child: Container(
                    height: 230.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  )),
                ),
                Positioned(
                    top: 0,
                    left: 30,
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/baked-chicken-wings-asian-style-tomatoes-sauce-plate.jpg"),
                                  fit: BoxFit.fill)),
                        ))),
                Positioned(
                    top: 60,
                    left: 200,
                    child: Container(
                        height: 150,
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Take a Bite',
                                style: GoogleFonts.josefinSans(
                                  textStyle: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )),
                            Spacer(flex: 1),
                            Text(
                                'Have a bite of what your neighbours have shared. Neighbours have shared food they either have excess of, or close to its sell by date. '),
                            Spacer(flex: 2),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SecondScreen()));
                              },
                              child: Text('Take a Bite'),
                            )
                          ],
                        ))),
              ])),
        ],
      ),
    );
  }
}
