import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

final dateFormat = DateFormat.yMd().add_Hms();

DateTime toDateTime(int timestamp) {
  return DateTime.fromMillisecondsSinceEpoch(
      (timestamp.isNaN ? 0 : timestamp) * 1000);
}

String fromNow(int timestamp) {
  // return dateFormat.format(toDateTime(timestamp));

  return Jiffy(toDateTime(timestamp)).fromNow();
}
