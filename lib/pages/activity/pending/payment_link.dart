import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentLinkPage extends StatefulWidget {
  const PaymentLinkPage({Key key}) : super(key: key);

  @override
  _PaymentLinkPageState createState() => _PaymentLinkPageState();
}

class _PaymentLinkPageState extends State<PaymentLinkPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/payment_link.png"),
            SizedBox(height: 20.h,),
            Align(
              alignment: Alignment.center,
              child: Text("Link has been sent",
                style: TextStyle(color: Palette.blackColor,
                    fontFamily: kRaleway,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
