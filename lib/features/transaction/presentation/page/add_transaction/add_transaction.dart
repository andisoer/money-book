import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tambah Transaksi',
          style: AppTheme.textStyle.f16TextPrimaryW700,
        ),
        backgroundColor: AppTheme.colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.colors.black,
          ),
        ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 24),
                InputTransactionWidget(
                  label: 'Nama Transaksi',
                  hintText: 'Cilok',
                ),
                SizedBox(height: 16),
                InputTransactionWidget(
                  label: 'Nominal',
                  hintText: '5000',
                ),
                SizedBox(height: 16),
                InputTransactionWidget(
                  label: 'Tipe Transaksi',
                  hintText: 'Pengeluaran',
                ),
                SizedBox(height: 16),
                InputTransactionWidget(
                  label: 'Kategori',
                  hintText: 'Makanan',
                ),
                SizedBox(height: 16),
                InputTransactionWidget(
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

class InputTransactionWidget extends StatelessWidget {
  final String label;
  final String hintText;
  const InputTransactionWidget({
    required this.label,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTheme.textStyle.f14TextPrimaryW600,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.colors.secondaryColor,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.colors.baseColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
