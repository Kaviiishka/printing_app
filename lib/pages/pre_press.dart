import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/components/button.dart';
import 'package:printing_app/components/temp.dart';

class Pre_press extends StatefulWidget {
  const Pre_press({Key? key}) : super(key: key);

  @override
  _Pre_pressState createState() => _Pre_pressState();
}

class _Pre_pressState extends State<Pre_press> {
  final database = FirebaseDatabase.instance.reference();

  late String tp1;
  late String tp2;
  late String tp3;
  late String tp4;

  late double rm1;
  late double rm2;
  late double rm3;
  late double rm4;

  late double ut1;
  late double ut2;
  late double ut3;
  late double ut4;

  late double qty1 = 0;
  late double qty2 = 0;
  late double qty3 = 0;
  late double qty4 = 0;
  double result = 0;

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();
  final TextEditingController _controller7 = TextEditingController();
  final TextEditingController _controller9 = TextEditingController();
  final TextEditingController _controller10 = TextEditingController();
  final TextEditingController _controller11 = TextEditingController();
  final TextEditingController _controller13 = TextEditingController();
  final TextEditingController _controller14 = TextEditingController();
  final TextEditingController _controller15 = TextEditingController();

  void cal() {
    setState(() {
      qty1 = ut1 * rm1;
      qty2 = ut2 * rm2;
      qty3 = ut3 * rm3;
      qty4 = ut4 * rm4;
      result = qty1 + qty2 + qty3 + qty4;
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    final pre_pressRef1 = database.child('Prepress details/Prepress row1');
    final pre_pressRef2 = database.child('Prepress details/Prepress row2');
    final pre_pressRef3 = database.child('Prepress details/Prepress row3');
    final pre_pressRef4 = database.child('Prepress details/Prepress row4');
    final pre_pressRef5 = database.child('Prepress details/Pre press cost');
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
                            Row(
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
                                        color: Color.fromRGBO(255, 255, 255, 1),
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
                                  'PRE-PRESS',
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.sp,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 40.w),
                                    child: Text(
                                      'Paper/Board/Sticker/Special paper',
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
                                        EdgeInsets.symmetric(horizontal: 100.w),
                                    child: Text(
                                      'RMS/PKT',
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
                                        EdgeInsets.symmetric(horizontal: 160.w),
                                    child: Text(
                                      'Unit Price',
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
                                        EdgeInsets.symmetric(horizontal: 120.w),
                                    child: Text(
                                      'Qty',
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

                              //_incrementCounter(),
                            ),

                            //-- row 1--------------------------------------------------
                            Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '' ,),
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
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller2,
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
                                      child: Text('$qty1'),
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
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '' ,),
                                      child: TextField(
                                        controller: _controller5,
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
                                      //child: Textcell(cell: '',_controller: ,),
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
                                      child: Text('$qty2'),
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
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '' ,),
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
                                        controller: _controller11,
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
                                      child: Text('$qty3'),
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
                                      width: 280.h,
                                      //color: Colors.white,
                                      //child: Textcell(cell: '' ,),
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
                                      //child: Textcell(cell: '',_controller: ,),
                                      child: TextField(
                                        controller: _controller14,
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
                                      child: Text('$qty4'),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.sp)),
                                      ),
                                    ),
                                  ]),
                            ),

                            //----------total cost---------
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(500.w, 250.h, 80.w, 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Paper/Board/Sticker cost   ',
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
                                    //color: Colors.white,
                                    //child: Textcell(cell: '' ,),
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
                        )),
                  )
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
                          rm1 = double.parse(_controller2.text);

                          rm2 = double.parse(_controller6.text);

                          rm3 = double.parse(_controller10.text);

                          rm4 = double.parse(_controller14.text);

                          ut1 = double.parse(_controller3.text);

                          ut2 = double.parse(_controller7.text);

                          ut3 = double.parse(_controller11.text);

                          ut4 = double.parse(_controller15.text);

                          cal();
                          //row 1-----------------------------------------------------------
                          pre_pressRef1
                              .set({
                                'Paper,Board,Sticker or Special paper':
                                    _controller1.text,
                                'rms or pkt': _controller2.text,
                                'Unit price': _controller3.text,
                                'Qty': qty1,
                              })
                              .then((_) => print('pre press details1'))
                              .catchError(
                                  (error) => print('You got error! $error'));

                          //row 2------------------------------------------------------------------
                          pre_pressRef2
                              .set({
                                'Paper,Board,Sticker or Special paper':
                                    _controller5.text,
                                'rms or pkt': _controller6.text,
                                'Unit price': _controller7.text,
                                'Qty': qty2,
                              })
                              .then((_) => print('pre press details2'))
                              .catchError(
                                  (error) => print('You got error! $error'));

                          //row 3----------------------------------------------------------------------
                          pre_pressRef3
                              .set({
                                'Paper,Board,Sticker or Special paper':
                                    _controller9.text,
                                'rms or pkt': _controller10.text,
                                'Unit price': _controller11.text,
                                'Qty': qty3,
                              })
                              .then((_) => print('pre press details3'))
                              .catchError(
                                  (error) => print('You got error! $error'));

                          //row 4-----------------------------------------------------------------
                          pre_pressRef4
                              .set({
                                'Paper,Board,Sticker or Special paper':
                                    _controller13.text,
                                'rms or pkt': _controller14.text,
                                'Unit price': _controller15.text,
                                'Qty': qty4,
                              })
                              .then((_) => print('pre press details4'))
                              .catchError(
                                  (error) => print('You got error! $error'));

                          //total cost-----------------------------------------------------------
                          pre_pressRef5
                              .set({
                                'Paper,Board,Sticker or Special paper cost':
                                    result,
                              })
                              .then((_) => print('pre press details1'))
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
                    Button(text: 'NEXT', path: '/press'),
                    Button(text: 'BACK', path: '/details'),
                  ],
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }

  // @override
  // void dispose() {
  //   Hive.box('pre_press').close();
  //   super.dispose();

}
