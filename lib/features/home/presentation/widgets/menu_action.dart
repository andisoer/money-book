import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/features/home/presentation/widgets/item_action.dart';

class MenuAction extends StatelessWidget {
  const MenuAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 24,
        ),
        ItemAction(
          title: 'Tambah Transaksi',
          icon: Icon(
            Icons.add,
            color: AppTheme.colors.black,
          ),
          color: AppTheme.colors.baseColor,
          onPressed: () {
            Navigator.pushNamed(context, RouteConstants.addTransaction);
          },
        ),
        const SizedBox(
          width: 16,
        ),
        ItemAction(
          title: 'Daftar Dompet',
          icon: Icon(
            Icons.account_balance_wallet,
            color: AppTheme.colors.black,
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppTheme.colors.baseColor,
              AppTheme.colors.secondaryColor,
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(context, RouteConstants.listWallet);
          },
        ),
        const SizedBox(
          width: 16,
        ),
        ItemAction(
          title: 'Menu Lainnya',
          icon: Icon(
            Icons.more_horiz,
            color: AppTheme.colors.black,
          ),
          color: AppTheme.colors.secondaryColor,
          onPressed: () {
            showOtherMenuBottomSheet(context);
          },
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }

  void showOtherMenuBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppTheme.colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext _context) {
        return Wrap(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: AppTheme.colors.white,
              ),
              padding: const EdgeInsets.all(16),
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      height: 6,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: AppTheme.colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        ItemAction(
                          title: 'Kategori Transaksi',
                          icon: Icon(
                            Icons.category,
                            color: AppTheme.colors.black,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              AppTheme.colors.baseColor,
                              AppTheme.colors.secondaryColor,
                            ],
                          ),
                        ),
                        ItemAction(
                          title: 'Laporan Transaksi',
                          icon: Icon(
                            Icons.payment,
                            color: AppTheme.colors.black,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              AppTheme.colors.baseColor,
                              AppTheme.colors.secondaryColor,
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
