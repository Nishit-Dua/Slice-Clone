import 'package:flutter/material.dart';

class SettingsHome extends StatelessWidget {
  const SettingsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Thick boi with Image and balance
            SettingsTopBarThing(),
            // several List Tiles

            // version number
          ],
        ),
      ),
    );
  }
}

class SettingsTopBarThing extends StatelessWidget {
  const SettingsTopBarThing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.blueGrey.shade50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nishit Dua",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 30),
              Divider(
                color: Colors.red,
                thickness: 2,
                height: 10,
              ),
              // (Divider
              Text(
                "Current balance",
                style: TextStyle(color: Colors.grey.shade700),
              ),
              RichText(
                text: TextSpan(
                  style:
                      TextStyle(color: Colors.black54, fontFamily: "SliceFont"),
                  children: [
                    TextSpan(
                      text: "\u{20B9} 8,450",
                      style:
                          TextStyle(color: Colors.green.shade400, fontSize: 24),
                    ),
                    TextSpan(text: "/10,000"),
                  ],
                ),
              ),
              // Balance)
            ],
          ),

          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/pp.jpg",
              height: 120,
            ),
          )
        ],
      ),
    );
  }
}
