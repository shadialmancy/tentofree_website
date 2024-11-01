import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/widgets/widgets.dart';
import '../../../home_features/presentation/widgets/widgets.dart';
import '../widgets/widgets.dart';

class ContactUsMobileUi extends StatefulWidget {
  const ContactUsMobileUi({super.key});

  @override
  State<ContactUsMobileUi> createState() => _ContactUsMobileUiState();
}

class _ContactUsMobileUiState extends State<ContactUsMobileUi> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  PhoneNumberInputController? phoneController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    phoneController = PhoneNumberInputController(context);
    phoneController?.phoneNumber = '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      
      child: Form(
        key: formKey,
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
                    AssetsHelper.contactUsBanner,
                    width: 40.sw,
                  ),
                  
                ],
              ),
            ),
            gapH32,
            Text(
              l10n.submitRequest,
              style: theme.displayLarge
                  .copyWith(color: theme.primary, fontWeight: FontWeight.bold),
            ),
            gapH32,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 4.sw),
              margin: EdgeInsets.symmetric(horizontal: 10.sw),
              decoration: BoxDecoration(
                  color: theme.primary.withOpacity(0.07),
                  border: Border.all(color: theme.grey70),
                  borderRadius: AppSizes.borderRadius16,
                  boxShadow: [
                    BoxShadow(
                        color: theme.grey7090.withOpacity(0.16), blurRadius: 22)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: TitleWithSupportTextfeild(
                              title: l10n.firstName,
                              hint: l10n.enterYourFirstName,
                              controller: firstNameController)),
                      gapW20,
                      Expanded(
                          child: TitleWithSupportTextfeild(
                              title: l10n.lastName,
                              hint: l10n.enterYourLastName,
                              controller: lastNameController)),
                    ],
                  ),
                  gapH20,
                  TitleWithSupportTextfeild(
                      title: l10n.email,
                      hint: l10n.enterYourEmail,
                      controller: emailController),
                  gapH20,
                  TitleWithSupportTextfeild(
                      title: l10n.email,
                      hint: l10n.enterYourEmail,
                      controller: emailController),
                  gapH20,
                  RichText(
                    text: TextSpan(
                        text: l10n.phoneNumber,
                        style: theme.titleSmall.copyWith(
                            color: theme.primary, fontWeight: FontWeight.w500),
                        children: const [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                  gapH12,
                  PhoneField(
                    onPhoneChanged: (val) {},
                    controller:
                        phoneController ?? PhoneNumberInputController(context),
                  ),
                  gapH20,
                  TitleWithSupportTextfeild(
                      title: l10n.region,
                      hint: l10n.enterYourCountry,
                      controller: countryController),
                   gapH20,
                  RichText(
                    text: TextSpan(
                        text: l10n.chooseRequestType,
                        style: theme.titleSmall.copyWith(
                            color: theme.primary, fontWeight: FontWeight.w500),
                        children: const [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                  gapH12,
                  CustomDropDown(items: const [], onChanged: (value) {
                    
                  }, hint: l10n.selectRequestType),
                  gapH20,
                  TitleWithSupportTextfeild(
                      title: l10n.description,
                      maxLine: 10,
                      hint: l10n.enterSubjectDescribeYourInquiry,
                      controller: descriptionController),
                      gapH30,
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      onPressed: () {
                        if(formKey.currentState?.validate() ?? false) {

                        }
                      },
                      backgroundColor: theme.secondary,
                      title: l10n.submit,
                    ),
                  )
                ],
              ),
            ),
            gapH48,
            const DownloadAppSection(),
            gapH24,
            const FooterSection(),
            gapH20,
            const TrademarkSection(),
          ],
        ),
      ),
    );
  }
}