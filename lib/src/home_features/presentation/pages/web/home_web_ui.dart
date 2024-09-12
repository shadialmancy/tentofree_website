import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/core/helpers/helpers.dart';
import 'package:tentofree_web/src/home_features/presentation/widgets/widgets.dart';

import '../../../../core/constants/app_sizes.dart';

class HomeWebUi extends StatefulWidget {
  const HomeWebUi({super.key});

  @override
  State<HomeWebUi> createState() => _HomeWebUiState();
}

class _HomeWebUiState extends State<HomeWebUi> {
    bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    // Simulate loading time (replace with actual data loading if needed)
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return _isLoading
      ? Center(
          child: CircularProgressIndicator(
            color: theme.primary,
          ),
        )
      :  SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.sh,horizontal: 5.sw),
            width: double.infinity,
            color: theme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsHelper.shareVoucherGetFreeItemBanner,
                  width: 40.sw,
                ),
                gapW12,
                Image.asset(
                  AssetsHelper.freeVoucherBanner,
                  width: 40.sw,
                ),
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
                      fontSize: 4.sw,
                      fontWeight: FontWeight.w900,
                      color: theme.primary),
                ),
                gapH20,
                const StepsInstruction(),
                gapH20,
                Text(
                  l10n.helpingBusinessToGrowAndExpand,
                  textAlign: TextAlign.center,
                  style: theme.displayMedium.copyWith(
                      fontSize: 4.sw,
                      fontWeight: FontWeight.w900,
                      color: theme.primary),
                ),
                gapH20,
                const BusinessInfo(),
                gapH20,
              ],
            ),
          ),
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
