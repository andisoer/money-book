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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [SizedBox(height: 16), ItemWallet()],
          ),
        ),
      ),
    );
  }
}

class ItemWallet extends StatelessWidget {
  const ItemWallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dompet Fisik',
                style: AppTheme.textStyle.f16TextPrimaryW700,
              ),
              Text(
                'Rp 55.0000',
                style: AppTheme.textStyle.f14TextPrimaryW600,
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
