import 'package:excel/excel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing_app/components/button.dart';
import 'package:printing_app/components/temp.dart';

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
}

class Client_db extends StatefulWidget {
  //const Client_db({Key? key}) : super(key: key);

  @override
  State<Client_db> createState() => _Client_dbState();
}

class _Client_dbState extends State<Client_db> {
  //details------------------------------------------
  String _date = 'date';
  String _quotation = 'quotation';
  String _client = 'client';
  String _job = 'job';

//pre press ------------------------------------------------
  String _type1 = 'type1';
  String _rms1 = 'rms1';
  String _unit1 = 'unit1';
  String _qty1 = '0';
  String _type2 = 'type2';
  String _rms2 = 'rms2';
  String _unit2 = 'unit2';
  String _qty2 = '0';
  String _type3 = 'type3';
  String _rms3 = 'rms3';
  String _unit3 = 'unit3';
  String _qty3 = '0';
  String _type4 = 'type4';
  String _rms4 = 'rms4';
  String _unit4 = 'unit4';
  String _qty4 = '0';

  String _result1 = '0';

//press ---------------------------------------------
  String _ut1 = 'unit1';
  String _up1 = 'up1';
  String _ut2 = 'unit2';
  String _up2 = 'up2';
  String _ut3 = 'unit3';
  String _up3 = 'up3';
  String _ut4 = 'unit4';
  String _up4 = 'up4';
  String _ut5 = 'unit5';
  String _up5 = 'up5';

  String _qt1 = '0';
  String _qt2 = '0';
  String _qt3 = '0';
  String _qt4 = '0';
  String _qt5 = '0';
  String _result2 = '0';

  final databaseRef = FirebaseDatabase.instance.reference();

  void initState() {
    super.initState();
    retrieveData();
  }

