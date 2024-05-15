import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:d_store/common/widgets/images/t_rounded_image.dart';
import 'package:d_store/features/shop/controllers/home_controller.dart';
import 'package:d_store/utils/constants/image_strings.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: const [
            TRoundedImage(imageUrl: TImages.promoBanner1),
            TRoundedImage(imageUrl: TImages.promoBanner2),
            TRoundedImage(imageUrl: TImages.promoBanner3),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              const TCircularContainer(
                width: 20,
                height: 4,
                margin: EdgeInsets.only(right: 10),
                backgroundColor: Colors.green,
              ),
          ],
        )
      ],
    );
  }
}
