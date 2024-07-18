import 'package:d_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:d_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:d_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:d_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const TProductImageSlider(),

            /// Product Detail
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share
                  const TRatingAndShare(),

                  /// Price, Title, Stock & Brand
                  const TProductMetaData(),

                  /// aTTRIBUTES
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
