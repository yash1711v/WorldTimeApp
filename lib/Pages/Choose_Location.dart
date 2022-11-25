import 'package:flutter/material.dart';
import 'package:world_time/Services/world_time.dart';
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
//------------------------------------------------------------------27/11/2022------------------------------------------------------------------------------------------------------------------------
List<worldTime> locations=[
  worldTime(Location: 'India', flat: '', url: 'Asia/Kolkata'),
  worldTime(Location: 'London', flat: '', url: 'Europe/London'),
  worldTime(Location: 'Athens', flat: '', url: 'Europe/Berlin'),
  worldTime(Location: 'Cairo', flat: '', url: 'Africa/Cario'),
  worldTime(Location: 'Nairobi', flat: '', url: 'Africa/Nairobi'),
  worldTime(Location: 'Chicago', flat: '', url: 'America/Chicago'),
  worldTime(Location: 'New York', flat: '', url: 'America/New_York'),
  worldTime(Location: 'Seoul', flat: '', url: 'Asia/Seoul'),
];
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
      body: ListView.builder(
          itemCount: locations.length,//How many Items are inside the list that we want to cycle Through
        itemBuilder: (context,index){
    return Card(
       child: ListTile(
         onTap: (){},//Works Some Function on the Tap OF it
         title: Text(
           locations[index].Location
         ),
       ),//Kind Of List And Infront of it have Some Image
);
        },//Cycle Through The List And Return Widget OF Containing Elements inside that List
      ),
    );
  }
}
