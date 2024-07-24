import 'package:d_store/common/widgets/appbar/appbar.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// appbar
      appBar: TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
