import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/widget/custom_appbar_widget.dart';
import 'package:money_book/common/widget/custom_dropdown_widget.dart';
import 'package:money_book/common/widget/custom_input_widget.dart';

class AddTransactionCategoryListPage extends StatefulWidget {
  const AddTransactionCategoryListPage({Key? key}) : super(key: key);

  @override
  State<AddTransactionCategoryListPage> createState() =>
      _AddTransactionCategoryListPageState();
}

class _AddTransactionCategoryListPageState
    extends State<AddTransactionCategoryListPage> {
  List<String> categoryType = ['Pemasukkan', 'Pengeluaran'];
  String _selectedCategoryType = 'Pemasukkan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: CustomAppBarWidget(
        title: 'Tambah Kategori Transaksi',
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
              children: [
                const SizedBox(height: 16),
                const CustomInputWidget(
                  label: 'Nama Kategori',
                  hintText: 'Makanan',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomDropdownWidget(
                  dropdownList: categoryType,
                  onChanged: (value) {
                    setState(() {
                      _selectedCategoryType = value;
                    });
                  },
                  selectedItem: _selectedCategoryType,
                  label: 'Tipe Kategori',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
