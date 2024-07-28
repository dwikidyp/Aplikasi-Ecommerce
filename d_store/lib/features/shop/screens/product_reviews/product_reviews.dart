import 'package:d_store/common/widgets/appbar/appbar.dart';
import 'package:d_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:d_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:d_store/features/shop/screens/product_reviews/widgets/user_review_cart.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(
                rating: 3.5,
              ),
              Text('2.611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Review List
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
