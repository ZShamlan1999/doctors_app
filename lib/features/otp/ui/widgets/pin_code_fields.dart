import 'package:appointment/core/helpers/extensions.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinCodeFields extends StatelessWidget {
  // late String otpCode;
  const BuildPinCodeFields({super.key});
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.black,
      cursorHeight: 1,
      cursorWidth: 35.75,
      keyboardType: TextInputType.number,
      length: 4,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(16),
        fieldHeight: 80,
        fieldWidth: 75.75,
        borderWidth: 1,
        activeColor: ColorsManger.mainBlue,
        inactiveColor: ColorsManger.mainBlue,
        inactiveFillColor: Colors.white,
        activeFillColor: ColorsManger.lightGrey,
        selectedColor: ColorsManger.mainBlue,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (code) {
        // context.read<PhoneAuthCubit>().otpCode = code;
        print("Completed");
        Future.delayed(const Duration(seconds: 2));
        context.pushNamed(Routes.faceScreen);
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
