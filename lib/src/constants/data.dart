import 'package:mxpert/src/constants/data_model_for_home_screen.dart';
import 'package:mxpert/src/constants/image_strings.dart';

List<DataModelForHomeScreen> listData = [
  DataModelForHomeScreen(
      itemName: "xyz",
      quantity: "21",
      price: "2500",
      date: "05/11/2023",
      logo: fGoogleLogoImage),
  DataModelForHomeScreen(
      itemName: "abc",
      quantity: "21",
      price: "2500",
      date: "05/11/2023",
      logo: fGoogleLogoImage),
  DataModelForHomeScreen(
      itemName: "pqr",
      quantity: "21",
      price: "2500",
      date: "05/11/2023",
      logo: fGoogleLogoImage),
  DataModelForHomeScreen(
      itemName: "lmn",
      quantity: "21",
      price: "2500",
      date: "05/11/2023",
      logo: fGoogleLogoImage),
];

addData(DataModelForHomeScreen dataModelForHomeScreen){
  listData.add(dataModelForHomeScreen);
}
