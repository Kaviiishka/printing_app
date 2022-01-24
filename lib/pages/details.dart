import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing_app/components/button.dart';
import 'package:printing_app/components/temp.dart';
//import 'package:print_app/components/textcell.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Details extends StatefulWidget {
  //const ({Key? key}) : super(key: key);
  //final appDirectory = await getApplicationSupportDirectory();
  //Hive.openBox('details');
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Temp(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Client(),
        ),
      ],
    );
  }

  //@override
  //void dispose() {
  //  Hive.box('details').close();
  //  super.dispose();
  //}
}

class Client extends StatelessWidget {
  var box = Hive.box('details');

  late String text;
  TextEditingController _dateController = TextEditingController();
  TextEditingController _quotationController = TextEditingController();
  TextEditingController _clientController = TextEditingController();
  TextEditingController _jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(100.w, 135.h, 100.w, 10.h),
                  child: Container(
                      height: 408.15.h,
                      width: 785.33.w,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.75),
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(25.w, 0.h, 0.w, 0.h),
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
                                    'STAGE',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.sp,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 280.h,
                                          //color: Colors.white,
                                          child: TextField(
                                            controller: _dateController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              //labelText: 'Date',
                                              hintText: 'Enter date',
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 40.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Quatation No',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.sp,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 280.h,
                                          //color: Colors.white,
                                          child: TextField(
                                            controller: _quotationController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              //labelText: 'Date',
                                              hintText: 'Enter Quatation No',
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Client name',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.sp,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 630.h,
                                          //color: Colors.white,
                                          child: TextField(
                                            controller: _clientController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              //labelText: 'Date',
                                              hintText: 'Enter Client name',
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Job description',
                                          style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.sp,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 630.h,
                                          //color: Colors.white,
                                          child: TextField(
                                            controller: _jobController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              //labelText: 'Date',
                                              hintText: 'Enter Job description',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(400.w, 540.h, 100.w, 80.h),
                  child: Container(
                    height: 360.h,
                    width: 360.w,
                    child: SfCalendar(
                      view: CalendarView.month,
                      todayHighlightColor: Color.fromRGBO(185, 140, 62, 1),
                    ),
                    // decoration: BoxDecoration(
                    //   color: Colors.black.withOpacity(0.75),
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    // ),

                    color: Color.fromRGBO(185, 140, 62, 1),
                  ),
                ),
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // RaisedButton(
              //   onPressed: () {
              //     box.put('date', _dateController.text);
              //     print(box.getAt(0));
              //   },
              // ),
              SizedBox(
                width: 218.w,
                height: 63.h,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/pre_press', (route) => false);
                    box.put('date', _dateController.text);

                    String date = box.get('date');
                    print(box.get('date'));
                    box.put('quotation', _quotationController.text);
                    print(box.get('quotation'));
                    box.put('client', _clientController.text);
                    print(box.get('client'));
                    box.put('job', _jobController.text);
                    print(box.get('job'));
                  },
                  child: Text(
                    'NEXT',
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

              Button(text: 'DISCARD', path: '/'),
            ],
          ),
        ],
      ),
    );
  }
}
