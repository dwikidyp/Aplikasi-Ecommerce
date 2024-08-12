import 'package:d_store/common/widgets/appbar/appbar.dart';
import 'package:d_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:d_store/common/widgets/products/cart/cart_item.dart';
import 'package:d_store/common/widgets/texts/product_price_text.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            itemBuilder: (_, index) => const Column(
              children: [
                TCartItem(),
                SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  children: [
                    SizedBox(width: 70),

                    /// Add Remove
                    TProductQuantityWithAddRemove(),
                    TProductPriceText(price: '2000'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
