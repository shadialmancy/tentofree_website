import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class InfoIconsContainer extends StatelessWidget {
  const InfoIconsContainer({super.key, this.image, this.title, this.number});
  final String? image;
  final String? title;
  final String? number;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image ?? '',width: 5.sw,),
        gapW16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(number ?? '', style: theme.titleMedium.copyWith(
              color: theme.white
            ),),
            Text(title ?? '', style: theme.titleSmall.copyWith(
              color: theme.secondary
            ),),
          ],
        )
      ],
    );
  }
}