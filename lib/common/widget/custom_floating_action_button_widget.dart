import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class CustomFloatingActionButtonWidget extends StatelessWidget {
  final Function() onPressed;
  const CustomFloatingActionButtonWidget({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppTheme.colors.secondaryColor,
      onPressed: onPressed,
      child: Icon(
        Icons.add,
        color: AppTheme.colors.white,
      ),
    );
  }
}
