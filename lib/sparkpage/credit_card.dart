import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final bool isSparkActive;

  const CreditCard({
    Key? key,
    this.isSparkActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(249, 251, 253, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 2)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Column(
          //   children: [
          if (isSparkActive)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // *If Sparked
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // comapny logo
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/Company Logo/apple.png")),
                    // company name
                    SizedBox(height: 14),
                    Text(
                      "Apple",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    // discount stuff
                    SizedBox(height: 14),
                    Text(
                      "Get 10% off Cashback",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // time left
                Row(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(
                      width: 10,
                    ),
                    Text("3 days left")
                  ],
                )
              ],
            )

          // *Else
          else
            Row(
              children: [
                DottedBorder(
                  color: Colors.blueGrey.shade400,
                  strokeCap: StrokeCap.round,
                  dashPattern: [2, 4],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(1200),
                  padding: EdgeInsets.all(6),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    // color: Colors.amber,
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  "No spark\nactive",
                  style: TextStyle(color: Colors.blueGrey.shade400),
                )
                // Row of circle and No spark active
              ],
            )
          //   ],
          // ),
          ,
          _CardNumAndVisaImage()
        ],
      ),
    );
  }
}

class _CardNumAndVisaImage extends StatelessWidget {
  const _CardNumAndVisaImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // credit Card num
          Column(
            children: [
              Text(
                "* * * * |",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  color: Colors.blueGrey.shade500,
                ),
              ),
              Text(
                "| * * * *",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  color: Colors.blueGrey.shade500,
                ),
              ),
              Text(
                "* * * * |",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  color: Colors.blueGrey.shade500,
                ),
              ),
              Text(
                "| 4 0 2 0",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey.shade500,
                ),
              ),
              // visa image?
            ],
          ),
          Image.asset(
            "assets/Company Logo/visa.png",
            width: 90,
            color: Colors.blueGrey.shade600,
          ),
        ],
      ),
    );
  }
}
