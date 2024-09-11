import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class TutorialContainer extends StatelessWidget {
  const TutorialContainer({super.key, this.numberStep, this.image, this.title,  this.isMobile});
  final String? numberStep;
  final String? image;
  final String? title;
  final bool? isMobile;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Stack(
      children: [
        
        Padding(
          padding: EdgeInsets.only(top: 2.sh),
          child: Column(
            children: [
              Image.asset(image ?? '',width: isMobile ?? false ? 45.sw : 20.sw,),
              gapH20,
              Text(title ?? '',style: theme.displaySmall.copyWith(
                fontSize:  20,
              ),)
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: theme.secondary,
          radius: isMobile ?? false ? 3.sw :1.5.sw,
          child: Text(numberStep ?? '',style: theme.displaySmall.copyWith(color: theme.white,fontSize: isMobile ?? false ? 4.sw : 2.sw),),
        ),
      ],
    );
  }
}