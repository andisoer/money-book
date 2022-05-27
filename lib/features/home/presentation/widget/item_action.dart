import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class ItemAction extends StatelessWidget {
  final String title;
  final Widget icon;
  final Color? color;
  final Gradient? gradient;
  const ItemAction({
    required this.title,
    required this.icon,
    this.color,
    this.gradient,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: gradient,
            color: color ?? Colors.grey,
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: () {}, icon: icon),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: AppTheme.textStyle.f14TextPrimaryW600,
        ),
      ],
    );
  }
}
