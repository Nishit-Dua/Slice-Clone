import 'package:flutter/material.dart';
import 'package:good_project/sparkpage/top_offer_card.dart';

class TopOffers extends StatelessWidget {
  const TopOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text("Shop from your favourite brands"),
        TopOfferCard(),
        TopOfferCard(),
        TopOfferCard(),
        TopOfferCard(),
        TopOfferCard(),
        TopOfferCard(),
        TopOfferCard(),
      ],
    );
  }
}
