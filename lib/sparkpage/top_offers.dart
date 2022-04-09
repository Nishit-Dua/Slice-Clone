import 'package:flutter/material.dart';
import 'package:good_project/sparkpage/top_offer_card.dart';

class TopOffers extends StatelessWidget {
  const TopOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shop from your favourite brands",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                TopOfferCard(),
                TopOfferCard(),
                TopOfferCard(),
                TopOfferCard(),
                TopOfferCard(),
                TopOfferCard(),
                TopOfferCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
