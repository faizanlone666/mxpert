import 'package:get/get.dart';

class StatisticsController extends GetxController{
  static StatisticsController get find => Get.find();
  RxInt indexColor = 0.obs;

  getIndexController(int index){
    indexColor.value = index;
  }
}