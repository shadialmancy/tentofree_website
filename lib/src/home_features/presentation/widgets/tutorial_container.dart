import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class TutorialContainer extends StatelessWidget {
  const TutorialContainer({super.key, this.numberStep, this.image, this.title});
  final String? numberStep;
  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Stack(
      children: [
        
        Padding(
          padding: EdgeInsets.only(top: 2.sh),
          child: Column(
            children: [
              Image.asset(image ?? '',width: 20.sw,),
              gapH20,
              Text(title ?? '',style: theme.displaySmall.copyWith(
                fontSize: 20,
              ),)
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: theme.secondary,
          radius: 1.5.sw,
          child: Text(numberStep ?? '',style: theme.displaySmall.copyWith(color: theme.white,fontSize: 2.sw),),
        ),
      ],
    );
  }
}