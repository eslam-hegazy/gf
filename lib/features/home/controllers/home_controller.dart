import 'package:daldart/core/networking/models/post_model.dart';
import 'package:daldart/core/networking/remote/dio_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // get sports posts
  late List<PostModel> postSportsData;
  var isSportsLoading = false.obs;
  void getSportsNews() async {
    isSportsLoading.value = true;
    postSportsData = [];
    try {
      final response = await DioHelper.getData(
        endpoint: "v2/top-headlines",
        query: {
          "country": "US",
          "category": "sports",
          "apiKey": "aa0cd81a8c784cb5b97239c9af454ff5",
        },
      );
      response.data['articles'].forEach((data) {
        postSportsData.add(PostModel.fromJson(data));
      });
      isSportsLoading.value = false;
      print(response.data['articles']);
    } catch (error) {
      isSportsLoading.value = true;
      print(error);
    }
  }
  // get science posts
  late List<PostModel> postScienceData;
  var isScienceLoading = false.obs;
  void getScienceNews() async {
    isScienceLoading.value = true;
    postScienceData = [];
    try {
      final response = await DioHelper.getData(
        endpoint: "v2/top-headlines",
        query: {
          "country": "US",
          "category": "science",
          "apiKey": "aa0cd81a8c784cb5b97239c9af454ff5",
        },
      );
      response.data['articles'].forEach((data) {
        postScienceData.add(PostModel.fromJson(data));
      });
      isScienceLoading.value = false;
      print(response.data['articles']);
    } catch (error) {
      isScienceLoading.value = true;
      print(error);
    }
  }
  // get health posts
  late List<PostModel> postHealthData;
  var isHealthLoading = false.obs;
  void getHealthNews() async {
    isHealthLoading.value = true;
    postHealthData = [];
    try {
      final response = await DioHelper.getData(
        endpoint: "v2/top-headlines",
        query: {
          "country": "US",
          "category": "health",
          "apiKey": "aa0cd81a8c784cb5b97239c9af454ff5",
        },
      );
      response.data['articles'].forEach((data) {
        postHealthData.add(PostModel.fromJson(data));
      });
      isHealthLoading.value = false;
      print(response.data['articles']);
    } catch (error) {
      isHealthLoading.value = true;
      print(error);
    }
  }
}
