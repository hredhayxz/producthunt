import 'package:flutter/material.dart';

import '../../../core/constant/app_dimens.dart';
import '../../../core/utils/wrapper_utils.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: GridView.builder(
          padding: EdgeInsets.only(top: AppDimens.h16, bottom: AppDimens.h16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: AppDimens.h16,
            crossAxisSpacing: AppDimens.w16,
            childAspectRatio: 0.6,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ProductCard();
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

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
              imageUrl: 'https://via.placeholder.com/150',
              height: AppDimens.h100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Flexible Content
          Expanded(
            child: Padding(
              padding: AppDimens.paddingHorizontal16.copyWith(
                top: AppDimens.h8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    'Product Title',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleLarge,
                  ),
                  SizedBox(height: AppDimens.h8),

                  Text(
                    'Product description',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall,
                  ),

                  // Price and Favorite Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$120',
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
