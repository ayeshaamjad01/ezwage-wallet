import 'package:intl/intl.dart';

extension TransactionDateTimeExt on String? {
  Map<String, String> toDateAndTime() {
    DateTime now = DateTime.now();
    String formattedDateTime = DateFormat('yyyy/MM/dd HH:mm:ss').format(now);

    String transactionDateTime = this ?? formattedDateTime;

    List<String> parts = transactionDateTime.split(" ");
    return {
      "date": parts[0],
      "time": parts[1],
    };
  }
}
