import 'package:flutter/material.dart';

import '../components/buttons/primary_button.dart';
import '../components/forms/app_text_field.dart';
import '../themes/colors.dart';
import '../themes/spacing.dart';
import '../themes/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // this is new
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Welcome to l10n App',
                style: AppTextStyle.headingMedium.copyWith(
                  color: AppColors.contentPrimary,
                ),
              ),
              VSpace.tiny,
              Text(
                'Please provide a valid auth credential to login.',
                style: AppTextStyle.bodyMedium
                    .copyWith(color: AppColors.contentSecondary),
              ),
              VSpace.large,
              const AppTextField(
                title: 'Email Adress',
                keyboardType: TextInputType.emailAddress,
                errorMessage: 'Invalid email address',
              ),
              VSpace.medium,
              const AppTextField(
                  title: 'Password',
                  keyboardType: TextInputType.visiblePassword),
              VSpace.small,
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: AppTextStyle.labelMedium
                        .copyWith(color: AppColors.contentSecondary),
                  ),
                ),
              ),
              const Spacer(),
              PrimaryButton(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                title: 'Login',
              ),
              VSpace.large,
            ],
          ),
        ),
      )),
    );
  }
}
