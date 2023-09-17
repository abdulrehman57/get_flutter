import 'package:get/get.dart';

class Days extends GetConnect {
  Days({this.dayName, this.isFav = false});
  String? dayName;
  bool isFav;
}

//data
final day1 = Days(dayName: 'Monday');
final day2 = Days(dayName: 'Tuesday');
final day3 = Days(dayName: 'Wednesday');
final day4 = Days(dayName: 'Thursday');
final day5 = Days(dayName: 'Friday');
final day6 = Days(dayName: 'Saturday');
final day7 = Days(dayName: 'SUnday');

//List
// final List daysList = [day1, day2, day3, day4, day5, day6, day7];
