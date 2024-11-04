import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class InfoIconsContainer extends StatelessWidget {
  const InfoIconsContainer(
      {super.key, this.image, this.title, this.number, this.isMobile});
  final String? image;
  final String? title;
  final String? number;
  final bool? isMobile;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          image ?? '',
          width: isMobile ?? false ? 6.sw : 5.sw,
        ),
        gapW16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number ?? '',
              style: theme.titleMedium.copyWith(color: theme.white),
            ),
            Text(
              title ?? '',
              style: theme.titleSmall.copyWith(color: theme.secondary),
            ),
          ],
        )
      ],
    );
  }
}
