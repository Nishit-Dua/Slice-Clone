import 'package:flutter/material.dart';

class NoCostEmi extends StatelessWidget {
  const NoCostEmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Box
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                contentPadding: EdgeInsets.fromLTRB(12, 26, 12, 20),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                labelText: 'Search For Merchants',
              ),
              cursorColor: Colors.grey,
            ),

            // Spacing
            SizedBox(
              height: 20,
            ),

            //recommenedd shit
            Text("recommended for you", style: TextStyle(fontSize: 16)),
            Container(
              height: 140,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            // pair of items

            // Popualr shit
          ],
        ),
      ),
    );
  }
}
