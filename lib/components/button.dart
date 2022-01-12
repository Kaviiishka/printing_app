import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatefulWidget {
  final String text;
  final String path;
  //const Button({Key? key}) : super(key: key);

  Button({required this.text, required this.path});

  @override
  _ButtonState createState() => _ButtonState(text, path);
}

class _ButtonState extends State<Button> {
  final String text;
  final String path;
  _ButtonState(this.text, this.path);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 218.w,
      height: 63.h,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, path, (route) => false);
        },
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        color: Color.fromRGBO(185, 140, 62, 1),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      ),
    );
  }
}
