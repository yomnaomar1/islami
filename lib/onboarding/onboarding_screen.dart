import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/onboarding/onboarding_data.dart';
import 'package:islami/onboarding/page_view_items.dart';
import 'package:islami/widgets/dot_indicator.dart';

class OnboardingScreen extends StatefulWidget {

  static const String routeName="/onboarding";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

   PageController controller=PageController();
  int currentIndex=0;

 



  @override
  Widget build(BuildContext context) {

    var screensize= MediaQuery.sizeOf(context);
    TextTheme textTheme=Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: Image.asset("assets/images/header.png" ,height:screensize.height*0.25,),
          ),
          Expanded(

            child:PageView.builder(
              controller: controller,
              itemBuilder: (_, index) =>PageViewItems(onboardingData: OnboardingData.onboardinglist[index]),
              itemCount: OnboardingData.onboardinglist.length,

              onPageChanged:(index){

                if(currentIndex==index)return;
                currentIndex=index;
                setState(() { });
              } ,
              )
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: currentIndex!=0 ? (){
                    
                   controller.animateToPage(currentIndex-1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                   
                   
        

                }: null
                , child:currentIndex!=0 ? Text("Back" , style: textTheme.titleMedium!.copyWith(color: AppTheme.primary),) :SizedBox.shrink()
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  List.generate(OnboardingData.onboardinglist.length, (index) =>DotIndicator(isSelected: currentIndex==index))
                ),

                 TextButton(onPressed: (){
                  controller.animateToPage(currentIndex+1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                 }
                 , child: Text(currentIndex==4? "Finish" :"Next", style: textTheme.titleMedium!.copyWith(color: AppTheme.primary),))
              ],
             )
        ],
      ),
    );
  }
}