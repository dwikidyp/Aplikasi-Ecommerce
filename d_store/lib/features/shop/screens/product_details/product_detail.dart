import 'package:d_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:d_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:d_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            TProductImageSlider(),

            /// Product Detail
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share
                  TRatingAndShare(),

                  /// Price, Title, Stock & Brand
                  TProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
