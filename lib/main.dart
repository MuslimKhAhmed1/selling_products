import 'package:flutter/material.dart';
import 'package:responsive_app/DesktopLayout.dart';
import 'package:responsive_app/login.dart';
import 'package:responsive_app/tabletLayout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 234, 118, 255)),
          useMaterial3: true,
        ),
        home: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              return const Login();
            } else if (constraints.maxWidth < 1000) {
              return const TabletLayout();
            } else {
              return const Desktoplayout();
            }
          },
        ),
      ),
    );
  }
}
