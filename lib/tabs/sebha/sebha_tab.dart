

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;

  double angle=0;

  int currentindex=0;

  List<String> azkar=[
    "سبحان الله",
    "الحمدلله",
    "لا إله إلا الله",
    "لاحول ولا قوة إلا بالله",
    "الله أكبر",
  ];

  @override
  Widget build(BuildContext context) {

    TextTheme textTheme=Theme.of(context).textTheme;
    var screensize=MediaQuery.sizeOf(context);
    
     return Padding(
       padding: EdgeInsets.all(16),
       child: Column(
        children: [
          Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى " , style: textTheme.displaySmall,),
       
          SizedBox(height: screensize.height*0.02),
       
         Image.asset("assets/images/sebha_tail.png"),
          Stack(
            alignment: Alignment.center,
            children: [
                    
          InkWell(
             onTap:onClicked ,
             child: Transform.rotate(
              angle: angle,
              child: Image.asset("assets/images/sebhabody.png" ,
              height: screensize.height * 0.40,
              fit: BoxFit.contain,)
              )
              ),
             
          Column(
            children: [
              Text(azkar[currentindex],style:textTheme.displaySmall ,
               maxLines:2 ,
               overflow:TextOverflow.ellipsis ,
               textAlign: TextAlign.center,
               ),
                    
              Text("$counter" , style: textTheme.displaySmall,)
            ],
          )
                      ],
                    ),
       
        ],
       ),
     );
  }

  void onClicked(){

  counter++;
  angle+=20;

  if(counter %33==0){
    currentindex++;
  }
  if(currentindex==azkar.length) {
    currentindex=0;
    counter=0;
  }
 setState(() {});
  }
}