import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_app/productPage.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        AppBarSection(),
        MyCarouselSlider(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: Textsty(18, Colors.black),
              ),
              Text(
                "See all",
                style: Textsty(15, Colors.purple),
              ),
            ],
          ),
        ),
        Expanded(child: TabBarSection()) // Ensure Expanded is used here
      ])),
    );
  }

  DefaultTabController TabBarSection() {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        // Removed Expanded from here
        children: [
          TabBar(
              unselectedLabelColor: Color.fromARGB(255, 137, 137, 137),
              tabs: [
                Tab(
                  icon: Icon(Icons.laptop),
                  text: "Laptop",
                ),
                Tab(
                  icon: Icon(Icons.phone),
                  text: "Mobile",
                ),
                Tab(
                  icon: Icon(Icons.watch),
                  text: "S.Watch",
                ),
              ]),
          Expanded(
            // Added Expanded here
            child: TabBarView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.h,
                    children: [
                      InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              )),
                          child: Items("Dell Lat E7", "lap.jpg")),
                      Items("Hp Envy x360", "lap3.jpeg"),
                      Items("mac Book pro 2017", "mac.webp"),
                      Items("MSI gf63", "msi.jpeg"),
                      Items("macBook pro 2020", "mac1.jpeg"),
                      Items("MSI Rtx i9", "msi1.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.h,
                    children: [
                      InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              )),
                          child: Items("Iphone 11 pro", "iph11.jpg")),
                      Items("Samsong S22 ", "s22.jpg"),
                      Items("Samsong note 9 ", "not9.jpg"),
                      Items("Iphone 15 pro ", "iph15.png"),
                      Items("Readme 13 pro ", "mi13.jpeg"),
                      Items("Realme C13 ", "real13.webp"),
                      Items("Realme 12 ", "rea13.jpeg"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.h,
                    children: [
                      InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              )),
                          child: Items("Apple S.watch", "sw.jpeg")),
                      Items("Samsung Watch 7 ", "sw1.jpeg"),
                      Items("Galaxsy band 5 ", "sw2.png"),
                      Items("RealMe band 6", "sw3.jpeg"),
                      Items("Mi smart W. 4", "sw4.jpeg"),
                      Items("Realme S.watch 8 ", "sw5.jpeg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Items(String name, String img) {
    return Container(
      height: 40.h,
      width: 40.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "$name",
            style: TextStyle(
                backgroundColor: Colors.white.withOpacity(0.5),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.blueGrey, width: 3),
          image: DecorationImage(image: AssetImage("lib/assets/$img"))),
    );
  }

  AppBar AppBarSection() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Container(
        height: 38.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.grey.shade300,
        ),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: "Search products"),
        ),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.settings),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.wallet_outlined),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)),
        ),
      ],
    );
  }

  TextStyle Textsty(double size, Color col) {
    return TextStyle(fontSize: size, color: col);
  }
}

class MyCarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(height: 200.0.h, autoPlay: true),
        items: const [
          ApperWidget(
              name: "Explore Electroic",
              descrp: "Exchange and buy\n Components",
              img: "case.png"),
          ApperWidget(
              name: "New Iphone ",
              descrp: "Pre Order accepted\n 15 pro max",
              img: "iph15.png"),
          ApperWidget(
              name: "Mi smart watch",
              descrp: "New smart watch Of Mi",
              img: "sw2.png"),
          ApperWidget(
              name: "New MSI",
              descrp: "Newist version MSI laptop",
              img: "msi1.png"),
        ]);
  }
}

class ApperWidget extends StatelessWidget {
  const ApperWidget({
    Key? key,
    required this.name,
    required this.descrp,
    required this.img,
  }) : super(key: key);
  final String name;
  final String descrp;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: LinearGradient(colors: [
          Colors.blueGrey.shade900,
          Colors.blueGrey.shade400,
        ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$name",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "$descrp",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20),
                height: 30.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 232, 101, 255),
                    const Color.fromARGB(255, 157, 33, 179),
                  ]),
                ),
                child: Text(
                  "Buy now",
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 110.h,
            width: 100.w,
            child: Image.asset(
              "lib/assets/$img",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
