import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';
import 'package:money_book/features/wallet/presentation/pages/widgets/item_wallet_widget.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 4),
              ItemWallet(),
              ItemWallet(),
            ],
          ),
        ),
      ),
    );
  }
}
