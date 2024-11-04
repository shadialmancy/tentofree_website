import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tentofree_web/src/home_features/presentation/widgets/widgets.dart';
import 'package:tentofree_web/src/support_features/presentation/widgets/title_with_support_textfeild.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/constants/constants.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/widgets/widgets.dart';
import '../../domain/entities/contact_us_entity.dart';
import '../provider/support_provider.dart';

class ContactUsWebUi extends ConsumerStatefulWidget {
  const ContactUsWebUi({super.key});

  @override
  ConsumerState<ContactUsWebUi> createState() => _ContactUsWebUiState();
}

class _ContactUsWebUiState extends ConsumerState<ContactUsWebUi> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  PhoneNumberInputController? phoneController;
  TextEditingController subjectController = TextEditingController();
  String? currentRequestType;
  bool isSent = false;

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
    final supportService = ref.watch(supportServiceProvider.notifier);

    return AsyncValueWidget(
        value: ref.watch(supportServiceProvider),
        data: (_) {
          return SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.sh, horizontal: 5.sw),
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
                        gapW12,
                        Image.asset(
                          AssetsHelper.contactUs,
                          width: 40.sw,
                        ),
                      ],
                    ),
                  ),
                  gapH32,
                  Text(
                    l10n.submitRequest,
                    style: theme.displayLarge.copyWith(
                        color: theme.primary, fontWeight: FontWeight.bold),
                  ),
                  gapH32,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.sw, vertical: 4.sw),
                    margin: EdgeInsets.symmetric(horizontal: 10.sw),
                    decoration: BoxDecoration(
                        color: theme.primary.withOpacity(0.07),
                        border: Border.all(color: theme.grey70),
                        borderRadius: AppSizes.borderRadius16,
                        boxShadow: [
                          BoxShadow(
                              color: theme.grey7090.withOpacity(0.16),
                              blurRadius: 22)
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
                            title: l10n.subject,
                            hint: "Enter subject",
                            controller: subjectController),
                        gapH20,
                        RichText(
                          text: TextSpan(
                              text: l10n.phoneNumber,
                              style: theme.titleSmall.copyWith(
                                  color: theme.primary,
                                  fontWeight: FontWeight.w500),
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
                          controller: phoneController ??
                              PhoneNumberInputController(context),
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
                                  color: theme.primary,
                                  fontWeight: FontWeight.w500),
                              children: const [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ))
                              ]),
                        ),
                        gapH12,
                        CustomDropDown(
                            value: currentRequestType,
                            validator: (value) {
                              if (value == null) {
                                return "This field is required";
                              }
                              return null;
                            },
                            items: List.generate(
                              requestType.length,
                              (index) {
                                return DropdownMenuItem(
                                  value: requestType.keys.toList()[index],
                                  child:
                                      Text(requestType.values.toList()[index]),
                                );
                              },
                            ),
                            onChanged: (value) {
                              currentRequestType = value;
                              setState(() {});
                            },
                            hint: l10n.selectRequestType),
                        gapH20,
                        TitleWithSupportTextfeild(
                            title: l10n.description,
                            maxLine: 10,
                            hint: l10n.enterSubjectDescribeYourInquiry,
                            controller: descriptionController),
                        gapH30,
                        isSent
                            ? const Center(
                              child: Text(
                                  "The application has sent to us and we will contact you later!"),
                            )
                            : Container(),
                        gapH30,
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                            onPressed: () async {
                              if (formKey.currentState?.validate() ?? false) {
                                final ContactUsEntity body = ContactUsEntity(
                                    country: 1,
                                    description: descriptionController.text,
                                    email: emailController.text,
                                    firstName: firstNameController.text,
                                    inquiryTitle: subjectController.text,
                                    lastName: lastNameController.text,
                                    phoneNumber:
                                        phoneController?.fullPhoneNumber,
                                    requestTypes: currentRequestType);
                                await supportService
                                    .sendTicket(body: body)
                                    .then(
                                  (value) {
                                    isSent = true;
                                    setState(() {});
                                  },
                                );
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
        });
  }
}
