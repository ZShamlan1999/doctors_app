import 'package:appointment/core/helpers/spacing.dart';
import 'package:appointment/features/home/ui/widgets/doctor_speciality_listview.dart';
import 'package:appointment/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:appointment/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:appointment/features/home/ui/widgets/home_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTabBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              const DoctorSpecialityListView(),
            ],
          ),
        ),
      ),
    );
  }
}
