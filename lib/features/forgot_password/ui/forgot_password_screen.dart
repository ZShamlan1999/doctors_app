import 'package:appointment/core/helpers/spacing.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/core/widgets/app_text_button.dart';
import 'package:appointment/features/forgot_password/ui/widgets/forgot_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'At our app, we take the security of your information seriously.',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(32),
                const ForgotPasswordForm(),
                verticalSpace(500),
                AppTextButton(
                  buttonText: 'Reset Password',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
