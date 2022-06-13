import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';

class WalletListPage extends StatelessWidget {
  const WalletListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: const CustomAppBarWidget(title: 'Daftar Dompet'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.colors.secondaryColor,
        onPressed: () {
          Navigator.pushNamed(context, RouteConstants.addWallet);
        },
        child: Icon(
          Icons.add,
          color: AppTheme.colors.white,
        ),
      ),
    );
  }
}
