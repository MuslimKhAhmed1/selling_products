import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:responsive_app/Mobile.layout.dart';
import 'package:responsive_app/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailContr = TextEditingController();
  final TextEditingController passwordContr = TextEditingController();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
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
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              alignment: Alignment.bottomCenter,
              height: 550.h,
              width: double.infinity.w,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 5, 5, 97),
                      ),
                    ),
                    Text(
                      "Hello there, sign in to continue",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "Username or email",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 10.h),
                    TextFieldUI(
                      hint: "Email",
                      ispass: false,
                      control: emailContr,
                      focusNode: emailFocus,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Password",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 10.h),
                    TextFieldUI(
                      hint: "Password",
                      ispass: true,
                      control: passwordContr,
                      focusNode: passwordFocus,
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 13, 210),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () {
                        final em = "Muslim";
                        final pas = "1234";
                        if (_formKey.currentState!.validate()) {
                          if (emailContr.text == em &&
                              passwordContr.text == pas) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MobileLayout(),
                            ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.red,
                                content:
                                    Text("Email and password were not correct"),
                              ),
                            );
                          }
                          emailContr.clear();
                          passwordContr.clear();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 45.w),
                        width: 290.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 15, 61, 227),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GFButton(
                          size: GFSize.LARGE,
                          onPressed: () {},
                          text: "Facebook",
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                            height: 32.h,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 8, 48, 117))),
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
                                      color:
                                          const Color.fromARGB(255, 3, 50, 132),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterUI(),
                            )),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Color.fromARGB(255, 13, 49, 193),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 45.h,
              left: 20.w,
              child: Text(
                "Sign in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 35.h,
              right: 40.w,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldUI extends StatelessWidget {
  const TextFieldUI({
    super.key,
    required this.hint,
    required this.ispass,
    this.control,
    this.focusNode,
  });

  final String hint;
  final bool ispass;
  final TextEditingController? control;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.0.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        obscureText: ispass,
        controller: control,
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey.shade700),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10.w, bottom: 10.h),
        ),
        style: TextStyle(color: Colors.black),
        maxLines: 1,
      ),
    );
  }
}
