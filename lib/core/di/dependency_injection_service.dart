import 'package:get_it/get_it.dart';

import '../network/dio_client.dart';

final locator = GetIt.instance;

Future<void> diSetup() async {
  locator.registerLazySingleton<DioClient>(() => DioClient());
}
