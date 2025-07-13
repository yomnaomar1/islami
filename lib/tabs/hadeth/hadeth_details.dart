import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
 static const String routeName="/hadeth-details";

  @override
  Widget build(BuildContext context) {

   double screenHeight=MediaQuery.sizeOf(context).height;


    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
   


    TextTheme textTheme=Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text("Hadeth${hadeth.num}"),),

      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 18),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.asset("assets/images/details_header_left.png", height: screenHeight*0.1 , fit: BoxFit.fill,),

            Expanded(child: Text(hadeth.title, style: textTheme.headlineSmall!.copyWith(color: AppTheme.primary), textAlign: TextAlign.center,)),

            Image.asset("assets/images/details_header_right.png",  height: screenHeight*0.1 , fit: BoxFit.fill,)
            ],),
          ),


          Expanded(
            child:


            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 18),
              itemBuilder: (_,index)=>Text(
               hadeth.content[index] , 
                style: textTheme.titleLarge!.copyWith(color: AppTheme.primary),
                textAlign: TextAlign.center,),
               separatorBuilder:(_,_) =>SizedBox(height: 12,),
               itemCount: hadeth.content.length,
            ),
          ),


          Image.asset("assets/images/details_footer.png" , width: double.infinity, fit: BoxFit.fill,)
        ],
      ),
    );
  }

 
}
