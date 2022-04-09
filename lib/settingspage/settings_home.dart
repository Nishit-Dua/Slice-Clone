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
            SizedBox(height: 30),
            CustomListTileWithDivider(
              title: "Invite Friends",
              subtitle: "Earn \u{20B9} 300",
              icon: Icons.keyboard_arrow_right_rounded,
            ),
            CustomListTileWithDivider(
              title: "Help & Support",
              subtitle: "General Queries, FAQs",
              icon: Icons.keyboard_arrow_right_rounded,
            ),
            CustomListTileWithDivider(
              title: "Pricing",
              subtitle: "Information About all charges",
              icon: Icons.keyboard_arrow_right_rounded,
            ),
            CustomListTileWithDivider(
              title: "Validity",
              subtitle: "Your account's validity information",
              icon: Icons.keyboard_arrow_right_rounded,
            ),
            CustomListTileWithDivider(
              title: "Financial Partners",
              subtitle: "Contact details",
              icon: Icons.keyboard_arrow_right_rounded,
            ),
            CustomListTileWithDivider(
              title: "Settings",
              subtitle: "Settings & preferences",
              icon: Icons.keyboard_arrow_right_rounded,
            ),
            CustomListTileWithDivider(
              title: "Log out",
              subtitle: "",
              icon: Icons.logout,
            ),
            // version number
          ],
        ),
      ),
    );
  }
}

class CustomListTileWithDivider extends StatelessWidget {
  final bool hasDivider;
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomListTileWithDivider({
    Key? key,
    required this.title,
    this.subtitle = "",
    required this.icon,
    this.hasDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 30, right: 40),
          title: Text(title),
          subtitle: subtitle.isNotEmpty
              ? Text(
                  subtitle,
                  style:
                      TextStyle(fontSize: 12, color: Colors.blueGrey.shade400),
                )
              : null,
          trailing: Icon(
            icon,
            color: Colors.black,
            size: 18,
          ),
        ),
        if (hasDivider)
          Divider(
            indent: 30,
            endIndent: 40,
          ),
      ],
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
