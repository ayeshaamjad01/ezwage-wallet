class CurrentDateTime {
  doubleDigitFormat(int number) {
    if (number < 10)
      return '0' + number.toString();
    else
      return number.toString();
  }

  getCurrentDateTime() {
    DateTime dateTime = DateTime.now();
    return dateTime.year.toString() +
        '-' +
        doubleDigitFormat(dateTime.month) +
        '-' +
        doubleDigitFormat(dateTime.day) +
        ' ' +
        doubleDigitFormat(dateTime.hour) +
        ':' +
        doubleDigitFormat(dateTime.minute) +
        ':' +
        doubleDigitFormat(dateTime.second);
  }
}
