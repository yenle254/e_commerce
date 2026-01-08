import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth= Get.context!.width;

  static double pageView = screenHeight/3.11;
  static double pageViewContainer = screenHeight/4.53;
  static double pageViewTextContainer = screenHeight/8.31;

//dynamic height padding and margin
  static double height10 = screenHeight/99.73;
  static double height15 = screenHeight/66.49;
  static double height20 = screenHeight/49.87;
  static double height30 = screenHeight/33.24;

//dynamic width padding and margin
  static double width10 = screenHeight/99.73;
  static double width15 = screenHeight/66.49;
  static double width20 = screenHeight/49.87;
  static double width30 = screenHeight/33.24;

  static double font20 = screenHeight/49.87;
  static double radius20 = screenHeight/49.87;
  static double radius30 = screenHeight/33.24;
}