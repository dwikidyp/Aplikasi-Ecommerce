import 'package:d_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d_store/common/widgets/images/circular_image.dart';
import 'package:d_store/common/widgets/texts/product_price_text.dart';
import 'package:d_store/common/widgets/texts/product_title_text.dart';
import 'package:d_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/enums.dart';
import 'package:d_store/utils/constants/image_strings.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
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
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            /// Price
            Text(
              'RP11.000',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(
              price: '9.000',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        /// Title
        const TProductTitleText(title: 'Green Nike Sport Shirt'),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
