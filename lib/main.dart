import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(faceapp());
}

class faceapp extends StatelessWidget {
  const faceapp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Center(
            child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Image.asset(
                  "images/ff.png",
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: SizedBox(
              width: 342,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Mobile number or email address",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Log in"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(300, 50),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image.asset("images/pp.png")),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Or",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Create New Account"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(238, 44),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Text("About   Help  More"),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Meta "),
              Icon(
                Icons.copyright,
                size: 19,
              ),
              Text(" 2023"),
            ],
          ),
        ],
      ),
    );
  }
}
