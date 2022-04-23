import 'package:activity_app/config/router/router.dart';
import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/pages/activity/activity_page/activity_page.dart';
import 'package:activity_app/pages/activity/widgets/refund_successful_page.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefundPage extends StatefulWidget {
  const RefundPage({Key key}) : super(key: key);

  @override
  _RefundPageState createState() => _RefundPageState();
}

class _RefundPageState extends State<RefundPage> {
  final _keys = [
    "7",
    "8",
    "9",
    "4",
    "5",
    "6",
    "1",
    "2",
    "3",
    "00",
    "0",
    "C",
  ];

  final TextEditingController _textController = TextEditingController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Palette.greyFontColour.withOpacity(0.2),
          title: Text(
            "Refund",
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
          bottom: TabBar(
            indicatorColor: Palette.redColor,
            indicatorWeight: 2.w,
            labelColor: Palette.redColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              fontFamily: kRaleway,
            ),
            onTap: (index) {},
            tabs: const [
              Tab(text: "Amount"),
              Tab(text: "Product"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            /*
             *
             * Tab bar 1 Page Content
             *
             * */
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.1.sh),
                  child: TextFormField(
                    style: TextStyle(
                        color: Palette.redColor.withOpacity(0.8),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    readOnly: true,
                    controller: _textController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '-£0.00',
                        hintStyle: TextStyle(
                            color: Palette.redColor.withOpacity(0.2),
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "23 Jan 2022 15:06",
                        style: TextStyle(
                            color: Palette.greyFontColour,
                            fontWeight: FontWeight.bold,
                            fontFamily: kRaleway,
                            fontSize: 12.sp),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100.w),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 1.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Palette.greyFontColour),
                        ),
                        child: Text(
                          "VISA",
                          style: TextStyle(
                              color: Palette.navyBlueColor.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                              fontFamily: kRaleway,
                              fontSize: 12.sp),
                        ),
                      ),
                      Text("Ending xxxx-8903",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Palette.greyFontColour,
                              fontFamily: kRaleway,
                              fontSize: 12.sp))
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: LayoutBuilder(
                      builder: (_, constraints) {
                        final height = (constraints.maxHeight - 40) / 4;
                        final width = (constraints.maxWidth - 50) / 3;
                        return Wrap(
                          runSpacing: 10,
                          spacing: 10,
                          children: _keys.map((key) {
                            return _button(
                                label: key,
                                width: width,
                                height: height,
                                onPressed: () {
                                  if (key != 'C') {
                                    _textController.text =
                                        _textController.text + key;
                                  } else {
                                    _textController.clear();
                                  }
                                });
                          }).toList(),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: 1.sw,
                  margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  decoration: BoxDecoration(
                      color: Palette.redColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigate.to(const RefundSuccessfulPage());
                    },
                    child: Text(
                      "Refund",
                      style: TextStyle(
                          color: Palette.whiteColor,
                          fontFamily: kRaleway,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
              ],
            ),
            /*
          *
         * Tabbar 2 page coding here
         * *
           */
            ListView(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "Item",
                              style: TextStyle(
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),
                            ),
                            TextSpan(
                                text: " (Multi price)",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                ))
                          ])),
                          Text("£20.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontSize: 16.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("+ £2.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: Palette.greyFontColour.withOpacity(0.2),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "Item",
                              style: TextStyle(
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),
                            ),
                            TextSpan(
                                text: " (Multi price)",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                ))
                          ])),
                          Text("£20.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontSize: 16.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("+ £2.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: Palette.greyFontColour.withOpacity(0.2),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "Item",
                              style: TextStyle(
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),
                            ),
                            TextSpan(
                                text: " (Multi price)",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                ))
                          ])),
                          Text("£20.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontSize: 16.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("+ £2.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: Palette.greyFontColour.withOpacity(0.2),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "Item",
                              style: TextStyle(
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),
                            ),
                            TextSpan(
                                text: " (Multi price)",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                ))
                          ])),
                          Text("£20.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.blackColor,
                                  fontFamily: kRaleway,
                                  fontSize: 16.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("+ £2.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                color: Palette.greyFontColour.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Text("",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Palette.greyFontColour.withOpacity(0.6),
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: Palette.greyFontColour.withOpacity(0.2),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text("-£40.00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Palette.redColor.withOpacity(0.8),
                              fontFamily: kRaleway,
                              fontSize: 20.sp)),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "23 Jan 2022 15:06",
                            style: TextStyle(
                                color: Palette.greyFontColour,
                                fontWeight: FontWeight.bold,
                                fontFamily: kRaleway,
                                fontSize: 12.sp),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100.w),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 1.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Palette.greyFontColour),
                            ),
                            child: Text(
                              "VISA",
                              style: TextStyle(
                                  color: Palette.navyBlueColor.withOpacity(0.8),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp),
                            ),
                          ),
                          Text("Ending xxxx-8903",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.greyFontColour,
                                  fontFamily: kRaleway,
                                  fontSize: 12.sp))
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        width: 1.sw,
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        decoration: BoxDecoration(
                            color: Palette.redColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {
                            Navigate.to(const RefundSuccessfulPage());
                          },
                          child: Text(
                            "Refund",
                            style: TextStyle(
                                color: Palette.whiteColor,
                                fontFamily: kRaleway,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _button(
      {double height, double width, String label, VoidCallback onPressed}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(color: Palette.greyFontColour.withOpacity(0.2)),
      ),
      child: TextButton(
        child: label != "C"
            ? Text(
                label,
                style:
                    TextStyle(color: Palette.greyFontColour, fontSize: 18.sp),
              )
            : const Icon(
                Icons.backspace_outlined,
                color: Palette.greyFontColour,
              ),
        onPressed: onPressed,
      ),
    );
  }
}
