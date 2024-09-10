import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/helpers.dart';
import 'widgets.dart';

class StepsInstruction extends StatelessWidget {
  const StepsInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return Padding(
                  padding: EdgeInsets.all(1.sw),
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 6.sw,
                    runSpacing: 20,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      TutorialContainer(
                        image: AssetsHelper.step1Banner,
                        numberStep: '1',
                        title: l10n.downloadTentofreeApp,
                      ),
                      TutorialContainer(
                        image: AssetsHelper.step2Banner,
                        numberStep: '2',
                        title: l10n.goToYourFavouriteStore,
                      ),
                      TutorialContainer(
                        image: AssetsHelper.step3Banner,
                        numberStep: '3',
                        title: l10n.shareWithYourCommunity,
                      ),
                      TutorialContainer(
                        image: AssetsHelper.step4Banner,
                        numberStep: '4',
                        title: l10n.saveAndGetYourDiscount,
                      ),
                    ],
                  ),
                );
  }
}