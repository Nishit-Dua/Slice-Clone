import 'package:flutter/material.dart';

class CompanyDetails {
  final String companyName;
  final String companyLogoPath;
  final String offerDetails;
  final String timeLeft;
  final Color sparkColor;

  CompanyDetails({
    required this.companyName,
    required this.companyLogoPath,
    required this.offerDetails,
    required this.timeLeft,
    required this.sparkColor,
  });
}

class SparkOfferTile extends StatelessWidget {
  final String companyName;
  final String companyLogoPath;
  final String offerDetails;
  final String timeLeft;
  final Color sparkColor;

  const SparkOfferTile({
    Key? key,
    required this.companyName,
    required this.companyLogoPath,
    required this.offerDetails,
    required this.timeLeft,
    required this.sparkColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        showBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SparkModal();
          },
        );
      }),
      child: Container(
        width: 220,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(31, 179, 179, 179),
                blurRadius: 2,
                spreadRadius: 2)
          ],
        ),
        margin: EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              companyName,
              style: TextStyle(fontSize: 17),
            ),
            Text(
              offerDetails,
              style: TextStyle(color: sparkColor, fontSize: 20),
            ),
            SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: Colors.black38,
                    ),
                    SizedBox(width: 8),
                    Text(
                      timeLeft,
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
                Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(companyLogoPath),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SparkModal extends StatelessWidget {
  const SparkModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Modal BottomSheet'),
            ElevatedButton(
              child: const Text('Close BottomSheet'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
