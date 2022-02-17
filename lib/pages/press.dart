import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/components/button.dart';
import 'package:printing_app/components/temp.dart';

class Press extends StatefulWidget {
  const Press({Key? key}) : super(key: key);

  @override
  _PressState createState() => _PressState();
}

class _PressState extends State<Press> {
  final database = FirebaseDatabase.instance.reference();
  late double ut1 = 0;
  late double ut2 = 0;
  late double ut3 = 0;
  late double ut4 = 0;
  late double ut5 = 0;
  late double up1 = 0;
  late double up2 = 0;
  late double up3 = 0;
  late double up4 = 0;
  late double up5 = 0;
  late double qt1 = 0;
  late double qt2 = 0;
  late double qt3 = 0;
  late double qt4 = 0;
  late double qt5 = 0;

  double result = 0;

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();
  final TextEditingController _controller7 = TextEditingController();
  final TextEditingController _controller9 = TextEditingController();
  final TextEditingController _controller10 = TextEditingController();
  final TextEditingController _controller12 = TextEditingController();
  final TextEditingController _controller13 = TextEditingController();
  final TextEditingController _controller15 = TextEditingController();

  void cal() {
    setState(() {
      qt1 = ut1 * up1;
      qt2 = ut2 * up2;
      qt3 = ut3 * up3;
      qt4 = ut4 * up4;
      qt5 = ut5 * up5;

      result = qt1 + qt2 + qt3 + qt4 + qt5;

      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    final pressRef1 = database.child('/Press details/Type setting');
    final pressRef2 = database.child('/Press details/Photography');
    final pressRef3 = database.child('/Press details/Design');
    final pressRef4 = database.child('/Press details/Proofing');
    final pressRef5 = database.child('/Press details/Translations');
    final pressRef6 = database.child('/Press details/Press cost');
    return Stack(
      children: [
        Temp(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(100.w, 235.h, 100.w, 10.h),
                      child: Container(
                        height: 637.h,
                        width: 1436.w,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.75),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.sp)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 32.h,
                                    width: 32.w,
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.sp,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.sp)),
                                    ),
                                  ),
                                  Text(
                                    'PRESS',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 350.w),
                                  child: Text(
                                    'Units',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 50.w),
                                  child: Text(
                                    'Unit price',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 150.w),
                                  child: Text(
                                    'QTY',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //---row 1----------------------------------
                            Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 120.h,
                                      child: Text(
                                        'Type setting',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller1,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: TextField(
                                        controller: _controller3,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: Text('$qt1'),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                  ]),
                            ),

                            //-- row 2--------------------------------------------------
                            Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 120.h,
                                      child: Text(
                                        'Photography',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller4,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: TextField(
                                        controller: _controller6,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: Text('$qt2'),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                  ]),
                            ),

                            //-- row 3--------------------------------------------------
                            Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 120.h,
                                      child: Text(
                                        'Design',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller7,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: TextField(
                                        controller: _controller9,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: Text('$qt3'),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                  ]),
                            ),

                            //-- row 4--------------------------------------------------
                            Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 120.h,
                                      child: Text(
                                        'Proofing',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller10,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: TextField(
                                        controller: _controller12,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: Text('$qt4'),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                  ]),
                            ),

                            //-----row 5-------------------------
                            Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 120.h,
                                      child: Text(
                                        'Translations',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller13,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: TextField(
                                        controller: _controller15,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Date',
                                          hintText: '',
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: ''),
                                      child: Text('$qt5'),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                  ]),
                            ),

                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(500.w, 200.h, 80.w, 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Total press cost   ',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  Container(
                                    height: 35.h,
                                    width: 280.h,
                                    child: Text('$result'),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.sp)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 218.w,
                        height: 63.h,
                        child: RaisedButton(
                          onPressed: () {
                            //--type setting
                            ut1 = double.parse(_controller1.text);
                            up1 = double.parse(_controller3.text);

                            //--photography
                            ut2 = double.parse(_controller4.text);
                            up2 = double.parse(_controller6.text);

                            //--Design
                            ut3 = double.parse(_controller7.text);
                            up3 = double.parse(_controller9.text);

                            //--Proofing
                            ut4 = double.parse(_controller10.text);
                            up4 = double.parse(_controller12.text);

                            //--Translations
                            ut5 = double.parse(_controller13.text);
                            up5 = double.parse(_controller15.text);

                            cal();

                            //type setting-----------------------------------------------------------
                            pressRef1
                                .set({
                                  'Units': _controller1.text,
                                  'Unit price': _controller3.text,
                                  'Qty': qt1,
                                })
                                .then((_) => print('press details1'))
                                .catchError(
                                    (error) => print('You got error! $error'));

                            //photography-----------------------------------------------------------
                            pressRef2
                                .set({
                                  'Units': _controller4.text,
                                  'Unit price': _controller6.text,
                                  'Qty': qt2,
                                })
                                .then((_) => print('press details2'))
                                .catchError(
                                    (error) => print('You got error! $error'));

                            //design-----------------------------------------------------------
                            pressRef3
                                .set({
                                  'Units': _controller7.text,
                                  'Unit price': _controller9.text,
                                  'Qty': qt3,
                                })
                                .then((_) => print('press details3'))
                                .catchError(
                                    (error) => print('You got error! $error'));

                            //proofing-----------------------------------------------------------
                            pressRef4
                                .set({
                                  'Units': _controller10.text,
                                  'Unit price': _controller12.text,
                                  'Qty': qt4,
                                })
                                .then((_) => print('press details4'))
                                .catchError(
                                    (error) => print('You got error! $error'));

                            //translation-----------------------------------------------------------
                            pressRef5
                                .set({
                                  'Units': _controller13.text,
                                  'Unit price': _controller15.text,
                                  'Qty': qt5,
                                })
                                .then((_) => print('press details5'))
                                .catchError(
                                    (error) => print('You got error! $error'));

                            //cost-----------------------------------------------------------
                            pressRef6
                                .set({
                                  'Total press cost': result,
                                })
                                .then((_) => print('press details6'))
                                .catchError(
                                    (error) => print('You got error! $error'));
                          },
                          child: Text(
                            'CALCULATE',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          color: Color.fromRGBO(185, 140, 62, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48.r)),
                        ),
                      ),
                      Button(text: 'NEXT', path: '/details_db'),
                      Button(text: 'BACK', path: '/pre_press'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
