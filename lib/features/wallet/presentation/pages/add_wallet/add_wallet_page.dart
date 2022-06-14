import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';
import 'package:money_book/common/widget/custom_input_widget.dart';

class AddWalletPage extends StatelessWidget {
  const AddWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: CustomAppBarWidget(
        title: 'Tambah Dompet',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.check,
              color: AppTheme.colors.secondaryColor,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                SizedBox(height: 16),
                CustomInputWidget(
                    label: 'Nama Dompet', hintText: 'Bank Indonesia'),
                SizedBox(height: 16),
                CustomInputWidget(label: 'Jumlah Saldo', hintText: '1500000')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
