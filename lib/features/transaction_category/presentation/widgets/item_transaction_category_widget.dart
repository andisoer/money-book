import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class ItemTransactionCategoryWidget extends StatelessWidget {
  final String name;
  final String type;
  const ItemTransactionCategoryWidget({
    required this.name,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.colors.baseColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: AppTheme.colors.baseColor.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: AppTheme.textStyle.f16TextPrimaryW700,
              ),
              Text(
                type,
                style: AppTheme.textStyle.f14TextPrimaryW600,
              )
            ],
          ),
        ],
      ),
    );
  }
}
