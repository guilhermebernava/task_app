import 'package:flutter/material.dart';
import '../../../themes/app_images.dart';

class ImageValidator {
  static ImageProvider imageProviderValidator(String url) {
    bool isValid = RegExp(r'(https://.*?.(jpg|png|gif|jpeg))').hasMatch(url);

    if (!isValid) {
      return const AssetImage(AppImages.placeholder);
    }

    return NetworkImage(url);
  }
}
