import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_book/features/home/presentation/widget/item_transaction.dart';
import 'package:money_book/features/home/presentation/widget/menu_action.dart';
import 'package:money_book/features/home/presentation/widget/user_information.dart';
import 'package:money_book/features/home/presentation/widget/wallet_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const UserInformation(),
            const SizedBox(
              height: 24,
            ),
            const WalletCard(),
            const SizedBox(
              height: 32,
            ),
            const MenuAction(),
            const SizedBox(
              height: 32,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tranksaksi Terbaru',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const ItemTransaction(),
            const ItemTransaction(),
            const ItemTransaction(),
            const ItemTransaction(),
            const ItemTransaction(),
          ],
        ),
      )),
    );
  }
}
