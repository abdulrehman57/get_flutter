import 'package:flutter_get/models/days_model.dart';
import 'package:get/get.dart';

class FavController extends GetxController {
  RxList daysList = [day1, day2, day3, day4, day5, day6, day7].obs;

  //RxBool isFavourite = false.obs;

  getListData(List value) {
    daysList.value = value;
  }
}
