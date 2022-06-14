import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';
import 'package:money_book/common/widget/custom_floating_action_button_widget.dart';
import 'package:money_book/features/transaction_category/presentation/widgets/item_transaction_category_widget.dart';

class TransactionCategoryListPage extends StatelessWidget {
  const TransactionCategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      floatingActionButton: CustomFloatingActionButtonWidget(
        onPressed: () {
          Navigator.pushNamed(
              context, RouteConstants.addListTransactionCategory);
        },
      ),
      appBar: const CustomAppBarWidget(
        title: 'Kategori Transaksi',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ItemTransactionCategoryWidget(
                name: 'Gaji',
                type: 'Pemasukkan',
              ),
              ItemTransactionCategoryWidget(
                name: 'Makanan',
                type: 'Pengeluaran',
              )
            ],
          ),
        ),
      ),
    );
  }
}
