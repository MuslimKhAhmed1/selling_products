import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Icon(Icons.share),
          SizedBox(width: 16.w),
          Icon(Icons.bookmark_border),
          SizedBox(width: 16.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'lib/assets/iph11.jpg',
              height: 300.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 203, 228, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Iphone 11 pro max',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4.w),
                      Text('4.9 (127)'),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Chip(
                        avatar: Icon(Icons.phone_iphone),
                        label: Text('Iphone'),
                      ),
                      Chip(
                        avatar: Icon(Icons.check),
                        label: Text('Best Qualety'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Goldy lamp is an ideal solution for creating a cozy atmosphere in your home. This stylish and functional lighting element provides comfortable.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 203, 228, 255),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(130.h, 40.w),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Exchange',
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(130.h, 40.w),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Buy',
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
