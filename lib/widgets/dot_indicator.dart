import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class DotIndicator extends StatelessWidget {
 
bool isSelected;

DotIndicator({required this.isSelected});

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
      height: 8,
      width: isSelected? 24 :8,
      margin: EdgeInsets.symmetric(horizontal: 8),
      
      duration:Duration(milliseconds: 300),

      decoration: BoxDecoration(
        color: isSelected? AppTheme.primary : Colors.grey,
        borderRadius: BorderRadius.circular(27)

      ),
    
    );
  }
}