import 'package:ezwage/ui/wallet/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class CircularNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final String? placeholder;
  final double size;

  const CircularNetworkImage({
    Key? key,
    required this.imageUrl,
    this.placeholder,
    this.size = 48,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Colors.grey[200],
        width: size,
        height: size,
        child: (imageUrl != null && imageUrl!.isNotEmpty)
            ? Image.network(
          imageUrl!,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(placeholder ?? AppImages.bankIcon),
            );
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: SizedBox(
                width: size / 2,
                height: size / 2,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            );
          },
        )
            : Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(placeholder ?? AppImages.bankIcon),
        ),
      ),
    );
  }
}