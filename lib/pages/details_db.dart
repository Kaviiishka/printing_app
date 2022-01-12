import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:printing_app/components/button.dart';
import 'package:printing_app/components/temp.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:syncfusion_flutter_xlsio/xlsio.dart';
//import 'dart:io';
//import 'package:open_file/open_file.dart';
//import 'package:universal_html/html.dart' show AnchorElement;
//import 'package:flutter/foundation.dart';
//import 'dart:convert';

class Details_db extends StatefulWidget {
  const Details_db({Key? key}) : super(key: key);

  @override
  State<Details_db> createState() => _Details_dbState();
}

class _Details_dbState extends State<Details_db> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Temp(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Client_db(),
        )
      ],
    );
  }

  // Future<void> createExcel() async {
  //   final Workbook workbook = Workbook();
  //   final List<int> bytes = workbook.saveAsStream();
  //   workbook.dispose();

  //   final String path = (await getApplicationSupportDirectory()).path;
  //   final String fileName = '$path/Output.xlsx';
  //   final File file = File(fileName);
  //   await file.writeAsBytes(bytes, flush: true);
  //   OpenFile.open(fileName);
  //}
}

class Client_db extends StatelessWidget {
  //const Client_db({Key? key}) : super(key: key);

  var box = Hive.box('details');
  var box1 = Hive.box('pre_press');
  var box2 = Hive.box('press');

//details------------------------------------------
  late String date = box.get('date');
  late String quotation = box.get('quotation');
  late String client = box.get('client');
  late String job = box.get('job');

//pre press ------------------------------------------------
  late String type1 = box1.get('type1');
  late String rms1 = box1.get('rms1');
  late String unit1 = box1.get('unit1');
  late String qty1 = box1.get('qty1');
  late String type2 = box1.get('type2');
  late String rms2 = box1.get('rms2');
  late String unit2 = box1.get('unit2');
  late String qty2 = box1.get('qty2');
  late String type3 = box1.get('type3');
  late String rms3 = box1.get('rms3');
  late String unit3 = box1.get('unit3');
  late String qty3 = box1.get('qty3');
  late String type4 = box1.get('type4');
  late String rms4 = box1.get('rms4');
  late String unit4 = box1.get('unit4');
  late String qty4 = box1.get('qty4');

  late double result1 = box1.get('result1');

//press ---------------------------------------------
  late String ut1 = box2.get('unit1');
  late String up1 = box2.get('up1');
  late String ut2 = box2.get('unit2');
  late String up2 = box2.get('up2');
  late String ut3 = box2.get('unit3');
  late String up3 = box2.get('up3');
  late String ut4 = box2.get('unit4');
  late String up4 = box2.get('up4');
  late String ut5 = box2.get('unit5');
  late String up5 = box2.get('up5');

