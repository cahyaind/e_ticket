import 'package:e_ticket/data/repository/popular_object_repo.dart';
import 'package:e_ticket/models/objects_model.dart';
import 'package:get/get.dart';

class PopularObjectController extends GetxController {
  
  final PopularObjectRepo popularObjectRepo;

  PopularObjectController({required this.popularObjectRepo});

  // return data
  List<dynamic> _popularObjectList = [];
  List<dynamic> get popularObjectList => _popularObjectList;

  Future<void> getPopularObjectList() async {
    Response response = await popularObjectRepo.getPopularObjectList();
    if (response.statusCode==200) {
      _popularObjectList=[];
      _popularObjectList.addAll(response.body);
      update();
    } else {

    }
  }
}
// concepts about json and models n how they're connected(?)