import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/core/helpers/helpers.dart';
import 'package:tentofree_web/src/home_features/presentation/widgets/widgets.dart';

import '../../../../core/constants/app_sizes.dart';

class PrivacyPolicyMobileUi extends StatefulWidget {
  const PrivacyPolicyMobileUi({super.key});

  @override
  State<PrivacyPolicyMobileUi> createState() => _PrivacyPolicyMobileUiState();
}

class _PrivacyPolicyMobileUiState extends State<PrivacyPolicyMobileUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.sh, horizontal: 4.5.sw),
            width: double.infinity,
            color: theme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsHelper.privacyPolicyBanner,
                  width: 80.sw,
                ),
              ],
            ),
          ),
          gapH20,
          const PrivacyPolicyData(
            isMobile: true,
          ),
          gapH20,
          const DownloadAppSection(
            isMobile: true,
          ),
          gapH20,
          const FooterSection(
            isMobile: true,
          ),
          gapH20,
          const TrademarkSection()
        ],
      ),
    );
  }
}
