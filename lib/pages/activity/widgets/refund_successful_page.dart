import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefundSuccessfulPage extends StatefulWidget {
  const RefundSuccessfulPage({Key key}) : super(key: key);

  @override
  _RefundSuccessfulPageState createState() => _RefundSuccessfulPageState();
}

class _RefundSuccessfulPageState extends State<RefundSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text("Refund Successful!",
                style: TextStyle(color: Palette.blackColor,
                  fontFamily: kRaleway,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 80.h,),
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Palette.redColor.withOpacity(0.7)
              ),
              child: Image.asset("assets/images/check.png"),
            )
          ],
        ),
      ),
    );
  }
}
