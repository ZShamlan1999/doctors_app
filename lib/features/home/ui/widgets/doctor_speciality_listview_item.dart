import 'package:appointment/features/home/data/moduls/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorSpecialityListViewItem(
      {super.key, this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManger.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/Iamge.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(specializationsData!.name ?? 'Specialization',
              style: TextStyles.font12DarkBlueRegular),
        ],
      ),
    );
  }
}
