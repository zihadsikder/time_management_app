import 'package:flutter/material.dart';
import 'package:softbd_task/app/core/config/app_colors.dart';

import '../../../../core/config/app_text_style.dart';

class TestFieldWidget extends StatelessWidget {
  const TestFieldWidget({
    super.key,
    required this.hintText,
    required this.headTitle,
    required this.title,
    required this.icon,
    required this.suffixIcon,
    required this.onTapSuffix,
    required this.maxLines,
    this.maxLength,
  });

  final String hintText;
  final String headTitle;
  final String title;
  final IconData? icon;
  final IconData? suffixIcon;
  final VoidCallback onTapSuffix;
  final int? maxLines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headTitle,
              style: AppTextStyles.headLineStyle(),
            ),
            Text(
              title,
            ),
          ],
        ),
        TextFormField(
          maxLength: maxLength,
          maxLines: maxLines,
          decoration: InputDecoration(
            fillColor: Colors.red,
            focusColor: Colors.red,

            //hintText: hintText,
            label: Row(
              children: [
                Icon(icon),
                const SizedBox(width: 8),
                Text(
                  hintText,
                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
            suffixIcon: IconButton(
              onPressed: onTapSuffix,
              icon: Icon(
                suffixIcon,
                color: AppColors.hintTextColor,
              ),
            ),
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return 'পূরণ করুন';
            }
            return null;
          },
        ),
      ],
    );
  }
}