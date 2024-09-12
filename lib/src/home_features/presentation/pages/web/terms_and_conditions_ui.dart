import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/core/helpers/helpers.dart';
import 'package:tentofree_web/src/home_features/presentation/widgets/widgets.dart';

import '../../../../core/constants/app_sizes.dart';

class TermsAndConditionsUi extends StatefulWidget {
  const TermsAndConditionsUi({super.key});

  @override
  State<TermsAndConditionsUi> createState() => _TermsAndConditionsUiState();
}

class _TermsAndConditionsUiState extends State<TermsAndConditionsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.sh, horizontal: 5.sw),
            width: double.infinity,
            color: theme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsHelper.termsAndConditionBanner,
                  width: 40.sw,
                ),
                gapW12,
                Image.asset(
                  AssetsHelper.termsLogo,
                  width: 40.sw,
                ),
              ],
            ),
          ),
          gapH20,
          const TermsAndConditiionData(),

          gapH20,
          const DownloadAppSection(),
          gapH20,
          const FooterSection(),
          gapH20,
          const TrademarkSection()
        ],
      ),
    );
  }
}
