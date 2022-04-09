import 'package:flutter/material.dart';
import 'package:good_project/temp_screens.dart';

class SettingsHome extends StatelessWidget {
  const SettingsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
            TempBoi(),
          ],
        ),
      ),
    );
  }
}
