import 'package:flutter/material.dart';
import 'package:producthunt/presentation/features/product_list/widgets/product_card.dart';

import '../../../core/constant/app_dimens.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/product_bloc.dart';
import 'bloc/product_event.dart';
import 'bloc/product_state.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  late ProductBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = ProductBloc()..add(LoadProducts());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Products',
            style: TextStyle(
              fontSize: AppDimens.sp20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: AppDimens.paddingHorizontal16,
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (state is ProductLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is ProductError) {
                return Center(child: Text(state.message));
              } else if (state is ProductLoaded) {
                final products = state.products;
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<ProductBloc>().add(LoadProducts());
                  },
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: AppDimens.h16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: AppDimens.h16,
                      crossAxisSpacing: AppDimens.w16,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                    },
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
