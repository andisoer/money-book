import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class CustomInputWidget extends StatelessWidget {
  final String label;
  final String hintText;
  const CustomInputWidget({
    required this.label,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTheme.textStyle.f14TextPrimaryW600,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.colors.secondaryColor,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.colors.baseColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
