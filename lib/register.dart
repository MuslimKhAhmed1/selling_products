import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:responsive_app/Mobile.layout.dart';
import 'package:responsive_app/login.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({super.key});

  @override
  State<RegisterUI> createState() => _LoginState();
}

class _LoginState extends State<RegisterUI> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailContr = TextEditingController();
    TextEditingController passwordContr = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 49, 111, 255),
                    Color.fromARGB(255, 4, 27, 152)
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r))),
            alignment: Alignment.bottomCenter,
            height: 550.h,
            width: double.infinity.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Welcome To The App",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 5, 5, 97)),
                ),
                Text(
                  "Hello there , sign up to continue",
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldUI(
                  hint: "Email",
                  ispass: false,
                  control: emailContr,
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextFieldUI(
                  hint: "Password",
                  ispass: true,
                  control: passwordContr,
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextFieldUI(
                  hint: "confirm password",
                  ispass: true,
                  control: passwordContr,
                ),
                SizedBox(
                  height: 30.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 45.w),
                    width: 270.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 15, 61, 227),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Text(
                      "Sign up ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "___________ sign up by ____________",
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GFButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MobileLayout(),
                        ));
                      },
                      text: "Facebook",
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        height: 35.h,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                                color: const Color.fromARGB(255, 8, 48, 117))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'http://pngimg.com/uploads/google/google_PNG19635.png',
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 3, 50, 132),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ],
                ),
                Spacer(),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already I am registered",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    TextButton(
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 13, 49, 193)),
                        )),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            top: 45.h,
            left: 20.w,
            child: Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
              top: 35.h,
              right: 40.w,
              child: Icon(
                Icons.list_alt,
                color: Colors.white,
                size: 50,
              )),
        ],
      )),
    );
  }
}
