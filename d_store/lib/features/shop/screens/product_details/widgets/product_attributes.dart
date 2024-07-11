import 'package:d_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: const Column(
            children: [
              /// title, Price
              Row(
                children: [],
              )
            ],
          ),
        ),
      ],
    );
  }
}
