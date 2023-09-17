import 'package:get/get.dart';

//1st step create class
class CounterController extends GetxController {
//2nd step is create variable
  RxInt counter = 1.obs;

  //4th Step

  counterIncrement() {
    counter.value++;
  }
}
