import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final bool isSparkActive;

  const CreditCard({
    Key? key,
    this.isSparkActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(249, 251, 253, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 2)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              if (isSparkActive)
                Column(
                  children: [
                    // *If Sparked
                    // comapy logo
                    // company name
                    // discount stuff

                    // time left
                  ],
                )

              // *Else
              else
                Row(
                  children: [
                    // Row of circle and No spark active
                  ],
                )
            ],
          ),
          Column(
            children: [
              // credit Card num
              // visa image?
            ],
          )
        ],
      ),
    );
  }
}
