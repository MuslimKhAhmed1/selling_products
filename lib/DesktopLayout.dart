import 'package:flutter/material.dart';

class Desktoplayout extends StatelessWidget {
  const Desktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Disktop"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.amber,
            width: mediaQueryData.size.width * 0.5,
            height: mediaQueryData.size.height * 0.5,
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: Color.fromARGB(255, 44, 225, 7),
                  height: 200,
                  width: 400,
                ),
                Container(
                  color: Color.fromARGB(255, 7, 109, 225),
                  height: 200,
                  width: 400,
                ),
                Container(
                  color: Color.fromARGB(255, 44, 225, 7),
                  height: 200,
                  width: 400,
                ),
                Container(
                  color: Color.fromARGB(255, 225, 7, 7),
                  height: 200,
                  width: 400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
