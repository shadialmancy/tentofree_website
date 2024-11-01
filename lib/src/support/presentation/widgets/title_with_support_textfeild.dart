import 'package:flutter/material.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/widgets/widgets.dart';

class TitleWithSupportTextfeild extends StatelessWidget {
  const TitleWithSupportTextfeild(
      {super.key,
      required this.title,
      required this.hint,
      required this.controller, this.maxLine});
  final String title;
  final String hint;
  final TextEditingController controller;
  final int? maxLine;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: title,
              style: theme.titleSmall
                  .copyWith(color: theme.primary, fontWeight: FontWeight.w500),
              children: const [
                TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                    ))
              ]),
        ),
        gapH12,
        CustomTextField(
            keyboardType: TextInputType.name,
            maxLines: maxLine,
            hint: hint,
            controller: controller)
      ],
    );
  }
}
