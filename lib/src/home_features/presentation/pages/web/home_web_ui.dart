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
  final List<String> imageList = [
    AssetsHelper.step1Banner,
    AssetsHelper.step2Banner,
    AssetsHelper.step3Banner,
    AssetsHelper.step4Banner,
  ];
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.sw),
            width: double.infinity,
            color: theme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 2.sw,right: 2.sw,top: 2.sh),
            color: theme.secondary,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(AssetsHelper.downloadTentofreeAppBanner,width: 40.sw,),
                    gapH20,
                    Row(
                  mainAxisSize: MainAxisSize.min,

                      children: [
                        Image.asset(AssetsHelper.downloadFromAppleBanner,width: 20.sw),
                        Image.asset(AssetsHelper.downloadFromGooglePlayBanner,width: 20.sw),
                      ],
                    ),
                  ],
                ),
                Image.asset(AssetsHelper.phoneApp,width: 30.sw)
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(AssetsHelper.logoDarkImage,width: 20.sw,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text()
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
