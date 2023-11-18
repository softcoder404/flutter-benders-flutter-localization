import 'package:app_l10n/bloc/local/locale_cubit.dart';
import 'package:app_l10n/bloc/local/supported_locale.dart';
import 'package:app_l10n/l10n/app_l10n_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/buttons/primary_button.dart';
import '../components/forms/app_text_field.dart';
import '../themes/colors.dart';
import '../themes/spacing.dart';
import '../themes/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Appl10nLocalizations.of(context);

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
                l10n.loginWelcomeTitle,
                style: AppTextStyle.headingMedium.copyWith(
                  color: AppColors.contentPrimary,
                ),
              ),
              VSpace.tiny,
              Text(
                l10n.loginWelcomeSubTitle,
                style: AppTextStyle.bodyMedium
                    .copyWith(color: AppColors.contentSecondary),
              ),
              VSpace.large,
              AppTextField(
                title: l10n.loginEmailTitle,
                hintText: l10n.loginEmailHint,
                keyboardType: TextInputType.emailAddress,
              ),
              VSpace.medium,
              AppTextField(
                  title: l10n.loginPasswordTitle,
                  hintText: l10n.loginPasswordHint,
                  keyboardType: TextInputType.visiblePassword),
              VSpace.small,
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    l10n.loginForgotPasswordTitle,
                    style: AppTextStyle.labelMedium
                        .copyWith(color: AppColors.contentSecondary),
                  ),
                ),
              ),
              const Spacer(),
              PrimaryButton(
                disabled: false,
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                title: l10n.loginButtonTitle,
              ),
              VSpace.massive,
              Text(
                l10n.loginChangeLangTitle,
                style: AppTextStyle.labelMedium,
              ),
              VSpace.small,
              VSpace.small,
              BlocBuilder<LocaleCubit, LocaleState>(
                //rebuild only when appLocale value changes
                buildWhen: (previous, current) =>
                    previous.appLocale != current.appLocale,
                builder: (context, state) {
                  return Column(
                    children: supportedLocale
                        .map(
                          (appLocale) => Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: CustomCheckBox(
                              label: appLocale.name,
                              checked:
                                  state.appLocale.locale == appLocale.locale,
                              onTap: () => context
                                  .read<LocaleCubit>()
                                  .changeAppLocale(appLocale),
                            ),
                          ),
                        )
                        .toList(),
                  );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    this.label,
    this.checked = false,
    this.onTap,
  });
  final String? label;
  final bool checked;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            label ?? 'Title',
            style: AppTextStyle.bodySmall,
          ),
          HSpace.tiny,
          if (checked)
            const Icon(
              Icons.check_box,
              size: 20,
              color: AppColors.systemPositive,
            )
        ],
      ),
    );
  }
}
