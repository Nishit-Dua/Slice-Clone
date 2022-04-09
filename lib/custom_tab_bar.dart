import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<Widget> children_;
  final List<String> tabNames;
  const CustomTabBar(
      {Key? key, required this.children_, required this.tabNames})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: children_.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: TabBar(
              padding: const EdgeInsets.only(top: 2),
              isScrollable: true,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              unselectedLabelColor: Colors.black26,

              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              labelPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
              // indicatorColor: Colors.amber,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              automaticIndicatorColorAdjustment: true,
              indicator: customTabIndicator(),
              tabs: <Tab>[
                ...tabNames
                    .sublist(0, children_.length)
                    .map((e) => Tab(text: e))
              ],
            ),
          ),
          body: TabBarView(
            children: children_,
          ),
        ),
      ),
    );
  }

  UnderlineTabIndicator customTabIndicator() {
    return const UnderlineTabIndicator(
      borderSide: BorderSide(
        color: Colors.deepPurple,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      insets: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    );
  }
}
