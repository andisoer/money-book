import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';
import 'package:money_book/common/widget/custom_input_widget.dart';

class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: const CustomAppBarWidget(
        title: 'Tambah Transaksi',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 24),
                CustomInputWidget(
                  label: 'Nama Transaksi',
                  hintText: 'Cilok',
                ),
                SizedBox(height: 16),
                CustomInputWidget(
                  label: 'Nominal',
                  hintText: '5000',
                ),
                SizedBox(height: 16),
                CustomInputWidget(
                  label: 'Tipe Transaksi',
                  hintText: 'Pengeluaran',
                ),
                SizedBox(height: 16),
                CustomInputWidget(
                  label: 'Kategori',
                  hintText: 'Makanan',
                ),
                SizedBox(height: 16),
                CustomInputWidget(
                  label: 'Asal Dana',
                  hintText: 'Dompet Fisik',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
