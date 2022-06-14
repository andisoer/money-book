import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat datang,',
                style: AppTheme.textStyle.f14TextPrimaryW400,
              ),
              Text(
                'Andi Surya',
                style: AppTheme.textStyle.f18TextPrimaryw700,
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppTheme.colors.secondaryColor,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