  void retrieveData() {
    //cliet details----------------------------------------------------------------------
    databaseRef.child('Client details/date').onValue.listen((event) {
      final Object? date = event.snapshot.value;
      setState(() {
        _date = '$date';
      });
    });

    databaseRef.child('Client details/quotation').onValue.listen((event) {
      final Object? quotation = event.snapshot.value;
      setState(() {
        _quotation = '$quotation';
      });
    });

    databaseRef.child('Client details/job').onValue.listen((event) {
      final Object? job = event.snapshot.value;
      setState(() {
        _job = '$job';
      });
    });

    databaseRef.child('Client details/quotation').onValue.listen((event) {
      final Object? client = event.snapshot.value;
      setState(() {
        _client = '$client';
      });
    });

    //prepress details----------------------------------------------------------
    databaseRef
        .child(
            'Prepress details/Prepress row1/Paper,Board,Sticker or Special paper')
        .onValue
        .listen((event) {
      final Object? type1 = event.snapshot.value;
      setState(() {
        _type1 = '$type1';
      });
    });
    databaseRef
        .child(
            'Prepress details/Prepress row2/Paper,Board,Sticker or Special paper')
        .onValue
        .listen((event) {
      final Object? type2 = event.snapshot.value;
      setState(() {
        _type2 = '$type2';
      });
    });
    databaseRef
        .child(
            'Prepress details/Prepress row3/Paper,Board,Sticker or Special paper')
        .onValue
        .listen((event) {
      final Object? type3 = event.snapshot.value;
      setState(() {
        _type3 = '$type3';
      });
    });
    databaseRef
        .child(
            'Prepress details/Prepress row4/Paper,Board,Sticker or Special paper')
        .onValue
        .listen((event) {
      final Object? type4 = event.snapshot.value;
      setState(() {
        _type4 = '$type4';
      });
    });

    databaseRef
        .child('Prepress details/Prepress row1/Qty')
        .onValue
        .listen((event) {
      final Object? qty1 = event.snapshot.value;
      setState(() {
        _qty1 = '$qty1';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row2/Qty')
        .onValue
        .listen((event) {
      final Object? qty2 = event.snapshot.value;
      setState(() {
        _qty2 = '$qty2';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row3/Qty')
        .onValue
        .listen((event) {
      final Object? qty3 = event.snapshot.value;
      setState(() {
        _qty3 = '$qty3';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row4/Qty')
        .onValue
        .listen((event) {
      final Object? qty4 = event.snapshot.value;
      setState(() {
        _qty4 = '$qty4';
      });
    });

    databaseRef
        .child('Prepress details/Prepress row1/Unit price')
        .onValue
        .listen((event) {
      final Object? unit1 = event.snapshot.value;
      setState(() {
        _unit1 = '$unit1';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row2/Unit price')
        .onValue
        .listen((event) {
      final Object? unit2 = event.snapshot.value;
      setState(() {
        _unit2 = '$unit2';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row3/Unit price')
        .onValue
        .listen((event) {
      final Object? unit3 = event.snapshot.value;
      setState(() {
        _unit3 = '$unit3';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row4/Unit price')
        .onValue
        .listen((event) {
      final Object? unit4 = event.snapshot.value;
      setState(() {
        _unit4 = '$unit4';
      });
    });

    databaseRef
        .child('Prepress details/Prepress row1/rms or pkt')
        .onValue
        .listen((event) {
      final Object? rms1 = event.snapshot.value;
      setState(() {
        _rms1 = '$rms1';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row2/rms or pkt')
        .onValue
        .listen((event) {
      final Object? rms2 = event.snapshot.value;
      setState(() {
        _rms2 = '$rms2';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row3/rms or pkt')
        .onValue
        .listen((event) {
      final Object? rms3 = event.snapshot.value;
      setState(() {
        _rms3 = '$rms3';
      });
    });
    databaseRef
        .child('Prepress details/Prepress row4/rms or pkt')
        .onValue
        .listen((event) {
      final Object? rms4 = event.snapshot.value;
      setState(() {
        _rms4 = '$rms4';
      });
    });
    databaseRef
        .child(
            'Prepress details/Pre press cost/Paper,Board,Sticker or Special paper cost')
        .onValue
        .listen((event) {
      final Object? result1 = event.snapshot.value;
      setState(() {
        _result1 = '$result1';
      });
    });

    //press details-------------------------------------------------------------
    databaseRef.child('Press details/Design/Units').onValue.listen((event) {
      final Object? ut1 = event.snapshot.value;
      setState(() {
        _ut1 = '$ut1';
      });
    });
    databaseRef
        .child('Press details/Design/Unit price')
        .onValue
        .listen((event) {
      final Object? up1 = event.snapshot.value;
      setState(() {
        _up1 = '$up1';
      });
    });
    databaseRef.child('Press details/Design/Qty').onValue.listen((event) {
      final Object? qt1 = event.snapshot.value;
      setState(() {
        _qt1 = '$qt1';
      });
    });

    databaseRef
        .child('Press details/Photography/Units')
        .onValue
        .listen((event) {
      final Object? ut2 = event.snapshot.value;
      setState(() {
        _ut2 = '$ut2';
      });
    });
    databaseRef
        .child('Press details/Photography/Unit price')
        .onValue
        .listen((event) {
      final Object? up2 = event.snapshot.value;
      setState(() {
        _up2 = '$up2';
      });
    });
    databaseRef.child('Press details/Photography/Qty').onValue.listen((event) {
      final Object? qt2 = event.snapshot.value;
      setState(() {
        _qt2 = '$qt2';
      });
    });

    databaseRef.child('Press details/Proofing/Units').onValue.listen((event) {
      final Object? ut3 = event.snapshot.value;
      setState(() {
        _ut3 = '$ut3';
      });
    });
    databaseRef
        .child('Press details/Proofing/Unit price')
        .onValue
        .listen((event) {
      final Object? up3 = event.snapshot.value;
      setState(() {
        _up3 = '$up3';
      });
    });
    databaseRef.child('Press details/Proofing/Qty').onValue.listen((event) {
      final Object? qt3 = event.snapshot.value;
      setState(() {
        _qt3 = '$qt3';
      });
    });

    databaseRef
        .child('Press details/Translations/Units')
        .onValue
        .listen((event) {
      final Object? ut4 = event.snapshot.value;
      setState(() {
        _ut4 = '$ut4';
      });
    });
    databaseRef
        .child('Press details/Translations/Unit price')
        .onValue
        .listen((event) {
      final Object? up4 = event.snapshot.value;
      setState(() {
        _up4 = '$up4';
      });
    });
    databaseRef.child('Press details/Translations/Qty').onValue.listen((event) {
      final Object? qt4 = event.snapshot.value;
      setState(() {
        _qt4 = '$qt4';
      });
    });

    databaseRef
        .child('Press details/Type setting/Units')
        .onValue
        .listen((event) {
      final Object? ut5 = event.snapshot.value;
      setState(() {
        _ut5 = '$ut5';
      });
    });
    databaseRef
        .child('Press details/Type setting/Unit price')
        .onValue
        .listen((event) {
      final Object? up5 = event.snapshot.value;
      setState(() {
        _up5 = '$up5';
      });
    });
    databaseRef.child('Press details/Type setting/Qty').onValue.listen((event) {
      final Object? qt5 = event.snapshot.value;
      setState(() {
        _qt5 = '$qt5';
      });
    });

    databaseRef
        .child('Press details/Press cost/Total press cost')
        .onValue
        .listen((event) {
      final Object? result2 = event.snapshot.value;
      setState(() {
        _result2 = '$result2';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(180.w, 80.h, 100.w, 10.h),
            child: Container(
              height: 920.h,
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
                              SingleChildScrollView(
                                child: Container(
                                  height: 140.h,
                                  width: 1500.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.75),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.sp)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.sp),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Date: $_date',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.sp,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                          ),
                                        ),
                                        Text(
                                          'Quoatation No: $_quotation',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.sp,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                          ),
                                        ),
                                        Text(
                                          'Client Name: $_client',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.sp,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                          ),
                                        ),
                                        Text(
                                          'Job description: $_job',
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
                              SingleChildScrollView(
                                child: Container(
                                  height: 250.h,
                                  width: 1600.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.75),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.sp)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.sp),
                                    child: Column(
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
                                                child: Text(
                                                  '$_type1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_rms1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_unit1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qty1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                child: Text(
                                                  '$_type2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_rms2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_unit2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qty2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                child: Text(
                                                  '$_type3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_rms3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_unit3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qty3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                child: Text(
                                                  '$_type4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_rms4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                //color: Colors.white,
                                                //child: Textcell(cell: ''),
                                                child: Text(
                                                  '$_unit4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                //color: Colors.white,
                                                //child: Textcell(cell: ''),
                                                child: Text(
                                                  '$_qty4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              Container(
                                                height: 35.h,
                                                width: 280.h,
                                                child: Text('$_result1'),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
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
                              SingleChildScrollView(
                                child: Container(
                                  height: 275.h,
                                  width: 1500.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.75),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.sp)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(3.sp),
                                    child: Column(
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
                                                  'Units: $_ut1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_ut5',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_up5',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qt5',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_ut2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_up2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qt2',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_ut1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_up1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qt1',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_ut3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_up3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qt3',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_ut4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_up4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 220.h,
                                                child: Text(
                                                  '$_qt4',
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
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
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                              ),
                                              Container(
                                                height: 35.h,
                                                width: 280.h,
                                                child: Text('$_result2'),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.sp)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
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
    final excel = Excel.createExcel();
    final sheet = excel[excel.getDefaultSheet()!];

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
        "$_date";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 4)).value =
        "$_quotation";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 5)).value =
        "$_client";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 6)).value =
        "$_job";

    sheet.merge(
      CellIndex.indexByString("A8"),
      CellIndex.indexByString("D8"),
    );
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 8)).value =
        "Pre press";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 9)).value =
        "Paper/Sticker/Board/Special paper";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 10)).value =
        "$_type1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 11)).value =
        "$_type2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 12)).value =
        "$_type3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 13)).value =
        "$_type4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 9)).value =
        "RMS/PKT";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 10)).value =
        "$_rms1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 11)).value =
        "$_rms2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 12)).value =
        "$_rms3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 13)).value =
        "$_rms4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 9)).value =
        "Unit";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 10)).value =
        "$_unit1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 11)).value =
        "$_unit2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 12)).value =
        "$_unit3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 13)).value =
        "$_unit4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 9)).value =
        "QTY";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 10)).value =
        "$_qty1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 11)).value =
        "$_qty2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 12)).value =
        "$_qty3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 13)).value =
        "$_qty4";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 14)).value =
        "Paper/Sticker/Board";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 14)).value =
        "$_result1";

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
        "$_ut5";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 19)).value =
        "$_ut2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 20)).value =
        "$_ut1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 21)).value =
        "$_ut3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: 22)).value =
        "$_ut4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 17)).value =
        "Unit price";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 18)).value =
        "$_up5";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 19)).value =
        "$_up2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 20)).value =
        "$_up1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 21)).value =
        "$_up3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 22)).value =
        "$_up4";

    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 17)).value =
        "QTY";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 18)).value =
        "$_qt5";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 19)).value =
        "$_qt2";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 20)).value =
        "$_qt1";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 21)).value =
        "$_qt3";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: 22)).value =
        "$_qt4";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 23)).value =
        "Total press cost";
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: 23)).value =
        "$_result2";

    excel.save(fileName: "$_quotation.xlsx");
  }
}

//finish code
