import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/constants/data.dart';
import 'package:mxpert/src/constants/data_model_for_home_screen.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/bottom_navigation_bar.dart';

class HomeScreenController extends GetxController{
  static HomeScreenController get find => Get.find();
  RxInt indexColor = 0.obs;
  Rx<DateTime> date = DateTime.now().obs;
  final  itemName = TextEditingController();
  final  itemPrice = TextEditingController();
  final  itemQuantity = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  getPages(int index){
    indexColor.value = index;
  }
  getDate(DateTime dateTime){
    date.value = dateTime;
  }
  saveData(TextEditingController itemName,TextEditingController itemQuantity,TextEditingController itemPrice,String date){
    DataModelForHomeScreen dataModel = DataModelForHomeScreen(itemName: itemName.text, quantity: itemQuantity.text, price: itemPrice.text, logo: fGoogleLogoImage, date: date);
    addData(dataModel);
    print("values : ${dataModel.itemName} ${dataModel.quantity} ${dataModel.price} ${dataModel.date}");
    formKey.currentState?.reset();
    itemName.text = "";
    itemQuantity.text ="";
    itemPrice.text="";
    Get.offAll(const BottomNavigationBarWidget());


  }
}