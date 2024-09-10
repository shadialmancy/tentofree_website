import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/helpers.dart';
import 'widgets.dart';

class BusinessInfo extends StatelessWidget {
  const BusinessInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
                  margin: EdgeInsets.all(1.sw),
                  padding: EdgeInsets.all(2.sw),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: theme.primary,
                      borderRadius: AppSizes.borderRadius8),
                  child: Wrap(
                    spacing: 6.sw,
                    runSpacing: 20,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      InfoIconsContainer(
                        image: AssetsHelper.packIcon,
                        number: "1M+",
                        title: l10n.pack,
                      ),
                      InfoIconsContainer(
                        image: AssetsHelper.voucherIcon,
                        number: "10M+",
                        title: l10n.voucher,
                      ),
                      InfoIconsContainer(
                        image: AssetsHelper.vendorIcon,
                        number: "500+",
                        title: l10n.vendor,
                      ),
                      InfoIconsContainer(
                        image: AssetsHelper.userIcon,
                        number: "1M+",
                        title: l10n.user,
                      ),
                    ],
                  ),
                );
  }
}