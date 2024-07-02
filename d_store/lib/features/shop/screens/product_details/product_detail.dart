import 'package:d_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:d_store/common/widgets/images/t_rounded_image.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/image_strings.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            TCurvedEdgeWidget(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: Stack(
                  children: [
                    /// Main Large Image
                    const SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                        child: Center(
                          child: Image(
                            image: AssetImage(TImages.productImage1),
                          ),
                        ),
                      ),
                    ),

                    /// Image Slider
                    TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSizes.md),
                        imageUrl: TImages.productImage2),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
