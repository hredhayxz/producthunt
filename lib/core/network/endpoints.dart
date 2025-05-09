import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.env['BASE_URL']!;

class Endpoints {
  Endpoints._();

  static String getProducts() => "ProductList";
}
