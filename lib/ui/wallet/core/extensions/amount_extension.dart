extension AmountExtensions on String {
  String toPaisas() {
    double pkr = double.tryParse(this) ?? 0.0;
    return (pkr * 100).round().toString();
  }
}