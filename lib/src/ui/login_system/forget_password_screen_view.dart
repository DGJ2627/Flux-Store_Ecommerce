import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store/src/logic/login_system_cubit/forget_password_cubit/forget_password_screen_cubit.dart';
import 'package:flux_store/src/packages/helper/helper_function.dart';
import 'package:flux_store/src/packages/resources/text_field_style.dart';
import 'package:flux_store/src/packages/resources/text_field_validator.dart';
import 'package:flux_store/src/utils/constants/navigation_extension.dart';
import 'package:gap/gap.dart';

import '../../components/back_to_previous_screen_btn_widget.dart';
import '../../components/elevated_btn.dart';
import 'forget_password_verification_screen_view.dart';

class ForgetPasswordScreenView extends StatelessWidget {
  static String routeName = "/ForgetPasswordScreenView";

  const ForgetPasswordScreenView({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordScreenCubit(),
      child: const ForgetPasswordScreenView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackToPreviousScreenBtn(),
              const Gap(40),
              Text(
                "Forgot password?",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Gap(30),
              Text(
                "Enter email associated with your account\nand we’ll send and email with intructions to reset your password",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Gap(40),
              CustomTextFieldStyle(
                fieldController: emailController,
                fieldName: "Enter your email",
                autoFocus: false,
                obscureText: false,
                validator: (value) => InputValidator.textFieldValidator(FieldType.email, value),
              ),
              const Gap(40),
              Align(
                alignment: AlignmentDirectional.center,
                child: ElevatedBtn(
                  onTap: () => context.screenNavigateToNamed(ForgetPasswordVerificationScreenView.routeName),
                  height: 51,
                  width: 146,
                  backgroundColor: dark ? Colors.white : Colors.black,
                  radius: 130,
                  isBorderBtn: false,
                  text: "SEND OTP",
                  textColor: dark ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
