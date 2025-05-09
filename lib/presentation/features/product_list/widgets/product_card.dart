import 'package:flutter/material.dart';

import '../../../../core/constant/app_dimens.dart';
import '../../../../core/utils/wrapper_utils.dart';
import '../../../../data/models/product_list_model.dart';

class ProductCard extends StatelessWidget {
  final ProductData product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.r12),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppDimens.r12),
            ),
            child: WrapperUtils.cachedImage(
              imageUrl: "https://laravelpoint.com/${product.img}",
              height: AppDimens.h100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Content
          Expanded(
            child: Padding(
              padding: AppDimens.paddingHorizontal16.copyWith(
                top: AppDimens.h8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name ?? 'No Name',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product.sellingPrice ?? '0'}',
                        style: TextStyle(
                          fontSize: AppDimens.sp14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: AppDimens.h20,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
