import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/features/home/presentation/widget/item_action.dart';

class MenuAction extends StatelessWidget {
  const MenuAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          width: 24,
        ),
        ItemAction(
          title: 'Tambah Transaksi',
          icon: const Icon(Icons.add),
          color: AppTheme.colors.baseColor,
          onPressed: () {
            Navigator.pushNamed(context, RouteConstants.addTransaction);
          },
        ),
        const SizedBox(
          width: 16,
        ),
        ItemAction(
          title: 'Daftar Dompet',
          icon: const Icon(Icons.account_balance_wallet),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppTheme.colors.baseColor,
              AppTheme.colors.secondaryColor,
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        ItemAction(
          title: 'Menu Lainnya',
          icon: const Icon(Icons.more_horiz),
          color: AppTheme.colors.secondaryColor,
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
