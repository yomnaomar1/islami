import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/onboarding/onboarding_screen.dart';
import 'package:islami/tabs/hadeth/hadeth_details.dart';
import 'package:islami/tabs/quran/quran_service.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

 Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
   await QuranService.getMostRecentlySuras();
  runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.routeName,
      routes:{
        HomeScreen.routeName: (_)=>HomeScreen(),
         SuraDetailsScreen.routeName: (_)=>SuraDetailsScreen(),
          HadethDetailsScreen.routeName: (_)=>HadethDetailsScreen(),
          OnboardingScreen.routeName: (_)=>OnboardingScreen()
      } ,
     theme:AppTheme.lightTheme ,
     darkTheme:AppTheme.darkTheme ,
     themeMode: ThemeMode.dark,
    );
  }
}
