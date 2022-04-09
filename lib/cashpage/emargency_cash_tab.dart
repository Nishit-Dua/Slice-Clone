import 'package:flutter/material.dart';

class EmergencyCash extends StatelessWidget {
  const EmergencyCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // Text
          Text(
            "Choose a transfer method",
            style: TextStyle(fontSize: 18),
          ),

          // 3 * Methods of tranfering money
          SizedBox(height: 30),
          EmergencyCashTile(
            title: "UPI",
            subTitle: "tranfer money to nishitdua175@oksbi",
          ),
          SizedBox(height: 15),
          Divider(),
          SizedBox(height: 15),
          EmergencyCashTile(
            title: "IMPS",
            subTitle: "add your bank details to transfer money",
          ),
          SizedBox(height: 15),
          Divider(),
          SizedBox(height: 15),
          EmergencyCashTile(
            title: "Paytm",
            subTitle: "transfer money to a paytmm account",
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

class EmergencyCashTile extends StatelessWidget {
  final String title;
  final String subTitle;

  const EmergencyCashTile({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hi?");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                subTitle,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
