import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // //-------------------------------Asynchronyse code--------------------------------------------------------
  // //Date for Asynchronised Code:-26/11/2022
  // void getdata() async
  // {
  //  await Future.delayed(Duration(seconds: 3),(){
  //     /*
  //       here Future is pri Built Function which is Sile Spefiy what is going to be happen
  //       delayed is Method Which specifies How much time It will goin
  //        to happen or after how much time it will happen it contains Two
  //       parameters 1)Duration 2) function which specifies what should be execute
  //        after the Duration
  //      */
  //     print('Yash');
  //   });
  //  void getdata() async
  //  {
  //    await Future.delayed(Duration(seconds: 2),(){
  //      /*
  //       here Future is pri Built Function which is Sile Spefiy what is going to be happen
  //       delayed is Method Which specifies How much time It will goin
  //        to happen or after how much time it will happen it contains Two
  //       parameters 1)Duration 2) function which specifies what should be execute
  //        after the Duration
  //      */
  //      print('Yah');
  //    });
  // }
  // void initState(){
  //    super.initState();
  //    getdata();
  // }
 // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose A Location'),
        centerTitle: true,
        elevation: 0,//Removing Droop Shadow By Saying elevation Is Zero
        backgroundColor: Colors.blue[900],
      ),
      body: Text(''),
    );
  }
}
