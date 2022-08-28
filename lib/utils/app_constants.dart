class AppConstants {
  static const String APP_NAME = "E-Ticket";
  static const int APP_VERSION = 1;

  // localhost port 8000
  // static const String BASE_URL = "http://127.0.0.1:8000";

  // ip address; USE THIS; di laravel serve dengan ipaddress: php artisan serve --host 192.168.124.16 --port 8000
  // static const String BASE_URL = "http://192.168.100.85:8000";
  // koneksi wifi realme
  // static const String BASE_URL = "http://192.168.56.1:8000";
  // koneksi wifi infinix
  static const String BASE_URL = "http://192.168.43.113:8000";
  

  // emulator or android (?)
  // static const String BASE_URL = "http://10.0.2.2:8000";

  static const String POPULAR_PRODUCT_URI = "/api/v1/products/popular";
  static const String RECOMMENDED_PRODUCT_URI = "/api/v1/products/recommended";
  static const String MOUNTAINEER_URI = "/api/v1/products/mountaineer";
  static const String UPLOAD_URL = '/uploads/';

  static const String POPULAR_OBJECT_URI = "/data";

  static const String TOKEN = "DBtoken";

  static const String CART_LIST = "cart-list";
  static const String CART_HISTORY_LIST = "cart-history-list";
}