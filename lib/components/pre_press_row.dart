import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/components/textcell.dart';

class Pre_press_row extends StatefulWidget {
  //const Pre_press_row({Key? key}) : super(key: key);

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();

  @override
  _Pre_press_rowState createState() => _Pre_press_rowState();
}

class _Pre_press_rowState extends State<Pre_press_row> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: 35.h,
          width: 280.h,
          //color: Colors.white,
          //child: Textcell(cell: '' ,),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.sp)),
          ),
        ),
        Container(
          height: 35.h,
          width: 280.h,
          //color: Colors.white,
          //child: Textcell(cell: '',_controller: ,),
          child: TextField(
            //controller: _controller1,
            decoration: InputDecoration(
              border: InputBorder.none,
              //labelText: 'Date',
              hintText: 'Enter date',
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.sp)),
          ),
        ),
        Container(
          height: 35.h,
          width: 280.h,
          //color: Colors.white,
          //child: Textcell(cell: ''),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.sp)),
          ),
        ),
        Container(
          height: 35.h,
          width: 280.h,
          //color: Colors.white,
          //child: Textcell(cell: ''),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.sp)),
          ),
        ),
      ]),
    );
  }
}
