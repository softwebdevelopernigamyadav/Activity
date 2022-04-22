import 'package:activity_app/config/router/router.dart';
import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/pages/activity/activity_page/activity_page.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String date = "";
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Palette.whiteColor,
        centerTitle: true,
        title: Text(
          "Filter",
          style: TextStyle(
              color: Palette.blackColour1,
              fontFamily: kRaleway,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigate.to(const ActivityPage());
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Palette.blackColor,
            )),
        actions: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Clear",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Palette.redColor,
                  fontSize: 15.sp),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Payment method",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Palette.blackColor.withOpacity(0.8),
                  fontFamily: kRaleway,
                  fontSize: 15.sp),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Palette.blackColor,
            ),
          ),
          ListTile(
            title: Text(
              "Cash",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Palette.blackColor.withOpacity(0.8),
                  fontFamily: kRaleway,
                  fontSize: 15.sp),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Palette.blackColor,
            ),
          ),
          ListTile(
            title: Text(
              "Card",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Palette.blackColor.withOpacity(0.8),
                  fontFamily: kRaleway,
                  fontSize: 15.sp),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Palette.blackColor,
            ),
          ),
          ListTile(
            title: Text(
              "Payment link",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: kRaleway,
                  color: Palette.blackColor.withOpacity(0.8),
                  fontSize: 15.sp),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Palette.blackColor,
            ),
          ),
          ExpansionTile(
            title: Text(
              "Invoice",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: kRaleway,
                  color: Palette.blackColor.withOpacity(0.8),
                  fontSize: 15.sp),
            ),
            children: [
              AlertDialog(
                alignment: Alignment.center,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                title: Text(
                  "Cancel payment request",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Palette.blackColor,
                      fontFamily: kRaleway,
                      fontSize: 15.sp),
                ),
                content: Text(
                  "This action Cannot be undone ",
                  style: TextStyle(
                      color: Palette.blackColour1,
                      fontFamily: kRaleway,
                      fontSize: 15.sp),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of.pop();
                    },
                    child: Text("Cancel",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Palette.greyFontColour,
                        fontFamily: kRaleway,
                        fontSize: 15.sp
                    ),),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Confirm",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Palette.redColor,
                        fontFamily: kRaleway,
                        fontSize: 15.sp),),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "Date",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: kRaleway,
                  color: Palette.blackColor.withOpacity(0.8),
                  fontSize: 15.sp),
            ),
            children: [
              SfDateRangePicker(
                enablePastDates: true,
                rangeSelectionColor:
                    Palette.datePickerRangeColor.withOpacity(0.1),
                endRangeSelectionColor: Palette.datePickerRangeColor,
                startRangeSelectionColor: Palette.datePickerRangeColor,
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                headerStyle: DateRangePickerHeaderStyle(
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                        color: Palette.blackColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold)),
                rangeTextStyle: const TextStyle(
                    color: Palette.datePickerRangeColor,
                    fontWeight: FontWeight.bold,),
                selectionTextStyle: const TextStyle(
                    color: Palette.whiteColor, fontWeight: FontWeight.bold),
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _onSelectionChanged(
      DateRangePickerSelectionChangedArgs
          dateRangePickerSelectionChangedArgs) {}
}
