import 'package:e_ticket/data/repository/recommended_product_repo.dart';
import 'package:e_ticket/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});
  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode==200) {
      print("got products recommended");
      // print(json.decode(response.body));
      _recommendedProductList=[];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      // print(_popularProductList);
      _isLoaded = true;
      update();
    } else {
      print("could not got products recommended");
    }
  }
}
// concepts about json and models n how they're connected(?)