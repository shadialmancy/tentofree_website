import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/helpers.dart';

class DownloadAppSection extends StatelessWidget {
  const DownloadAppSection({super.key, this.isMobile});
  final bool? isMobile;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10.sw, right: 10.sw, top: 2.sh),
      color: theme.secondary,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AssetsHelper.downloadTentofreeAppBanner,
                width: isMobile ?? false ? 70.sw : 40.sw,
              ),
              gapH20,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AssetsHelper.downloadFromAppleBanner,
                      width: isMobile ?? false ? 30.sw : 20.sw),
                  gapW20,
                  Image.asset(AssetsHelper.downloadFromGooglePlayBanner,
                      width: isMobile ?? false ? 30.sw : 20.sw),
                ],
              ),
              gapH20,
            ],
          ),
          Image.asset(AssetsHelper.phoneApp,
              width: isMobile ?? false ? 60.sw : 30.sw)
        ],
      ),
    );
  }
}
