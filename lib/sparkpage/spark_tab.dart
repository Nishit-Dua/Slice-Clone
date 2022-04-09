import 'package:flutter/material.dart';
import 'package:good_project/sparkpage/credit_card.dart';
import 'package:good_project/sparkpage/spark_tile.dart';

class SparkTab extends StatefulWidget {
  const SparkTab({Key? key}) : super(key: key);

  @override
  State<SparkTab> createState() => _SparkTabState();
}

class _SparkTabState extends State<SparkTab> {
  static final List<CompanyDetails> _companies = [
    CompanyDetails(
      companyName: "Amazon",
      companyLogoPath: "assets/Company Logo/amazon-logo.jpg",
      offerDetails: "Get 10% off\nCashback",
      timeLeft: "1 day left",
      sparkColor: Colors.black,
    ),
    CompanyDetails(
      companyName: "Dominoes",
      companyLogoPath: "assets/Company Logo/dominoes.png",
      offerDetails: "Get 30% flat\nOff",
      timeLeft: "4 hours left",
      sparkColor: Colors.blue,
    ),
    CompanyDetails(
      companyName: "Myntra",
      companyLogoPath: "assets/Company Logo/myntra.png",
      offerDetails: "Get flat ₹200\nCashback",
      timeLeft: "1 day left",
      sparkColor: Colors.red,
    ),
    CompanyDetails(
      companyName: "Apple",
      companyLogoPath: "assets/Company Logo/apple.png",
      offerDetails: "Get ₹500\nflat off",
      timeLeft: "3 day left",
      sparkColor: Colors.black,
    ),
    CompanyDetails(
      companyName: "Indigo",
      companyLogoPath: "assets/Company Logo/indigo.png",
      offerDetails: "Get 5% off\nCashback",
      timeLeft: "2 day left",
      sparkColor: Colors.indigo,
    ),
  ]..sort((a, b) => a.timeLeft.compareTo(b.timeLeft));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Card
        CreditCard(),
        SizedBox(height: 30),

        // ListView Of Offers
        SizedBox(
          height: 200,
          // TODO make a custom scroll bar
          child: Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.bottom,
            isAlwaysShown: false,
            interactive: false,
            radius: Radius.circular(8),
            // trackVisibility: true,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return SparkOfferTile(
                  companyName: _companies[index].companyName,
                  companyLogoPath: _companies[index].companyLogoPath,
                  offerDetails: _companies[index].offerDetails,
                  timeLeft: _companies[index].timeLeft,
                  sparkColor: _companies[index].sparkColor,
                );
              },
            ),
          ),
        ),

        //Sized Box
        SizedBox(height: 100),
      ],
    );
  }
}