  late double qt1 = box2.get('qt1');
  late double qt2 = box2.get('qt2');
  late double qt3 = box2.get('qt3');
  late double qt4 = box2.get('qt4');
  late double qt5 = box2.get('qt5');
  late double result2 = box2.get('result2');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(180.w, 190.h, 100.w, 10.h),
            child: Container(
              height: 820.h,
              width: 1500.w,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.75),
                borderRadius: BorderRadius.all(Radius.circular(20.sp)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SUMMARY',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 26.sp,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 10.h, 200.w, 10.h),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //---details-----------------------
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'CLIENT DETAILS',
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 110.h,
                                width: 1500.w,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.sp)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date: $date',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.sp,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                      Text(
                                        'Quoatation No: $quotation',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.sp,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                      Text(
                                        'Client Name: $client',
                                        style: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.sp,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                      Text(
                                        'Job description: $job',
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
                              ),
                            ],
                          ),
                        ),

                        //---pre press---------------------------------------------
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'PRE PRESS',
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 220.h,
                                width: 1600.w,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.sp)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.w),
                                              child: Text(
                                                'Paper/Board/Sticker/Special Paper',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 60.w),
                                              child: Text(
                                                'RMS/PKT',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 110.w),
                                              child: Text(
                                                'Unit Price',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 80.w),
                                              child: Text(
                                                'QTY',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 250.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$type1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$rms1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$unit1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qty1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 250.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$type2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$rms2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$unit2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qty2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 250.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$type3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$rms3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$unit3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qty3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 250.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$type4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$rms4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$unit4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qty4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Paper/Board/Sticker cost   ',
                                              style: TextStyle(
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.sp,
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                              ),
                                            ),
                                            Container(
                                              height: 35.h,
                                              width: 280.h,
                                              child: Text('$result1'),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //----press------------------------
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'PRESS',
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 260.h,
                                width: 1500.w,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.sp)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(3.sp),
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //---unit price row-------------------
                                      Padding(
                                        padding: EdgeInsets.all(3.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 100.w),
                                              child: Text(
                                                'Units',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 150.w),
                                              child: Text(
                                                'Unit price',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 110.w),
                                              child: Text(
                                                'QTY',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //--type setting------------------------
                                      Padding(
                                        padding: EdgeInsets.all(3.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                'Type setting',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                //color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$ut1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$up1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qt1',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //-- photography ----------------------
                                      Padding(
                                        padding: EdgeInsets.all(3.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                'Photography',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                //color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$ut2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$up2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qt2',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //-- design --------------------------
                                      Padding(
                                        padding: EdgeInsets.all(3.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                'Design',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                //color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$ut3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$up3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qt3',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //---proofing -----------------
                                      Padding(
                                        padding: EdgeInsets.all(3.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                'Proofing',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                //color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$ut4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$up4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qt4',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //-- translation ------------------
                                      Padding(
                                        padding: EdgeInsets.all(3.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                'Translation',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                //color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$ut5',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$up5',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 220.h,
                                              //color: Colors.white,
                                              //child: Textcell(cell: ''),
                                              child: Text(
                                                '$qt5',
                                                style: TextStyle(
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.sp,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.all(5.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Total press cost   ',
                                              style: TextStyle(
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.sp,
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                              ),
                                            ),
                                            Container(
                                              height: 35.h,
                                              width: 280.h,
                                              child: Text('$result2'),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.sp)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 218.w,
                height: 63.h,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                  child: Text(
                    'FINISH',
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
              SizedBox(
                width: 218.w,
                height: 63.h,
                child: RaisedButton(
                  onPressed: () {
                    export();
                  },
                  child: Text(
                    'EXPORT',
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
              Button(text: 'BACK', path: '/press'),
            ],
          ),
        ],
      ),
    );
  }

  void export() {
    //final Stopwatch = Stopwatch()..start();

    final excel = Excel.createExcel();
    final sheet = excel[excel.getDefaultSheet()!];

    //sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 1)).value =

    // sheet.merge(CellIndex.indexByString("A1"), CellIndex.indexByString("H2"),
    //     customValue: "SUMMERY REPORT");
    // sheet.merge(
    //     CellIndex.indexByString("A1"), CellIndex.indexByString("H1"),
    //     customValue: "SUMMERY REPORT");

    //--client------------------------------------------------
    sheet.merge(
      CellIndex.indexByString("A2"),
      CellIndex.indexByString("D2"),
    );
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 0)).value =
        "SUMMERY REPORT";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 2)).value =
        "Client details";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 3)).value =
        "Date";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 4)).value =
        "Quotation No";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 5)).value =
        "Client name";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 6)).value =
        "Job description";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 3)).value =
        "$date";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 4)).value =
        "$quotation";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 5)).value =
        "$client";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 6)).value =
        "$job";

    sheet.merge(
      CellIndex.indexByString("A8"),
      CellIndex.indexByString("D8"),
    );
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 8)).value =
        "Pre press";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 9)).value =
        "Paper/Sticker/Board/Special paper";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 10)).value =
        "$type1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 11)).value =
        "$type2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 12)).value =
        "$type3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 13)).value =
        "$type4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 9)).value =
        "RMS/PKT";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 10)).value =
        "$rms1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 11)).value =
        "$rms2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 12)).value =
        "$rms3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 13)).value =
        "$rms4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 9)).value =
        "Unit";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 10)).value =
        "$unit1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 11)).value =
        "$unit2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 12)).value =
        "$unit3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 13)).value =
        "$unit4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 9)).value =
        "QTY";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 10)).value =
        "$qty1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 11)).value =
        "$qty2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 12)).value =
        "$qty3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 13)).value =
        "$qty4";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 14)).value =
        "Paper/Sticker/Board";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 14)).value =
        "$result1";

    sheet.merge(
      CellIndex.indexByString("A16"),
      CellIndex.indexByString("D16"),
    );

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 16)).value =
        "Press";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 18)).value =
        "Type setting";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 19)).value =
        "Photography";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 20)).value =
        "Design";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 21)).value =
        "Proofing";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 22)).value =
        "Translation";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 17)).value =
        "Units";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 18)).value =
        "$ut1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 19)).value =
        "$ut2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 20)).value =
        "$ut3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 21)).value =
        "$ut4";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 22)).value =
        "$ut5";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 17)).value =
        "Unit price";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 18)).value =
        "$up1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 19)).value =
        "$up2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 20)).value =
        "$up3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 21)).value =
        "$up4";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 22)).value =
        "$up5";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 17)).value =
        "QTY";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 18)).value =
        "$qt1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 19)).value =
        "$qt2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 20)).value =
        "$qt3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 21)).value =
        "$qt4";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 22)).value =
        "$qt5";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 23)).value =
        "Total press cost";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 23)).value =
        "$result2";

    // sheet.merge(CellIndex.indexByString("A4"), CellIndex.indexByString("B4"),
    //     customValue: "Date");
    // sheet.merge(CellIndex.indexByString("A5"), CellIndex.indexByString("B5"),
    //     customValue: "Quotation No");
    // sheet.merge(CellIndex.indexByString("A6"), CellIndex.indexByString("B6"),
    //     customValue: "Client Name");
    // sheet.merge(CellIndex.indexByString("A7"), CellIndex.indexByString("B7"),
    //     customValue: "Job description");

    // sheet.merge(CellIndex.indexByString("C4"), CellIndex.indexByString("H4"),
    //     customValue: "$date");
    // sheet.merge(CellIndex.indexByString("C5"), CellIndex.indexByString("H5"),
    //     customValue: "$quotation");
    // sheet.merge(CellIndex.indexByString("C5"), CellIndex.indexByString("H5"),
    //     customValue: "$client");
    // sheet.merge(CellIndex.indexByString("C5"), CellIndex.indexByString("H5"),
    //     customValue: "$job");

    // //--pre press-------------------------------------------------------
    // sheet.merge(CellIndex.indexByString("A8"), CellIndex.indexByString("H8"),
    //     );
    // sheet.merge(CellIndex.indexByString("A9"), CellIndex.indexByString("H9"),
    //     customValue: "Pre press");
    // sheet.merge(CellIndex.indexByString("A10"), CellIndex.indexByString("B10"),
    //     customValue: "Paper/Board/Sticker/Special paper");
    // sheet.merge(CellIndex.indexByString("A11"), CellIndex.indexByString("B11"),
    //     customValue: "$type1");
    // sheet.merge(CellIndex.indexByString("A12"), CellIndex.indexByString("B12"),
    //     customValue: "$type2");
    // sheet.merge(CellIndex.indexByString("A13"), CellIndex.indexByString("B13"),
    //     customValue: "$type3");
    // sheet.merge(CellIndex.indexByString("A14"), CellIndex.indexByString("B14"),
    //     customValue: "$type4");

    // sheet.merge(CellIndex.indexByString("C10"), CellIndex.indexByString("D10"),
    //     customValue: "RMS/PKT");
    // sheet.merge(CellIndex.indexByString("C11"), CellIndex.indexByString("D11"),
    //     customValue: "$rms1");
    // sheet.merge(CellIndex.indexByString("c12"), CellIndex.indexByString("D12"),
    //     customValue: "$rms2");
    // sheet.merge(CellIndex.indexByString("C13"), CellIndex.indexByString("D13"),
    //     customValue: "$rms3");
    // sheet.merge(CellIndex.indexByString("C14"), CellIndex.indexByString("D14"),
    //     customValue: "$rms4");

    // sheet.merge(CellIndex.indexByString("E10"), CellIndex.indexByString("F10"),
    //     customValue: "Unit price");
    // sheet.merge(CellIndex.indexByString("E11"), CellIndex.indexByString("F11"),
    //     customValue: "$unit1");
    // sheet.merge(CellIndex.indexByString("E12"), CellIndex.indexByString("F12"),
    //     customValue: "$unit2");
    // sheet.merge(CellIndex.indexByString("E13"), CellIndex.indexByString("F13"),
    //     customValue: "$unit3");
    // sheet.merge(CellIndex.indexByString("E14"), CellIndex.indexByString("F14"),
    //     customValue: "$unit4");

    // sheet.merge(CellIndex.indexByString("G10"), CellIndex.indexByString("H10"),
    //     customValue: "QTY");
    // sheet.merge(CellIndex.indexByString("G11"), CellIndex.indexByString("H11"),
    //     customValue: "$qty1");
    // sheet.merge(CellIndex.indexByString("G12"), CellIndex.indexByString("H12"),
    //     customValue: "$qty2");
    // sheet.merge(CellIndex.indexByString("G13"), CellIndex.indexByString("H13"),
    //     customValue: "$qty3");
    // sheet.merge(CellIndex.indexByString("G14"), CellIndex.indexByString("H14"),
    //     customValue: "$qty4");

    // sheet.merge(CellIndex.indexByString("A15"), CellIndex.indexByString("C15"),
    //     customValue: "Paper/Board/Sticker cost");
    // sheet.merge(CellIndex.indexByString("D15"), CellIndex.indexByString("E15"),
    //     customValue: "$result1");

    // //--press-----------------------------------------------
    // sheet.merge(CellIndex.indexByString("A16"), CellIndex.indexByString("H16"),
    //     );
    // sheet.merge(CellIndex.indexByString("A17"), CellIndex.indexByString("H17"),
    //     customValue: "Press");
    // sheet.merge(CellIndex.indexByString("A19"), CellIndex.indexByString("B19"),
    //     customValue: "Type setting");
    // sheet.merge(CellIndex.indexByString("A19"), CellIndex.indexByString("B19"),
    //     customValue: "Photography");
    // sheet.merge(CellIndex.indexByString("A19"), CellIndex.indexByString("B19"),
    //     customValue: "Design");
    // sheet.merge(CellIndex.indexByString("A19"), CellIndex.indexByString("B19"),
    //     customValue: "Proofing");
    // sheet.merge(CellIndex.indexByString("A19"), CellIndex.indexByString("B19"),
    //     customValue: "Translation");

    // sheet.merge(CellIndex.indexByString("C18"), CellIndex.indexByString("D18"),
    //     customValue: "Units");
    // sheet.merge(CellIndex.indexByString("C19"), CellIndex.indexByString("D19"),
    //     customValue: "$ut1");
    // sheet.merge(CellIndex.indexByString("C20"), CellIndex.indexByString("D20"),
    //     customValue: "$ut2");
    // sheet.merge(CellIndex.indexByString("C21"), CellIndex.indexByString("D21"),
    //     customValue: "$ut3");
    // sheet.merge(CellIndex.indexByString("C22"), CellIndex.indexByString("D22"),
    //     customValue: "$ut4");
    // sheet.merge(CellIndex.indexByString("C23"), CellIndex.indexByString("D23"),
    //     customValue: "$ut5");

    // sheet.merge(CellIndex.indexByString("E18"), CellIndex.indexByString("F18"),
    //     customValue: "Units");
    // sheet.merge(CellIndex.indexByString("E19"), CellIndex.indexByString("F19"),
    //     customValue: "$up1");
    // sheet.merge(CellIndex.indexByString("E20"), CellIndex.indexByString("F20"),
    //     customValue: "$up2");
    // sheet.merge(CellIndex.indexByString("E21"), CellIndex.indexByString("F21"),
    //     customValue: "$up3");
    // sheet.merge(CellIndex.indexByString("E22"), CellIndex.indexByString("F22"),
    //     customValue: "$up4");
    // sheet.merge(CellIndex.indexByString("E23"), CellIndex.indexByString("F23"),
    //     customValue: "$up5");

    // sheet.merge(CellIndex.indexByString("G18"), CellIndex.indexByString("H18"),
    //     customValue: "QTY");
    // sheet.merge(CellIndex.indexByString("G19"), CellIndex.indexByString("H19"),
    //     customValue: "$qt1");
    // sheet.merge(CellIndex.indexByString("G20"), CellIndex.indexByString("H20"),
    //     customValue: "$qt2");
    // sheet.merge(CellIndex.indexByString("G21"), CellIndex.indexByString("H21"),
    //     customValue: "$qt3");
    // sheet.merge(CellIndex.indexByString("G22"), CellIndex.indexByString("H22"),
    //     customValue: "$qt4");
    // sheet.merge(CellIndex.indexByString("G23"), CellIndex.indexByString("H23"),
    //     customValue: "$qt5");

    // sheet.merge(CellIndex.indexByString("A24"), CellIndex.indexByString("C24"),
    //     customValue: "Total press cost");
    // sheet.merge(CellIndex.indexByString("D24"), CellIndex.indexByString("E24"),
    //     customValue: "$result2");

    excel.save(fileName: "$quotation.xlsx");
    // setState(() {
    //   executionTime = Stopwatch.elapsed;
    // });
  }
}
