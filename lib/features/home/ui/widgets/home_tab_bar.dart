import 'package:appointment/core/theming/colors.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you today?',
              style: TextStyles.font13DarkBlueRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: ColorsManger.moreLighterGray,
          child: SvgPicture.asset('assets/svgs/notification.svg'),
        )
      ],
    );
  }
}
