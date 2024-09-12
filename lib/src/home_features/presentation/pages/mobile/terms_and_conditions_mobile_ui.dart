import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../widgets/widgets.dart';

class TermsAndCondtitionsMobileUi extends StatefulWidget {
  const TermsAndCondtitionsMobileUi({super.key});

  @override
  State<TermsAndCondtitionsMobileUi> createState() => _TermsAndCondtitionsMobileUiState();
}

class _TermsAndCondtitionsMobileUiState extends State<TermsAndCondtitionsMobileUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

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
                  AssetsHelper.termsAndConditionBanner,
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
          const TermsAndConditiionData(isMobile: true,),
          gapH20,
          
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