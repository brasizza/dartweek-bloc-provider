import 'package:intl/intl.dart';

extension FormatterExtensions on double {
  String get currencyPTBR {
    final currentyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: r'R$',
    );
    return currentyFormat.format(this);
  }
}
