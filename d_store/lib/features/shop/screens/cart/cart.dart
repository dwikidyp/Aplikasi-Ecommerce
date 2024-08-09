import 'package:d_store/common/widgets/appbar/appbar.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated( separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections,), itemCount: 4,itemBuilder: (_, index) =,),
        ),
      ),
    );
  }
}
