import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/components/button.dart';
import 'package:printing_app/components/pre_press_row.dart';
import 'package:printing_app/components/temp.dart';
import 'package:hive/hive.dart';

class Pre_press extends StatefulWidget {
  const Pre_press({Key? key}) : super(key: key);

  @override
  _Pre_pressState createState() => _Pre_pressState();
}

class _Pre_pressState extends State<Pre_press> {
  var box = Hive.box<dynamic>('pre_press');

  late String tp1;
  late String tp2;
  late String tp3;
  late String tp4;
  late String rm1;
  late String rm2;
  late String rm3;
  late String rm4;

  late double ut1;
  late double ut2;
  late double ut3;
  late double ut4;
  late double qt1;
  late double qt2;
  late double qt3;
  late double qt4;

  double result1 = 0;
  double result2 = 0;
  double result3 = 0;
  double result4 = 0;
  double result = 0;

  // final TextEditingController _controllera1 = TextEditingController();
  // final TextEditingController _controllerb1 = TextEditingController();
  // final TextEditingController _controllera2 = TextEditingController();
  // final TextEditingController _controllerb2 = TextEditingController();
  // final TextEditingController _controllera3 = TextEditingController();
  // final TextEditingController _controllerb3 = TextEditingController();
  // final TextEditingController _controllera4 = TextEditingController();
  // final TextEditingController _controllerb4 = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();
  final TextEditingController _controller7 = TextEditingController();
  final TextEditingController _controller8 = TextEditingController();
  final TextEditingController _controller9 = TextEditingController();
  final TextEditingController _controller10 = TextEditingController();
  final TextEditingController _controller11 = TextEditingController();
  final TextEditingController _controller12 = TextEditingController();
  final TextEditingController _controller13 = TextEditingController();
  final TextEditingController _controller14 = TextEditingController();
  final TextEditingController _controller15 = TextEditingController();
  final TextEditingController _controller16 = TextEditingController();

  void cal() {
    setState(() {
      result1 = ut1 * qt1;
      result2 = ut2 * qt2;
      result3 = ut3 * qt3;
      result4 = ut4 * qt4;
      result = result1 + result2 + result3 + result4;
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                                      child: TextField(
                                        controller: _controller8,
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
                                      child: TextField(
                                        controller: _controller16,
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
                          box.put('type1', _controller1.text);
                          tp1 = box.get('type1');
                          print(box.get('type1'));

                          box.put('rms1', _controller2.text);
                          rm1 = box.get('rms1');

                          box.put('type2', _controller5.text);
                          tp2 = box.get('type2');

                          box.put('rms2', _controller6.text);
                          rm2 = box.get('rms2');

                          box.put('type3', _controller9.text);
                          tp3 = box.get('type3');

                          box.put('rms3', _controller10.text);
                          rm3 = box.get('rms3');

                          box.put('type4', _controller13.text);
                          tp4 = box.get('type4');

                          box.put('rms4', _controller14.text);
                          rm4 = box.get('rms4');

                          box.put('unit1', _controller3.text);
                          ut1 = double.parse(box.get('unit1'));
                          print(box.get('unit1'));

                          box.put('qty1', _controller4.text);
                          qt1 = double.parse(box.get('qty1'));
                          print(box.get('qty1'));

                          box.put('unit2', _controller7.text);
                          ut2 = double.parse(box.get('unit2'));
                          print(box.get('unit2'));

                          box.put('qty2', _controller8.text);
                          qt2 = double.parse(box.get('qty2'));
                          print(box.get('qty2'));

                          box.put('unit3', _controller11.text);
                          ut3 = double.parse(box.get('unit3'));
                          print(box.get('unit3'));

                          box.put('qty3', _controller12.text);
                          qt3 = double.parse(box.get('qty3'));
                          print(box.get('qty3'));

                          box.put('unit4', _controller15.text);
                          ut4 = double.parse(box.get('unit4'));
                          print(box.get('unit4'));

                          box.put('qty4', _controller16.text);
                          qt4 = double.parse(box.get('qty4'));
                          print(box.get('qty4'));

                          cal();
                          box.put('result1', result);
                          print(box.get('result1'));
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
