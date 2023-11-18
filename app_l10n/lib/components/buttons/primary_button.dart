import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/spacing.dart';
import '../../themes/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.disabled = true,
    this.isLoading = false,
    this.title,
    this.onTap,
    this.bgColor,
    this.btnIcon,
    this.titleColor,
    this.height,
    this.btnTextStyle,
  });
  final String? title;
  final bool disabled;
  final VoidCallback? onTap;
  final bool isLoading;
  final Color? bgColor;
  final Color? titleColor;
  final Widget? btnIcon;
  final double? height;
  final TextStyle? btnTextStyle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: SizedBox(
        height: height ?? 50,
        width: double.infinity,
        child: Material(
          shadowColor: AppColors.bgSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: disabled
              ? AppColors.systemPrimary.withOpacity(.35)
              : bgColor ?? AppColors.systemPrimary,
          elevation: disabled ? 0 : .5,
          child: Align(
            alignment: Alignment.center,
            child: isLoading
                ? const SizedBox(
                    height: 22,
                    width: 22,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (btnIcon != null) ...[
                        btnIcon!,
                        HSpace.tiny,
                      ],
                      Text(
                        title ?? 'Primary Button',
                        style: btnTextStyle ??
                            AppTextStyle.buttonMedium
                                .copyWith(color: titleColor ?? Colors.white),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
