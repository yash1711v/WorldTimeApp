import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
//-------------------------------------------------------------------------------------------26/11/2022----------------------------------------------------------------------------------------------------------------------------
class worldTime{
   String Location;// Location name for ui
 late String time;//The time In that Location
 String flat;// url to an assest flag Icon
 String url;// this Is Location for api end Point
 late bool isdaytime;//true or False If daytime or not
  worldTime({required this.Location,required this.flat,required this.url});
  // as we want to use Awiat in custom in Sync Function so we have to put future as
  // Future is Necessary Becuse it is temparary placeHolder value untill
  // the function is Complete and
  // return the value when the functon is over
  Future <void> getTime() async{
//--------------x------------------x----------------x-----Code Without Handling the Error-----------------------x------------------------x------------------------------------x------------------------x---------------------------x----------------x----------------x-
    // Response response=  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    // // print(response.body); to print the Body in Console [Date on which This Done:26/11/2022]
    // //Decoding jsom String By jsonDecoder [Date on which This Done:26/11/2022]
    // Map data = jsonDecode(response.body);// Decoding and Storing the Data in the The Map called Data [Date on which This Done:26/11/2022]
    // //print(data);
    // //Getting properties From data [Date on which This Done:26/11/2022]
    // String dateTime=data['datetime'];
    // String offset=data['utc_offset'].substring(1,3);//Sub string Esliya use KIa Kuki startibg ma +0 hai Thats Why [Date on which This Done:26/11/2022]
    // // print(dateTime);
    // // print(offset); just For Checking [Date on which This Done:26/11/2022]
    //
    // //Create A Date Time Object
    // DateTime now=DateTime.parse(dateTime); // Converting  json Date time to Date time Object by Parsing itz
    // now = now.add(Duration(hours: int.parse(offset)));
    //   time=now.toString();//converting datetime type in in time property of string type


//-----------------------------------------------x----------------------------x-With Handling A Eeror --------------------------x--------------------------x--------------------------x-----------x----------x----------------------x---
    //Exceptional Handling Using Try And Catch Block
    try{
      Response response=  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      // print(response.body); to print the Body in Console [Date on which This Done:26/11/2022]
      //Decoding jsom String By jsonDecoder [Date on which This Done:26/11/2022]
      Map data = jsonDecode(response.body);// Decoding and Storing the Data in the The Map called Data [Date on which This Done:26/11/2022]
      //print(data);
      //Getting properties From data [Date on which This Done:26/11/2022]
      String dateTime=data['datetime'];
      String offset=data['utc_offset'].substring(1,3);//Sub string Esliya use KIa Kuki startibg ma +0 hai Thats Why [Date on which This Done:26/11/2022]
      // print(dateTime);
      // print(offset); just For Checking [Date on which This Done:26/11/2022]

      //Create A Date Time Object
      DateTime now=DateTime.parse(dateTime); // Converting  json Date time to Date time Object by Parsing itz
      now = now.add(Duration(hours: int.parse(offset)));
        //time=now.toString();//converting datetime type in in time property of string type
      //------------------------------------------------------------------------27/112022---------------------------------------------------------------------------------------------------------
      isdaytime=now.hour>6&&now.hour<20?true:false;//if the time is between morning 6 to night 8 then it will be the
      //Day Time Else It is Night Time
      // Now Pass This bool to the Home Page//[till this on 27/11/2022]
        time=DateFormat.jm().format(now);
    }
    catch(e)
    {
      print('cought Error: $e');
      time='could not get Time Data';
    }

  }
}
//creating insatnace of class Just Example
// worldTime instance=worldTime(Location: 'Berlin', flat: 'germany.png', url: 'Europe/Berlin');

