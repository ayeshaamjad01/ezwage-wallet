import 'package:ezwage/helper/application_dictionary.dart';

getMonthValue(int value) {
  if (value < 1) {
    if (value == 0) {
      value = 12;
    } else {
      value = 12 + value;
    }
  }
  if (value > 12) {
    value = 1;
  }
  if (value == 1) {
    return translateText('January');
  } else if (value == 2) {
    return translateText('February');
  } else if (value == 3) {
    return translateText('March');
  } else if (value == 4) {
    return translateText('April');
  } else if (value == 5) {
    return translateText('May');
  } else if (value == 6) {
    return translateText('June');
  } else if (value == 7) {
    return translateText('July');
  } else if (value == 8) {
    return translateText('August');
  } else if (value == 9) {
    return translateText('September');
  } else if (value == 10) {
    return translateText('October');
  } else if (value == 11) {
    return translateText('November');
  } else if (value == 12) {
    return translateText('December');
  }
}
