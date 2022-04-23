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
      body: ListView(
        children: [
          Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.black, // here for close state
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  title: Text(
                    "Payment method",
                    style: TextStyle(
                        color: Palette.blackColor.shade800,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  initiallyExpanded: true,
                  children: [
                    ListTile(
                      onTap: _showAlertDialogue,
                      title: const Text("Card"),
                    ),
                    ListTile(
                      onTap: _showAlertDialogue,
                      title: const Text("Cash"),
                    ),
                    ListTile(
                      onTap: _showAlertDialogue,
                      title: const Text("Payment link"),
                    ),
                    ListTile(
                      onTap: _showAlertDialogue,
                      title: const Text("Invoice"),
                    ),
                  ],
                ),
              ),
              Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text(
                    "Date",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: kRaleway,
                        color: Palette.blackColor.shade800,
                        fontSize: 15.sp),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        children: [
                          Text("From",
                              style: TextStyle(
                                color: Palette.blackColor.shade800,
                                fontSize: 12.sp,
                                fontFamily: kRaleway,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(width: 5.w,),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                      Palette.greyFontColour.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "   29/01/2022",
                                style: TextStyle(
                                  color: Palette.greyFontColour.withOpacity(0.8),
                                  fontFamily: kRaleway,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            "to",
                            style: TextStyle(
                              color: Palette.blackColor.shade800,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: kRaleway,
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                      Palette.greyFontColour.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "   29/01/2022",
                                style: TextStyle(
                                  color: Palette.greyFontColour.withOpacity(0.8),
                                  fontFamily: kRaleway,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
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
                              color: Palette.blackColor.shade800,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold)),
                      rangeTextStyle: const TextStyle(
                        color: Palette.datePickerRangeColor,
                        fontWeight: FontWeight.bold,
                      ),

                      selectionTextStyle: const TextStyle(
                          color: Palette.whiteColor, fontWeight: FontWeight.bold),
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        width: 1.sw,
        padding: EdgeInsets.symmetric(vertical: 3.h),
        decoration: BoxDecoration(
            color: Palette.redColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () {
            //Navigate.to(const CancelReceiptPage());
          },
          child: Text(
            "Apply filters",
            style: TextStyle(
                color: Palette.whiteColor,
                fontFamily: kRaleway,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _onSelectionChanged(
      DateRangePickerSelectionChangedArgs
          dateRangePickerSelectionChangedArgs) {}


void _showAlertDialogue(){
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      alignment: Alignment.center,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      title: Text(
        "Clear all filters",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Palette.blackColor,
            fontFamily: kRaleway,
            fontSize: 15.sp),
      ),
      content: Text(
        "This action Cannot be undone ",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: kRaleway,
            fontSize: 15.sp),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: Text("Cancel",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Palette.greyFontColour,
              fontFamily: kRaleway,
              fontSize: 16.sp
          ),),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: Text("Confirm",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Palette.redColor,
              fontFamily: kRaleway,
              fontSize: 16.sp),),
        ),
      ],
    ),
  );
}


}
