import 'package:appointment/core/helpers/extensions.dart';
import 'package:appointment/core/helpers/spacing.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaceScreen extends StatelessWidget {
  const FaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'Face ID',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              'Add a Face ID to make your account more secure and easy to sign in.',
              style: TextStyles.font14GreyRegular,
            ),
            verticalSpace(90),
            Container(),
            verticalSpace(185),
            AppTextButton(
              buttonText: 'Submit',
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {
                context.pushNamed('');
              },
            ),
          ]),
        ),
      )),
    );
  }
}
