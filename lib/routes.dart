import 'package:flutter/material.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/features/home/presentation/page/home_page.dart';
import 'package:money_book/features/transaction/presentation/page/add_transaction/add_transaction_page.dart';
import 'package:money_book/features/wallet/presentation/pages/add_wallet/add_wallet_page.dart';
import 'package:money_book/features/wallet/presentation/pages/wallet_list/wallet_list_page.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteConstants.addTransaction:
        return MaterialPageRoute(builder: (_) => const AddTransactionPage());
      case RouteConstants.addWallet:
        return MaterialPageRoute(builder: (_) => const AddWalletPage());
      case RouteConstants.listWallet:
        return MaterialPageRoute(builder: (_) => const WalletListPage());
      default:
    }
    return null;
  }
}
