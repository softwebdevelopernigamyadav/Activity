import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0.1),
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
                fontFamily: kRaleway,),
              onTap: (index) {},
              tabs: const [
                Tab(text: "Successful"),
                Tab(text: "Pending"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.done),
              Icon(Icons.done),
            ],
          )),
    );
  }
}
