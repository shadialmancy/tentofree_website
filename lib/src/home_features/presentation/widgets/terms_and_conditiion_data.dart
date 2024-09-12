import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class TermsAndConditiionData extends StatelessWidget {
  const TermsAndConditiionData({super.key, this.isMobile});
  final bool? isMobile;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.sw),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Tentofree Terms of Use",
                    style: theme.displayMedium.copyWith(
                        fontSize: isMobile ?? false ? 6.sw : 4.sw,
                        fontWeight: FontWeight.w900,
                        color: theme.primary),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5.sw,right: 5.sw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        "Welcome to TenToFree! These Terms and Conditions govern your use of our mobile application and services (collectively referred to as the \"App\"). By accessing or using the App, you agree to comply with and be bound by these Terms. If you do not agree with any part of these Terms, you must not use the App.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n1. Definitions",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- \"User\": Any individual who registers or otherwise accesses the App.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("- \"Vendor\": Any business or service provider that collaborates with TenToFree to offer discounts through the App.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("- \"Vouchers\": Discount codes provided to Users for sharing with their social networks.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n2. Eligibility",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- You must be at least 12 years old to create an account and use the App. By using the App, you represent and warrant that you meet this requirement.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n3. Account Registration",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- To access certain features, you must create an account. You agree to:",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Provide accurate, current, and complete information during the registration process.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Maintain the security of your password and accept responsibility for all activities that occur under your account.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n4. Use of Vouchers",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- Vouchers are issued to Users for promotional purposes. Users must:",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Share Vouchers only with individuals who are eligible to use them.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Not sell, transfer, or reproduce Vouchers without authorization.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- TenToFree reserves the right to cancel or modify any voucher program at any time.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n5. User Responsibilities",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- Users agree not to:",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Provide false information or impersonate any person or entity.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Engage in any conduct that is harmful to TenToFree, other Users, or Vendors.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Use the App for any illegal or unauthorized purpose.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n6. Vendor Responsibilities",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- Vendors must:",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Honor the Vouchers they issue and ensure compliance with all applicable laws and regulations.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\t\t- Provide accurate descriptions of their products and services.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n7. Intellectual Property",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- All content, features, and functionality in the App, including but not limited to text, graphics, logos, and software, are owned by TenToFree or its licensors and are protected by copyright, trademark, and other intellectual property laws.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n8. Limitation of Liability",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- To the fullest extent permitted by law, TenToFree and its affiliates shall not be liable for any indirect, incidental, special, consequential, or punitive damages arising from or related to your use of the App, including but not limited to loss of profits, data, or goodwill.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n9. Indemnification",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- You agree to indemnify, defend, and hold harmless TenToFree and its affiliates from any claims, liabilities, damages, losses, costs, or expenses (including reasonable attorneys' fees) arising out of or related to your breach of these Terms or your use of the App.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n10. Termination",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- TenToFree reserves the right to terminate or suspend your account and access to the App at our sole discretion, with or without notice, for conduct that we believe violates these Terms or is harmful to other Users or the App.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n11. Governing Law",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- These Terms shall be governed by and construed in accordance with the laws of the Arab Republic of Egypt, without regard to its conflict of law principles.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n12. Changes to Terms",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- We may update these Terms from time to time. Any changes will be effective upon posting the revised Terms in the App. Your continued use of the App after the changes constitutes your acceptance of the new Terms.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n13. Contact Information",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- If you have any questions or concerns regarding these Terms, please contact us through our website at **[tentofree.com](http://tentofree.com)**.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n14. Severability",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- If any provision of these Terms is found to be unenforceable or invalid, that provision will be limited or eliminated to the minimum extent necessary so that the remaining provisions will remain in full force and effect.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),
                        Text("\n15. Entire Agreement",style: theme.titleLarge.copyWith(fontSize: isMobile ?? false ? 6.sw : 2.sw,fontWeight: FontWeight.bold),),
                        Text("\n- These Terms constitute the entire agreement between you and TenToFree regarding your use of the App and supersede any prior agreements.",style: theme.labelLarge.copyWith(fontSize: isMobile ?? false ? 3.sw : 1.5.sw),),

                      ],
                    ),
                  )
                   
                ],
              ),
            ),
          );
  }
}