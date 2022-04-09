import 'package:flutter/material.dart';

class CustomSliceAppBar extends StatelessWidget {
  const CustomSliceAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    text: "🧑🏼‍🦱   ",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                    children: const <TextSpan>[
                  TextSpan(text: "hi "),
                  TextSpan(
                      text: "Nishit",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
            Icon(
              Icons.credit_score,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
