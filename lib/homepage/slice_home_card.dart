import 'package:flutter/material.dart';

class SliceHomeCard extends StatelessWidget {
  final Widget child;

  const SliceHomeCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ]),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
