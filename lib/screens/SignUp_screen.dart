import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Column(children: [
                  Stack(
                    children: [
                      ClipPath(
                          clipper: CurveClipper(),
                          child: Container(
                            color: Colors.blue,
                            height: 270,
                            width: double.infinity,
                            // child: Center(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text('Getting Started',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 50.sp,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Create an account to continue',
                                          style: TextStyle(
                                              letterSpacing: 2,
                                              color: Colors.white,
                                              fontSize: 30.sp,
                                              fontWeight: FontWeight.w100)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 180),
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 120.72.r,
                              foregroundImage: AssetImage('images/logo.png')),
                        ),
                      ),
                    ],
                  )
                ]),
              )
            ],
          ),
        ));
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var firstLineOffset = Offset(0, size.height - 110);
    var secondLineOffset = Offset(size.width, 0);

    var point = Offset(size.width, size.height - 110);
    var controlPoint = Offset(size.width / 2, size.height + 30);

    path.lineTo(firstLineOffset.dx, firstLineOffset.dy);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, point.dx, point.dy);

    path.lineTo(secondLineOffset.dx, secondLineOffset.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
