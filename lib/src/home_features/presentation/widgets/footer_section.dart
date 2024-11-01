import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/core/routes/app_router.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/helpers.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key, this.isMobile});
  final bool? isMobile;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
            padding: EdgeInsets.only(left: 2.sw, right: 2.sw),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              runSpacing: 6.sw,
              children: [
                Image.asset(
                  AssetsHelper.logoDarkImage,
                  width: isMobile ?? false ? 50.sw : 25.sw,
                ),
                gapW32,
                Wrap(
                spacing: 6.sw,
              runSpacing: 6.sw,
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.spaceAround,
                  children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.company,
                      style: theme.titleLarge.copyWith(
                          color: theme.primary, fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.aboutTentofree,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.securityAndPrivacy,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.pressAndMedia,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.workWithUs,
                      style: theme.titleLarge.copyWith(
                          color: theme.primary, fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.carrers,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.becomePartner,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.business,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.legal,
                      style: theme.titleLarge.copyWith(
                          color: theme.primary, fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.endUserAgreement,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.termOfSale,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    GestureDetector(
                      onTap: () {
                        context.router.push(const TermsAndConditionsRoute());
                      },
                      child: Text(
                        l10n.ourTerms,
                        style: theme.bodySmall.copyWith(
                            color: theme.black.withOpacity(0.5),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    gapH12,
                    GestureDetector(
                      onTap: () {
                        context.router.push(const PrivacyPolicyRoute());
                      },
                      child: Text(
                        l10n.privacyPolicy,
                        style: theme.bodySmall.copyWith(
                            color: theme.black.withOpacity(0.5),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.getInTouch,
                      style: theme.titleLarge.copyWith(
                          color: theme.primary, fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    Text(
                      l10n.FAQs,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                    gapH12,
                    GestureDetector(
                      onTap: () {
                        context.router.push(const ContactUsRoute());
                      },
                      child: Text(
                        l10n.contactUs,
                        style: theme.bodySmall.copyWith(
                            color: theme.black.withOpacity(0.5),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    gapH12,
                    Text(
                      l10n.helpCenter,
                      style: theme.bodySmall.copyWith(
                          color: theme.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                ],)
              ],
            ),
          );
  }
}