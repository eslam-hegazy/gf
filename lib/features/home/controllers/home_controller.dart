import 'package:daldart/core/networking/dio_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void getHomeNews() async {
    DioHelper.getData('hot.json').then((value) {
      print(value.data);
    }).catchError((error) {
      print(error);
    });
  }
}
