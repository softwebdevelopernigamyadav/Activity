import 'package:activity_app/config/router/router.dart';
import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/pages/activity/widgets/partial_refunded_page.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefundPage extends StatefulWidget {
  const RefundPage({Key key}) : super(key: key);

  @override
  _RefundPageState createState() => _RefundPageState();
}

class _RefundPageState extends State<RefundPage> {
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
            "Receipt",
            style: TextStyle(
                color: Palette.blackColour1,
                fontFamily: kRaleway,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigate.to(const PartialRefundedPage());
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
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(),
                SizedBox(
                  height: 300.h,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
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
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (_, index) {
                    return TextButton(
                      onPressed: (){},
                      child: Text("${12-index}"),
                    );
                  },
                  itemCount: 12,
                )
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
                          onPressed: () {},
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
}
