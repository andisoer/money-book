import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';
import 'package:money_book/common/widget/custom_dropdown_widget.dart';
import 'package:money_book/common/widget/custom_input_widget.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final List<String> _transactionType = ['Pemasukkan', 'Pengeluaran'];
  final List<String> _transactionCategory = ['Makanan', 'Minuman', 'Kendaraan'];

  String _selectedTransactionType = 'Pemasukkan';
  String _selectedTransactionCategory = 'Makanan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: CustomAppBarWidget(
        title: 'Tambah Transaksi',
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
              children: [
                const SizedBox(height: 16),
                const CustomInputWidget(
                  label: 'Nama Transaksi',
                  hintText: 'Cilok',
                ),
                const SizedBox(height: 16),
                const CustomInputWidget(
                  label: 'Nominal',
                  hintText: '5000',
                ),
                const SizedBox(height: 16),
                CustomDropdownWidget(
                  dropdownList: _transactionType,
                  onChanged: (value) {
                    setState(() {
                      _selectedTransactionType = value;
                    });
                  },
                  selectedItem: _selectedTransactionType,
                  label: 'Tipe Transaksi',
                ),
                const SizedBox(height: 16),
                CustomDropdownWidget(
                  dropdownList: _transactionCategory,
                  onChanged: (value) {
                    setState(() {
                      _selectedTransactionCategory = value;
                    });
                  },
                  selectedItem: _selectedTransactionCategory,
                  label: 'Kategori Transaksi',
                ),
                const SizedBox(height: 16),
                const CustomInputWidget(
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
