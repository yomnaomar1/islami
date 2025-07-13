import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/most_recently_item.dart';
import 'package:islami/tabs/quran/quran_service.dart';

class MostRecentlySection extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Visibility(
      visible: QuranService.MostRecentlySuras.isNotEmpty,
      child: Padding(
        padding:  EdgeInsets.only(left: 20 , top:20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Most Recently" ,style: Theme.of(context).textTheme.titleMedium),
        
          SizedBox(height: 10),
        
        
           
          
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.16,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder:(_,index) => MostRecentlyItem(QuranService.MostRecentlySuras.reversed.toList()[index]) ,
                
                  separatorBuilder: (_,_) => SizedBox(width:10),
                  itemCount: QuranService.MostRecentlySuras.length),
            ),
            
          
        ],),
      ),
    );
  }
}