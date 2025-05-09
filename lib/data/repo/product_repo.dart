import 'package:either_dart/either.dart';
import '../../core/di/dependency_injection_service.dart';
import '../../core/network/dio_client.dart';
import '../../core/network/endpoints.dart';
import '../models/product_list_model.dart';

class ProductRepo {
  final _dioClient = locator.get<DioClient>();

  Future<Either<String, List<ProductData>>> fetchProducts({
    required int page,
  }) async {
    try {
      final response = await _dioClient.get(
        Endpoints.getProducts(),
        queryParameters: {'page': page},
      );

      final parsed = ProductListsModel.fromJson(response.data);
      final products = parsed.data ?? [];

      return Right(products);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
