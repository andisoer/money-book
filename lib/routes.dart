import 'package:flutter/material.dart';
import 'package:money_book/common/constants/route_constants.dart';
import 'package:money_book/features/home/presentation/page/home_page.dart';
import 'package:money_book/features/transaction/presentation/page/add_transaction/add_transaction.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteConstants.addTransaction:
        return MaterialPageRoute(builder: (_) => const AddTransactionPage());
      default:
    }
    return null;
  }
}
