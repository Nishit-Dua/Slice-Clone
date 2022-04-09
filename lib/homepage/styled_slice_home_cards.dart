import 'package:flutter/material.dart';

class HomeCard2 extends StatelessWidget {
  const HomeCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "REWARDS",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: .5,
                    color: Colors.grey.shade600,
                  ),
                ),
                Text(
                  "₺ 13,420",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "All that you've earned from your slice\ncard",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: .5,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Image.asset(
              "assets/ukraine.png",
              height: MediaQuery.of(context).size.height * 0.27,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                "Let's Go",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard1 extends StatelessWidget {
  const HomeCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Spends Info
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "APRIL SPENDS",
                style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.grey.shade600,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "\u{20B9} 69",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          //Payments
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "👍🏼     Refund of \u{20B9} 5 carry forward",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "🍔     Paid \u{20B9} 74 to this shop",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          //Referal shit
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 248, 248),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(bottom: 15),
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "⭐",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Your Feedback Matters",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Rate Us",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
