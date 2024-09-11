import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../widgets/widgets.dart';

class HomeMobileUi extends StatefulWidget {
  const HomeMobileUi({super.key});

  @override
  State<HomeMobileUi> createState() => _HomeMobileUiState();
}

class _HomeMobileUiState extends State<HomeMobileUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return  SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.sh,horizontal: 4.5.sw),
            width: double.infinity,
            color: theme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsHelper.shareVoucherGetFreeItemBanner,
                  width: 80.sw,
                ),
                // gapW12,
                // Image.asset(
                //   AssetsHelper.freeVoucherBanner,
                //   width: 40.sw,
                // ),
              ],
            ),
          ),
          gapH20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.sw),
            child: Column(
              children: [
                Text(
                  l10n.howDoesItWork,
                  textAlign: TextAlign.center,
                  style: theme.displayMedium.copyWith(
                      fontSize: 6.sw,
                      fontWeight: FontWeight.w900,
                      color: theme.primary),
                ),
                gapH20,
                const StepsInstruction(isMobile: true,),
                gapH20,
                Text(
                  l10n.helpingBusinessToGrowAndExpand,
                  textAlign: TextAlign.center,
                  style: theme.displayMedium.copyWith(
                      fontSize: 6.sw,
                      fontWeight: FontWeight.w900,
                      color: theme.primary),
                ),
                gapH20,
                const BusinessInfo(isMobile: true,),
                gapH20,
              ],
            ),
          ),
          const DownloadAppSection(isMobile: true,),
          gapH20,
          const FooterSection(isMobile: true,),
          gapH20,
          const TrademarkSection()
        ],
      ),
    );
  }
}