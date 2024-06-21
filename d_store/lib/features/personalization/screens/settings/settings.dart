import 'package:d_store/common/widgets/appbar/appbar.dart';
import 'package:d_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:d_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:d_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:d_store/common/widgets/texts/section_heading.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  /// User Profile
                  const TUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  const TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'set Shopping Delivery Address',
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Address',
                    subTitle: 'Add, remove products and move to checkout',
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In progress and complete orders',
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to resgitered bank account',
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My coupons',
                    subTitle: 'List of all discounted coupons',
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),

                  /// App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload data to your cloud firebase'),
                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set Recomendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search Result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
