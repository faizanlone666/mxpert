import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  static HomeScreenController get find => Get.find();
  RxInt indexColor = 0.obs;

  getPages(int index){
    indexColor.value = index;
  }
}