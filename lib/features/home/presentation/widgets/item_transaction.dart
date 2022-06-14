import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class ItemTransaction extends StatelessWidget {
  const ItemTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: AppTheme.textStyle.f18TextPrimaryw700,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '01 Januari 2021',
                    style: AppTheme.textStyle.f14TextPrimaryW400,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '-Rp 150k',
                      style: AppTheme.textStyle.f18TextPrimaryw700,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Makanan',
                      style: AppTheme.textStyle.f14TextPrimaryW400,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
