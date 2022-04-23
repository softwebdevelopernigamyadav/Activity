import 'package:activity_app/config/router/router.dart';
import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/pages/activity/filter_page/filter_page.dart';
import 'package:activity_app/pages/activity/pending/cancel_receipt_page.dart';
import 'package:activity_app/pages/activity/pending/pending.dart';
import 'package:activity_app/pages/activity/widgets/partial_refunded_page.dart';
import 'package:activity_app/pages/activity/widgets/refunded_page.dart';
import 'package:activity_app/pages/activity/widgets/successful_page.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int index = 0;
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Activity",
              style: TextStyle(
                  color: Palette.blackColour1,
                  fontFamily: kRaleway,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
            leading: Image.asset("assets/images/menu.png"),
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
                Tab(text: "Successful"),
                Tab(text: "Pending"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              /*
              * Tab 1
              * */
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 50.h,
                    // margin: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Material(
                      color: Palette.whiteColor,
                      child: Row(
                        children: <Widget>[
                          if (_isVisible)
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                height: 30.h,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h),
                                    prefixIcon: const Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        fontFamily: kRaleway,
                                        color: Palette.greyFontColour,
                                        fontSize: 15.sp),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                        borderSide: BorderSide.none),
                                    fillColor:
                                        Palette.greyFontColour.withOpacity(0.1),
                                    filled: true,
                                  ),
                                ),
                              ),
                            )
                          else
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                                child: Image.asset(
                                  "assets/images/search_vector.png",
                                  height: 50.h,
                                  width: 50.w,
                                )),
                          VerticalDivider(
                            color: Palette.greyFontColour.withOpacity(0.6),
                            thickness: 0.6,
                            endIndent: 0,
                            width: 0,
                          ),
                          if (_isVisible)
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                    // Navigate.to(const FilterPage());
                                  });
                                },
                                child: Image.asset(
                                  "assets/images/filter.png",
                                  height: 50.h,
                                  width: 50.w,
                                ))
                          else
                            Expanded(
                              child: ListTile(
                                onTap: () => Navigate.to(const FilterPage()),
                                leading: Image.asset("assets/images/filter.png"),
                                trailing: const Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: Palette.blackColor,
                                ),
                                title: Text(
                                  "Filter",
                                  style: TextStyle(
                                    fontFamily: kRaleway,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.blackColor.withOpacity(0.9),
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                      children:[
                        SizedBox(width: 10.h),
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(bottom: 5.h),
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Chip(
                            backgroundColor: Palette.redColor.withOpacity(0.1),
                            label:  Text("Cash",style: TextStyle(color:Palette.datePickerRangeColor.withOpacity(0.9)),),
                            onDeleted: (){},
                            deleteIcon:  Icon(Icons.cancel,color:Palette.datePickerRangeColor.withOpacity(0.8)),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(bottom: 5.h),
                          child: Chip(
                            backgroundColor: Palette.redColor.withOpacity(0.1),
                            label:  Text("Card",style: TextStyle(color:Palette.datePickerRangeColor.withOpacity(0.9)),),
                            onDeleted: (){},
                            deleteIcon:  Icon(Icons.cancel,color:Palette.datePickerRangeColor.withOpacity(0.8)),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(bottom: 5.h),
                          child: Chip(
                            backgroundColor: Palette.redColor.withOpacity(0.1),
                            label:  Text("12/12/2021 to 01/01/2020",style: TextStyle(color:Palette.datePickerRangeColor.withOpacity(0.9)),),
                            onDeleted: (){},
                            deleteIcon:  Icon(Icons.cancel,color:Palette.datePickerRangeColor.withOpacity(0.8)),
                          ),
                        ),
                      ]
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      "£891.30",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                               InkWell(
                                 onTap: (){
                                   Navigate.to(const SuccessfulPage());
                                 },
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(10),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/email.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "E-mail Link",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         GestureDetector(
                                           onTap: () {
                                             Navigate.to(const SuccessfulPage());
                                           },
                                           child: Container(
                                             padding: EdgeInsets.symmetric(
                                                 horizontal: 5.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.successfulFontColour
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Successful",
                                               style: TextStyle(
                                                   color:
                                                   Palette.successfulFontColour,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap: (){
                                    Navigate.to(const SuccessfulPage());
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(7),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/Cash.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "Cash",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigate.to(const SuccessfulPage());
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  color: Palette.successfulFontColour
                                                      .withOpacity(0.1)),
                                              child: Text(
                                                "Successful",
                                                style: TextStyle(
                                                    color:
                                                    Palette.successfulFontColour,
                                                    fontFamily: kRaleway,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),
                               InkWell(
                                 onTap:(){
                                   Navigate.to(const SuccessfulPage());
                                 },
                                child:Column(
                                  children:[
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.h,
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey.shade200,
                                            ),
                                            child: Image.asset(
                                                "assets/images/sms.png"),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            "#80138",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: kRaleway,
                                                fontSize: 12.sp),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "£89.00",
                                            style: TextStyle(
                                                fontFamily: kRaleway,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 40.w),
                                            child: Text.rich(TextSpan(children: [
                                              TextSpan(
                                                text: "Sms Link ",
                                                style: TextStyle(
                                                    color: Palette.greyFontColour,
                                                    fontFamily: kRaleway,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.sp),
                                              ),
                                              const TextSpan(
                                                  text: "  12:03",
                                                  style: TextStyle(
                                                    color: Palette.greyFontColour,
                                                    fontFamily: kRaleway,
                                                  ))
                                            ]))),
                                        const Spacer(),
                                        InkWell(
                                          onTap: () {
                                            Navigate.to(const SuccessfulPage());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                color: Palette.successfulFontColour
                                                    .withOpacity(0.1)),
                                            child: Text(
                                              "Successful",
                                              style: TextStyle(
                                                  color:
                                                  Palette.successfulFontColour,
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                                )
                               ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap:(){
                                    Navigate.to(const RefundedPage());
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/card.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "Card",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigate.to(const RefundedPage());
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  color: Palette.refundFontColour
                                                      .withOpacity(0.1)),
                                              child: Text(
                                                "Refunded",
                                                style: TextStyle(
                                                    color: Palette.refundFontColour,
                                                    fontFamily: kRaleway,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      "£891.30",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                               InkWell(
                                 onTap: (){
                                   Navigate.to(const PartialRefundedPage());
                                 },
                                 child:Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(10),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/email.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "E-mail Link",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         GestureDetector(
                                           onTap: (){
                                             Navigate.to(const PartialRefundedPage());
                                           },
                                           child: Container(
                                             padding:
                                             EdgeInsets.symmetric(horizontal: 5.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.refundFontColour
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Partial refunded",
                                               style: TextStyle(
                                                   color: Palette.refundFontColour,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 )
                               ),
                                SizedBox(height: 20.h),
                               InkWell(
                                 onTap:(){
                                   Navigate.to(const SuccessfulPage());
                                 },
                                 child:Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(7),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/Cash.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "Cash",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         GestureDetector(
                                           onTap: (){
                                             Navigate.to(const SuccessfulPage());
                                           },
                                           child: Container(
                                             padding:
                                             EdgeInsets.symmetric(horizontal: 5.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.successfulFontColour
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Successful",
                                               style: TextStyle(
                                                   color: Palette.successfulFontColour,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 )
                               ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap:(){
                                    Navigate.to(const SuccessfulPage());
                                  },
                                  child: Column(
                                    children:[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/sms.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "Sms Link ",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: (){
                                              Navigate.to(const SuccessfulPage());
                                            },
                                            child: Container(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5.w),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  color: Palette.successfulFontColour
                                                      .withOpacity(0.1)),
                                              child: Text(
                                                "Successful",
                                                style: TextStyle(
                                                    color: Palette.successfulFontColour,
                                                    fontFamily: kRaleway,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap:(){
                                    Navigate.to(const RefundedPage());
                                  },
                                  child:Column(
                                    children:[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/card.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "Card",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                color: Palette.refundFontColour
                                                    .withOpacity(0.1)),
                                            child: Text(
                                              "Refunded",
                                              style: TextStyle(
                                                  color: Palette.refundFontColour,
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              /*
              * Tab Bar 2 Coding
              * */

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    height: 35.h,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontFamily: kRaleway,
                            color: Palette.greyFontColour,
                            fontSize: 15.sp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none),
                        fillColor: Palette.greyFontColour.withOpacity(0.1),
                        filled: true,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      "£891.30",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                InkWell(
                                  onTap:(){
                                    Navigate.to(const PendingPage());
                                  },
                                  child:Column(
                                    children:[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/email.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "E-mail Link",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigate.to(const PendingPage());
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  color: Palette.yellowColor
                                                      .withOpacity(0.1)),
                                              child: Text(
                                                "Pending",
                                                style: TextStyle(
                                                    color: Palette.yellowColor,
                                                    fontFamily: kRaleway,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  )
                                ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap:(){
                                    Navigate.to(const CancelReceiptPage());
                                  },
                                  child:Column(
                                    children:[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(7),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/Cash.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "Cash",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                color: Palette.greyFontColour
                                                    .withOpacity(0.1)),
                                            child: Text(
                                              "Canceled",
                                              style: TextStyle(
                                                  color: Palette.greyFontColour,
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  )
                                ),
                                SizedBox(height: 20.h),
                                InkWell(
                                  onTap:(){
                                    Navigate.to(const PendingPage());
                                  },
                                  child:Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 5.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/sms.png"),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "#80138",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: kRaleway,
                                                  fontSize: 12.sp),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "£89.00",
                                              style: TextStyle(
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(left: 40.w),
                                              child: Text.rich(TextSpan(children: [
                                                TextSpan(
                                                  text: "Sms Link ",
                                                  style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 11.sp),
                                                ),
                                                const TextSpan(
                                                    text: "  12:03",
                                                    style: TextStyle(
                                                      color: Palette.greyFontColour,
                                                      fontFamily: kRaleway,
                                                    ))
                                              ]))),
                                          const Spacer(),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                color: Palette.orangeColor
                                                    .withOpacity(0.1)),
                                            child: Text(
                                              "Resent",
                                              style: TextStyle(
                                                  color: Palette.orangeColor,
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ),
                                SizedBox(height: 20.h),
                                InkWell(
                                 onTap:(){
                                   Navigate.to(const PendingPage());
                                 },
                                 child:Column(
                                   children:[
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(10),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/card.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "Card",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         GestureDetector(
                                           onTap: () {
                                             Navigate.to(const PendingPage());
                                           },
                                           child: Container(
                                             padding: EdgeInsets.symmetric(
                                                 horizontal: 10.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.yellowColor
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Pending",
                                               style: TextStyle(
                                                   color: Palette.yellowColor,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ]
                                 )
                               ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      "£891.30",
                                      style: TextStyle(
                                          fontFamily: kRaleway,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.greyFontColour
                                              .withOpacity(0.8),
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                InkWell(
                              onTap:(){
                                Navigate.to(const PendingPage());
                              },
                                child:Column(
                                  children:[
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.h,
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey.shade200,
                                            ),
                                            child: Image.asset(
                                                "assets/images/email.png"),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            "#80138",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: kRaleway,
                                                fontSize: 12.sp),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "£89.00",
                                            style: TextStyle(
                                                fontFamily: kRaleway,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 40.w),
                                            child: Text.rich(TextSpan(children: [
                                              TextSpan(
                                                text: "E-mail Link",
                                                style: TextStyle(
                                                    color: Palette.greyFontColour,
                                                    fontFamily: kRaleway,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.sp),
                                              ),
                                              const TextSpan(
                                                  text: "  12:03",
                                                  style: TextStyle(
                                                    color: Palette.greyFontColour,
                                                    fontFamily: kRaleway,
                                                  ))
                                            ]))),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () {
                                            Navigate.to(const PendingPage());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                color: Palette.yellowColor
                                                    .withOpacity(0.1)),
                                            child: Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Palette.yellowColor,
                                                  fontFamily: kRaleway,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                                )
                              ),
                                SizedBox(height: 20.h),
                               InkWell(
                                   onTap:(){
                                     Navigate.to(const CancelReceiptPage());
                                   },
                                 child:Column(
                                   children:[
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(7),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/Cash.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "Cash",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         GestureDetector(
                                           onTap: () {
                                             Navigate.to(const CancelReceiptPage());
                                           },
                                           child: Container(
                                             padding: EdgeInsets.symmetric(
                                                 horizontal: 10.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.greyFontColour
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Canceled",
                                               style: TextStyle(
                                                   color: Palette.greyFontColour,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ]
                                 )
                               ),
                                SizedBox(height: 20.h),
                               InkWell(
                                 onTap:(){
                                   Navigate.to(const PendingPage());
                                 },
                                 child:Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(10),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/sms.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "Sms Link ",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         InkWell(
                                           onTap: () {
                                             Navigate.to(const SuccessfulPage());
                                           },
                                           child: Container(
                                             padding: EdgeInsets.symmetric(
                                                 horizontal: 5.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.orangeColor
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Resent",
                                               style: TextStyle(
                                                   color: Palette.orangeColor,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 )
                               ),
                                SizedBox(height: 20.h),
                               InkWell(
                                   onTap:(){
                                 Navigate.to(const PendingPage());
                               },
                                 child:Column(
                                   children:[
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: 5.h,
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             padding: const EdgeInsets.all(10),
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey.shade200,
                                             ),
                                             child: Image.asset(
                                                 "assets/images/card.png"),
                                           ),
                                           SizedBox(
                                             width: 5.w,
                                           ),
                                           Text(
                                             "#80138",
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: kRaleway,
                                                 fontSize: 12.sp),
                                           ),
                                           const Spacer(),
                                           Text(
                                             "£89.00",
                                             style: TextStyle(
                                                 fontFamily: kRaleway,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 12.sp),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                             padding: EdgeInsets.only(left: 40.w),
                                             child: Text.rich(TextSpan(children: [
                                               TextSpan(
                                                 text: "Card",
                                                 style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 11.sp),
                                               ),
                                               const TextSpan(
                                                   text: "  12:03",
                                                   style: TextStyle(
                                                     color: Palette.greyFontColour,
                                                     fontFamily: kRaleway,
                                                   ))
                                             ]))),
                                         const Spacer(),
                                         GestureDetector(
                                           onTap: () {
                                             Navigate.to( const PendingPage());
                                           },
                                           child: Container(
                                             padding: EdgeInsets.symmetric(
                                                 horizontal: 10.w),
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(30),
                                                 color: Palette.yellowColor
                                                     .withOpacity(0.1)),
                                             child: Text(
                                               "Pending",
                                               style: TextStyle(
                                                   color: Palette.yellowColor,
                                                   fontFamily: kRaleway,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 12.sp),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ]
                                 )
                               ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
