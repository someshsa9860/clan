import 'package:flutter/material.dart';

class AllInOneProvider extends ChangeNotifier{
  List<String> pastAcheivementdata=[
    'Priya In International Debating league',
    'Akshay in Global Quizzing Finals'
  ];
 List<String> liveClanActivitiesdata=[
    'Live treading championship',
    'Treasure hunt'
  ];
 List<Map<String,dynamic>> clanDiscusiondata=[
   {
     'name':'General Thread',
     'count':15
   },

  {
     'name':'(Live) Anyone enthu for trading...',
     'count':15
   },

  ];
}