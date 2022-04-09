import 'package:flutter/material.dart';
import 'package:good_project/custom_tab_bar.dart';
import 'package:good_project/sparkpage/spark_tab.dart';
import 'package:good_project/sparkpage/top_offers.dart';

class SparkHome extends StatelessWidget {
  const SparkHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTabBar(
      children_: const [SparkTab(), TopOffers()],
      tabNames: const ["spark", "top offers"],
    );
  }
}
