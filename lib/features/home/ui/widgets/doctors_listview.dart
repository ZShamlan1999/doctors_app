import 'package:appointment/core/helpers/spacing.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    'assets/images/Doctors.png',
                    width: 110.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(5),
                    Text(
                      'Degree | 2134354',
                      style: TextStyles.font12GreyMedium,
                    ),
                    verticalSpace(5),
                    Text(
                      'Email@gmail.com',
                      style: TextStyles.font12GreyMedium,
                    ),
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
