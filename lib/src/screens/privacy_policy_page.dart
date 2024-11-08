import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/core/helpers/helpers.dart';
import 'package:tentofree_web/src/home_features/presentation/pages/mobile/privacy_policy_mobile_ui.dart';
import 'package:tentofree_web/src/home_features/presentation/pages/web/privacy_policy_ui.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/routes/app_router.dart';

@RoutePage()
class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.primary,
        centerTitle: true,
        surfaceTintColor: theme.primary,
        leadingWidth: 200,
        toolbarHeight: 100,
        leading: Padding(
          padding: EdgeInsets.only(top: 2.sw, left: 2.sw, bottom: 2.sw),
          child: GestureDetector(
              onTap: () {
                context.router.replace(const HomeRoute());
              },
              child: Image.asset(
                AssetsHelper.logoImage,
                width: 5.sw,
              )),
        ),
      ),
      backgroundColor: theme.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const PrivacyPolicyMobileUi(),
        tablet: const PrivacyPolicyUi(),
        desktop: const PrivacyPolicyUi(),
      ),
    );
  }
}
