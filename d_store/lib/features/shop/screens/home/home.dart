import 'package:d_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:d_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utility.dart';
import 'package:d_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Searchbar
                  TSearchContainer(text: ,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon, this.showBackground = true, this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackground ? dark ? TColors.dark : TColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey) : null),
        child: Row(
          children: [
            Icon(icon, color: TColors.darkerGrey),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(text,
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
