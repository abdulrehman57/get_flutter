import 'package:get/get.dart';

class TextController extends GetxController {
  RxString text = ''.obs;

  textTitle(String value) {
    text.value = value;
  }
}
