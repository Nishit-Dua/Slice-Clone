import 'package:flutter/material.dart';
import 'package:good_project/cashpage/emargency_cash_tab.dart';
import 'package:good_project/cashpage/no_cost_emi_tab.dart';
import 'package:good_project/custom_tab_bar.dart';

class CashPageHome extends StatelessWidget {
  const CashPageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTabBar(
      children_: const [NoCostEmi(), EmergencyCash()],
      tabNames: const ["no cost EMI", "emergency cash"],
    );
  }
}
