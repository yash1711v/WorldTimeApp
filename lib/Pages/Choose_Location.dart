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
  worldTime(Location: 'India', flat: 'India.webp', url: 'Asia/Kolkata'),
  worldTime(Location: 'London', flat: 'London.webp', url: 'Europe/London'),
  worldTime(Location: 'Athens', flat: 'Berlin.png', url: 'Europe/Berlin'),
  worldTime(Location: 'Cairo', flat: 'Cairo.svg.png', url: 'Africa/Cario'),
  worldTime(Location: 'Nairobi', flat: 'Nairobi.webp', url: 'Africa/Nairobi'),
  worldTime(Location: 'Chicago', flat: 'Chicago.png', url: 'America/Chicago'),
  worldTime(Location: 'New York', flat: 'New_York.webp', url: 'America/New_York'),
  worldTime(Location: 'Seoul', flat: 'Seoul.png', url: 'Asia/Seoul'),
];
void updateTime(index) async{
  worldTime instance =locations[index];// getting the specific Item on user click and keep that instance in Worldtime isntance
  await instance.getTime();//wait till it is done
  //navigating to HomeScreen
  Navigator.pop(context,{ // we are not pushing here We Are Poping here So we will not Going to use Arguments Instead of that We just Directly pass map
    'location': instance.Location,
    'flag':instance.flat,
    'time': instance.time,
    'Daytime': instance.isdaytime,
  });
}

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
         onTap: (){
            updateTime(index);
         },//Works Some Function on the Tap OF it
         title: Text(
           locations[index].Location
         ),
         leading: CircleAvatar(
           backgroundImage: AssetImage('assistes/${locations[index].flat}'), // we will use Curli braces cause we have to use Square braces notation when We want to use . on that We use Curcli Notation
         ) ,
       ),//Kind Of List And Infront of it have Some Image
);
        },//Cycle Through The List And Return Widget OF Containing Elements inside that List
      ),
    );
  }
}
