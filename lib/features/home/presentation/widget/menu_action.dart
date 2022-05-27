import 'package:flutter/material.dart';
import 'package:money_book/features/home/presentation/widget/item_action.dart';

class MenuAction extends StatelessWidget {
  const MenuAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SizedBox(
          width: 24,
        ),
        ItemAction(
          title: 'Tambah Transaksi',
          icon: Icon(Icons.add),
        ),
        SizedBox(
          width: 16,
        ),
        ItemAction(
          title: 'Daftar Dompet',
          icon: Icon(Icons.account_balance_wallet),
        ),
        SizedBox(
          width: 16,
        ),
        ItemAction(
          title: 'Menu Lainnya',
          icon: Icon(Icons.more_horiz),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
