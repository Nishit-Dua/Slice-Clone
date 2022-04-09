// ignore_for_file: unnecessary_this

extension StringExtension on String {
  String capitalizeFirstLetter() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }

  String capitalize() {
    return this
        .split(" ")
        .map((word) => word.capitalizeFirstLetter())
        .join(" ");
  }
}
