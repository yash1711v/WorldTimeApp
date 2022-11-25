import 'package:flutter/material.dart';
import 'package:world_time/Services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading>  with TickerProviderStateMixin {
//-----------------------------------x-----------------------------x---------26/11/2022------------------x-------------------------x--------------------------------x-----------------------------x---------------------------x---------
  // void getTime() async{
  //    Response response= await get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
  //   // print(response.body); to print the Body in Console [Date on which This Done:26/11/2022]
  //   //Decoding jsom String By jsonDecoder [Date on which This Done:26/11/2022]
  //  Map data = jsonDecode(response.body);// Decoding and Storing the Data in the The Map called Data [Date on which This Done:26/11/2022]
  //   //print(data);
  //   //Getting properties From data [Date on which This Done:26/11/2022]
  //   String dateTime=data['datetime'];
  //   String offset=data['utc_offset'].substring(1,3);//Sub string Esliya use KIa Kuki startibg ma +0 hai Thats Why [Date on which This Done:26/11/2022]
  //   // print(dateTime);
  //   // print(offset); just For Checking [Date on which This Done:26/11/2022]
  //
  //   //Create A Date Time Object
  //   DateTime now=DateTime.parse(dateTime); // Converting  json Date time to Date time Object by Parsing itz
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   print(now);
  //
  // }
//------------------x---------------------------------x--------------Dummy to the Asynchronize and of usin Api and Decoding the Json Object --------------------x----------------xc-----------------------x--------------x----------------------x
String time='Loading.....';
  Future<void> setupWorldTime()  async {
    // this Function is Going To cReate The New Instance Of The Class Worl_timeClass
    worldTime instance=worldTime(Location: 'Kolkata/India', flat: 'germany.png', url: 'Asia/Kolkata');
    await instance.getTime();//Await always cOMES In Async
    // print(instance.time);
    // setState(() {
    //   time=instance.time;
    // });// Till we Don't ReDirecting to Home page
    Navigator.pushReplacementNamed(context, '/Home',arguments: {
      'location': instance.Location,
      'flag':instance.flat,
      'time': instance.time,
      'Daytime': instance.isdaytime,
    });
  }
  void initState(){
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
       body:
      // Padding(
      //   padding: EdgeInsets.all(50.0),
      //   child: Text('Loading'),
      // ),// Code For Just A Demo of Loading Screen
      //Actua Cde
      Center(
        child:
//---------------------------------------------Rotating Circle Type-------------------------------------------------------------------------------------------------------------------------------------------------------
        SpinKitFadingCircle(
          color: Colors.white,
          size: 100.0,
        ),
//--------------------------------------------fading Circle Type----------------------------------------------------------------------------------------------------------------------------------------------------------------
//          SpinKitFadingCircle(
//           itemBuilder: (BuildContext context, int index) {
//     return DecoratedBox(
//     decoration: BoxDecoration(
//     color: index.isEven ? Colors.red : Colors.green,
//     ),
//     );
//     },),
//-------------------------------------------Square Circle Spin------------------------------------------------------------------------------------------------------------------------------------------------------------------
//           SpinKitSquareCircle(
//             color: Colors.white,
//             size: 80.0,                  //vsync Ma Error Aya This Pa toh Solve Hua  'with TickerProviderStateMixin' Ko Extand <state> ke Baad laga Ke
//             controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
//           ),
      ),
    );
  }
}
