import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    super.key,
    this.onPhoneChanged,
    required this.controller,
    this.title,
  });
  final Function(String?)? onPhoneChanged;
  final PhoneNumberInputController controller;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
              primaryColor: theme.grey9797,
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: theme.white,
                
              )),
          child: PhoneNumberInput(
            initialCountry: 'EG',
            countryListMode: CountryListMode.bottomSheet,
            controller: controller,
            allowPickFromContacts: false,
            onChanged: onPhoneChanged,
            contactsPickerPosition: ContactsPickerPosition.suffix,
            errorText: 'Please enter a valid number',
            enabledBorder: OutlineInputBorder(
              borderRadius: AppSizes.borderRadius8,
              borderSide: BorderSide(
                color: theme.borderColor.withOpacity(0.2),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: AppSizes.borderRadius8,
              borderSide: BorderSide(
                color: theme.borderColor.withOpacity(0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: AppSizes.borderRadius8,
              borderSide: BorderSide(
                color: theme.borderColor.withOpacity(0.2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
