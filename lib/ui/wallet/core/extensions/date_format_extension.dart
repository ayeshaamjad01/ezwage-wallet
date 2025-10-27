import 'package:intl/intl.dart';

extension DateFormatting on DateTime {
  String toDdMmYyyy() {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}
