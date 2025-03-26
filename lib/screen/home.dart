import 'package:flutter/material.dart';
import 'package:makemefine/component/navbar_web.dart';
import 'package:makemefine/component/txt_medium.dart';

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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: NavbarWeb(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Image(image: AssetImage('images/banner-1.jpg')),
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              color: Colors.white54,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.0),
                        bottomRight: Radius.circular(4.0),
                        topLeft: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                    ),

                    child: Column(
                      children: [
                        TextMedium(text: 'Most popular'),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.0),
                        bottomRight: Radius.circular(4.0),
                        topLeft: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                    ),

                    child: Column(
                      children: [
                        TextMedium(text: 'Top sales'),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.0),
                        bottomRight: Radius.circular(4.0),
                        topLeft: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                    ),

                    child: Column(
                      children: [
                        TextMedium(text: 'Top discounts'),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Image(image: AssetImage('images/banner-1.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
