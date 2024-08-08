import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tablet"),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            color: Color.fromARGB(255, 232, 10, 10),
            height: 300,
            width: mediaQueryData.size.width,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(index.toString() + " Tablet"),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
