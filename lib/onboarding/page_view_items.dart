import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/onboarding/onboarding_data.dart';

class PageViewItems extends StatelessWidget {
  OnboardingData onboardingData;

  PageViewItems({required this.onboardingData});
  

  @override
  Widget build(BuildContext context) {

    var screensize= MediaQuery.sizeOf(context);
    TextTheme textTheme=Theme.of(context).textTheme;

    return Column(

      children: [
        Image.asset("assets/images/${onboardingData.imageName}.png" ,height:screensize.height*0.35 ),
        SizedBox(height: 24),
        Text(onboardingData.title , style:textTheme.headlineSmall!.copyWith(color: AppTheme.primary) ,textAlign: TextAlign.center, ),
        SizedBox(height: 24),
        if(onboardingData.description !=null)
        Text(onboardingData.description! , style:textTheme.titleLarge!.copyWith(color: AppTheme.primary) ,textAlign: TextAlign.center,)

      ],
    );
  }
}