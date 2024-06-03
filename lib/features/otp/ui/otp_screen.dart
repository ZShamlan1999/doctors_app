import 'package:appointment/core/helpers/extensions.dart';
import 'package:appointment/core/helpers/spacing.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/core/widgets/app_text_button.dart';
import 'package:appointment/features/otp/ui/widgets/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'OTP Verification',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              'Add a PIN number to make your account more secure and easy to sign in.',
              style: TextStyles.font14GreyRegular,
            ),
            verticalSpace(64),
            const BuildPinCodeFields(),
            verticalSpace(371),
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
