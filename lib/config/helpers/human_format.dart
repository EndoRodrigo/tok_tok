import 'package:intl/intl.dart';
class HumanFormat {
  static String humanaRableNumber(double number){
    final formatedNumber = NumberFormat.compactCurrency(
      decimalDigits: 1,
      symbol: '',
    ).format(number);
    return formatedNumber;
  }

}