import 'package:flutter/material.dart';
import 'Pages/Home.dart';
import 'Pages/Choose_Location.dart';
import 'Pages/LoadingScreen.dart';

//In this Application We have the Following 3 Pages
/*
*  Home  which is actually Showing the Time
*  Loading Where we have The data Initially
*  Screen where User Can Update the Location To find Out the Time
*/
void main()=>runApp(MaterialApp(
  initialRoute: '/',
//----------------------------------------------------------------------Routeing on 25/11/2022------------------------------------------
routes: {
  '/':(context)=>Loading(),
  '/Home':(context)=>Home(),
  '/Location':(context)=>ChooseLocation(),

},
));



