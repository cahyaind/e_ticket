import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type' : 'application/json; charset=UTF-8', 
      // utk berinteraksi dg server <-> client, ini json; ini utk decoding/encoding ->decode=konversi
      'Authorization' : 'Bearer $token',
      // bearer for authorization from the server
      // token utk device ke server buat mention
    };
  }

  // request for getting data from our server 
  Future<Response> getData(String uri, ) async {
    try {
      // in case just using get method from getx, not http client. but in getx inside it uses http
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

}