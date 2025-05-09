import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/product_list_model.dart';
import '../../../../data/repo/product_repo.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepo _repository;
  List<ProductData> _allProducts = [];

  ProductBloc() : _repository = ProductRepo(), super(ProductInitial()) {
    on<LoadProducts>((event, emit) async {
      emit(ProductLoading());
      final result = await _repository.fetchProducts(page: 1);
      result.fold((error) => emit(ProductError(error)), (products) {
        _allProducts = products;
        emit(ProductLoaded(products));
      });
    });

    on<RefreshProducts>((event, emit) async {
      final result = await _repository.fetchProducts(page: 1);
      result.fold((error) => emit(ProductError(error)), (products) {
        _allProducts = products;
        emit(ProductLoaded(products));
      });
    });

    on<SearchProducts>((event, emit) {
      final query = event.query.toLowerCase();
      final filtered =
          _allProducts
              .where((product) => product.name!.toLowerCase().contains(query))
              .toList();
      emit(ProductLoaded(filtered));
    });
  }
}
