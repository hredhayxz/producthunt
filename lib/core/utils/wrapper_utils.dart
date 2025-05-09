import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

final class WrapperUtils {
  WrapperUtils._();

  /// Cached Network Image with shimmer
  static Widget cachedImage({
    required String imageUrl,
    double? width,
    double? height,
    double radius = 0,
    BoxFit fit = BoxFit.cover,
    Color shimmerColor = Colors.grey,
    Widget? errorWidget,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        width: width,
        height: height,
        fit: fit,
        imageUrl: imageUrl,
        placeholder:
            (_, __) =>
                _buildShimmerPlaceholder(width, height, color: shimmerColor),
        errorWidget: (_, __, ___) => errorWidget ?? const Icon(Icons.error),
      ),
    );
  }

  /// Shimmer Effect Widget
  static Widget shimmer({
    double? width,
    double? height,
    double radius = 0,
    Color baseColor = Colors.grey,
    Color highlightColor = Colors.white,
    Widget? child,
  }) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child:
          child ??
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
    );
  }

  static Widget _buildShimmerPlaceholder(
    double? width,
    double? height, {
    Color color = Colors.grey,
  }) {
    return Shimmer.fromColors(
      baseColor: color,
      highlightColor: color.withValues(alpha: (0.5 * 255)),
      child: Container(width: width, height: height, color: color),
    );
  }
}
