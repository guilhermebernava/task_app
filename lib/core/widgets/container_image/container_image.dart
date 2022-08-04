import 'package:flutter/material.dart';
import '../../../services/image_validator.dart';
import '../../../themes/app_colors.dart';

class ContainerImage extends StatelessWidget {
  final Widget child;
  final String image;
  final double opacityImage;
  final double height;

  const ContainerImage({
    Key? key,
    required this.child,
    required this.image,
    required this.height,
    this.opacityImage = 0.6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: opacityImage,
          image: ImageValidator.imageProviderValidator(image),
        ),
        color: AppColors.whitePurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
