import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/core/helpers/helpers.dart';
import 'package:tentofree_web/src/home_features/presentation/pages/mobile/terms_and_conditions_mobile_ui.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../home_features/presentation/pages/web/terms_and_conditions_ui.dart';


@RoutePage()
class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.primary,
        centerTitle: true,
        surfaceTintColor: theme.primary,
        // actions: [
        //   CustomButton(
        //     backgroundColor: theme.secondary,
        //     title: l10n.joinNow,
        //   )
        // ],
        leadingWidth: 200,
        toolbarHeight: 100,
        leading: Padding(
          padding:  EdgeInsets.only(top: 2.sw,left: 2.sw,bottom: 2.sw),
          child: Image.asset(AssetsHelper.logoImage,width: 5.sw,),
        ),
      ),
      backgroundColor: theme.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const TermsAndCondtitionsMobileUi(),
        tablet: const TermsAndConditionsUi(),
        desktop: const TermsAndConditionsUi(),
      ),
    );
  }
}
