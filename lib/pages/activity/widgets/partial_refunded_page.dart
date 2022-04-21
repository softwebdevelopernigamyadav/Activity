import 'package:activity_app/config/router/router.dart';
import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/pages/activity/activity_page/activity_page.dart';
import 'package:activity_app/pages/activity/widgets/refund_page.dart';
import 'package:activity_app/pages/activity/widgets/refunded_page.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartialRefundedPage extends StatefulWidget {
  const PartialRefundedPage({Key key}) : super(key: key);

  @override
  _PartialRefundedPageState createState() => _PartialRefundedPageState();
}

class _PartialRefundedPageState extends State<PartialRefundedPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              Navigate.to(const ActivityPage());
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Palette.blackColor,
            )),
      ),
      body:  ListView(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "#80138",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: kRaleway,
                        fontSize: 20.sp),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigate.to(const RefundPage());
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child:Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      padding:
                      EdgeInsets.symmetric(horizontal: 10.w,vertical: 2.h),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(30),
                          color: Palette.refundFontColour
                              .withOpacity(0.1)),
                      child: Text(
                        "Partial Refunded",
                        style: TextStyle(
                            color: Palette.refundFontColour,
                            fontFamily: kRaleway,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Date",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("31 Jan,2022 15:03",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour,
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Method",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Container(
                      margin: EdgeInsets.only(left: 100.w),
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.w, vertical: 1.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Palette.greyFontColour),
                      ),
                      child: Text("VISA",
                        style: TextStyle(
                            color: Palette.navyBlueColor.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                            fontFamily: kRaleway,
                            fontSize: 12.sp),),
                    ),
                    Text("Ending xxxx-8903",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour,
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Customer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("Name.Example@mail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour,
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 60.h,),
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
                            color: Palette.blackColor.withOpacity(1.0),
                            fontFamily: kRaleway,))
                    ])),
                    Text("£20.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.blackColor,
                            fontFamily: kRaleway,
                            fontSize: 16.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £2.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2x Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £5.98",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Divider(color: Palette.greyFontColour.withOpacity(0.2),
                  thickness: 2,),
                SizedBox(height: 10.h,),
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
                            color: Palette.blackColor.withOpacity(1.0),
                            fontFamily: kRaleway,))
                    ])),
                    Text("£20.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.blackColor,
                            fontFamily: kRaleway,
                            fontSize: 16.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £2.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2x Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £5.98",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Divider(color: Palette.greyFontColour.withOpacity(0.2),
                  thickness: 2,),
                SizedBox(height: 10.h,),
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
                            color: Palette.blackColor.withOpacity(1.0),
                            fontFamily: kRaleway,))
                    ])),
                    Text("£20.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.blackColor,
                            fontFamily: kRaleway,
                            fontSize: 16.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £2.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2x Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £5.98",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Divider(color: Palette.greyFontColour.withOpacity(0.2),
                  thickness: 2,),
                SizedBox(height: 10.h,),
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
                            color: Palette.blackColor.withOpacity(1.0),
                            fontFamily: kRaleway,))
                    ])),
                    Text("£20.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.blackColor,
                            fontFamily: kRaleway,
                            fontSize: 16.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £2.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modifier",
                      style: TextStyle(
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2x Modifier",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("+ £5.98",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Divider(
                  color: Palette.greyFontColour.withOpacity(0.2),
                  thickness: 2,),
                SizedBox(height: 60.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("£80.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tax",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("£9.24",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount",
                      style: TextStyle(
                          color: Palette.greyFontColour.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontFamily: kRaleway,
                          fontSize: 12.sp),),
                    Text("-£20.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.greyFontColour.withOpacity(0.6),
                            fontFamily: kRaleway,
                            fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.blackColor,
                          fontFamily: kRaleway,
                          fontSize: 15.sp),),
                    Text("£69.24",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.blackColor,
                            fontFamily: kRaleway,
                            fontSize: 15.sp))
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Refunded",style: TextStyle(
                        color: Palette.redColor.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontFamily: kRaleway,
                        fontSize: 18.sp
                    ),
                    ),
                    Text("-£69.24",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.redColor.withOpacity(0.7),
                            fontFamily: kRaleway,
                            fontSize: 18.sp))
                  ],
                ),
                SizedBox(height: 40.h,),
                Container(
                  width: 1.sw,
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  decoration: BoxDecoration(
                      color: Palette.redColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("E-mail Receipt", style: TextStyle(
                        color: Palette.whiteColor,
                        fontFamily: kRaleway,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(onPressed: (){
                    Navigate.to(const RefundPage());
                  },
                      child: Text("Refund",style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Palette.redColor,
                          fontFamily: kRaleway,
                          fontSize: 15.sp
                      ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
