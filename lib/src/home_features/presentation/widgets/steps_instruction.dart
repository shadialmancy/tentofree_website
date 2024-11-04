import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/helpers.dart';
import 'widgets.dart';

class StepsInstruction extends StatelessWidget {
  const StepsInstruction({super.key, this.isMobile});
  final bool? isMobile;
  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return Padding(
      padding: EdgeInsets.all(1.sw),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 15.sw,
        runSpacing: 20,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          TutorialContainer(
            image: AssetsHelper.step1Banner,
            numberStep: '1',
            title: l10n.downloadTentofreeApp,
            isMobile: isMobile,
          ),
          TutorialContainer(
            image: AssetsHelper.step2Banner,
            numberStep: '2',
            title: l10n.goToYourFavouriteStore,
            isMobile: isMobile,
          ),
          TutorialContainer(
              image: AssetsHelper.step3Banner,
              numberStep: '3',
              title: l10n.shareWithYourCommunity,
              isMobile: isMobile),
          TutorialContainer(
              image: AssetsHelper.step4Banner,
              numberStep: '4',
              title: l10n.saveAndGetYourDiscount,
              isMobile: isMobile),
        ],
      ),
    );
  }
}
