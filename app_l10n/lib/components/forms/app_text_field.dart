import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../themes/colors.dart';
import '../../themes/spacing.dart';
import '../../themes/styles.dart';
import '../../themes/theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    this.showCountryCode = false,
    this.controller,
    this.validator,
    this.onError = false,
    this.errorMessage,
    this.onSaved,
    this.hideTitle = false,
    this.title,
    this.suffixIcon,
    this.preffixIcon,
    this.showErrorBorderOnly = false,
    this.inputFormatters,
    this.minLines,
    this.keyboardType,
    this.showRemoveText = false,
    this.onRemove,
    this.initialValue,
    this.readOnly = false,
  });
  final String? hintText;
  final bool showCountryCode;
  final bool showErrorBorderOnly;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool onError;
  final String? errorMessage;
  final void Function(String?)? onSaved;
  final String? title;
  final Widget? suffixIcon;
  final bool hideTitle;
  final int? minLines;
  final Widget? preffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool showRemoveText;
  final VoidCallback? onRemove;
  final String? initialValue;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //field Title
        if (!hideTitle)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title ?? 'Title',
                  style: textTheme.labelSmall,
                ),
                if (showRemoveText)
                  InkWell(
                    onTap: onRemove,
                    child: Text(
                      'Remove',
                      style: AppTextStyle.buttonSmall.copyWith(
                        color: AppColors.systemNegative,
                      ),
                    ),
                  )
              ],
            ),
          ),
        //field
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                onSaved: onSaved,
                onChanged: onSaved,
                readOnly: readOnly,
                initialValue: initialValue,
                obscureText: keyboardType == TextInputType.visiblePassword,
                minLines: minLines,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
                maxLines: minLines != null ? minLines! + 3 : 1,
                decoration: InputDecoration(
                  hintText: hintText ?? 'Enter $title',
                  prefixIcon: preffixIcon == null
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(
                              left: 4, top: 12, bottom: 12),
                          child: preffixIcon,
                        ),
                  suffixIcon: showErrorBorderOnly
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(
                              left: 4, top: 12, bottom: 12),
                          child: suffixIcon,
                        ),
                  focusedBorder: onError ? AppThemes.errorInputBorder : null,
                  errorStyle: textTheme.bodySmall
                      ?.copyWith(color: AppColors.systemNegative),
                ),
              ),
            ),
          ],
        ),
        if (onError && !showErrorBorderOnly) ...[
          VSpace.veryTiny,
          Text(
            errorMessage ?? 'error message goes here',
            style:
                textTheme.bodySmall?.copyWith(color: AppColors.systemNegative),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ],
    );
  }
}
