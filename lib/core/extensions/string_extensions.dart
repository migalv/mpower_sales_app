extension StringX on String {
  String get firstInCaps => '${this[0].toUpperCase()}${substring(1)}';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstOfEach =>
      split(" ").map((str) => str.firstInCaps).join(" ");
  String get firstLetterInCaps => this[0].toUpperCase();
}
