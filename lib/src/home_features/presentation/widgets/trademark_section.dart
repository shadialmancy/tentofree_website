import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class TrademarkSection extends StatelessWidget {
  const TrademarkSection({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
            width: double.infinity,
            padding: EdgeInsets.all(3.sw),
            alignment: Alignment.center,
            color: theme.primary,
            child:  Text("© 2024 Tentofree All rights reserved.",style: theme.bodySmall.copyWith(
              color: theme.secondary
            ),),
          );
  }
}