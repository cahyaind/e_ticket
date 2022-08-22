import 'package:e_ticket/data/api/api_client.dart';
import 'package:e_ticket/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularObjectRepo extends GetxService {
  
  final ApiClient apiClient;

  PopularObjectRepo({required this.apiClient});

  Future<Response> getPopularObjectList() async {
    return await apiClient.getData(AppConstants.POPULAR_OBJECT_URI); // end point url
  }

}