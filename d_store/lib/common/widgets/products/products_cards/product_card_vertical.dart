import 'package:d_store/common/styles/shadows.dart';
import 'package:d_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d_store/common/widgets/images/t_rounded_image.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/image_strings.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const TRoundedImage(
                    imageUrl: TImages.productImage1, applyImageRadius: true),

                // Sale Tag
                TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm, vertical: TSizes.xs),
                  child: Text(
                    '25%',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: TColors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
