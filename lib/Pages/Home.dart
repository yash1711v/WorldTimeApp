
//-----------------------------------------making of classes(Home,Choose_location,LoadingScreen) is Done On 25/11/2022-------------------------------------------------------------
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 Map Data={};// Creating The Data Of Type Map To Store The Data Which Is Coming From The Loading Screen
  @override
  Widget build(BuildContext context) {
    // Data=ModalRoute.of(context)?.settings.arguments as Map;//this is Accepting the Data from The LOading Screen To it
    Data=Data.isNotEmpty?Data:ModalRoute.of(context)?.settings.arguments as Map;//Just Puting a Check If the Data is Emoty then Do this ONly KUki HAr bari Khulne PAr haam Vhi same Last Time Vala Chate hai
    print(Data);
    //setBackground
    String bgImage=Data['Daytime']?'Day.png':'night.jpg';
    Color? bgcolor=Data['Daytime']?Color.fromRGBO(27, 86, 113, 20):Color.fromRGBO(38, 36, 49, 10);
     return Scaffold(
       backgroundColor: bgcolor,
      body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assistes/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),//To Bring It Little Bit Below
            child: Column(
              children: <Widget>[
                TextButton.icon(onPressed: () async{// making the on pressed as Async Cause we Are Using The await keyword In front of Navigator
                  //Navigator.pushNamed(context, '/Location');//part of routing(25/11/2022
                dynamic result= await Navigator.pushNamed(context, '/Location');//Using it as It is A big Async task cause
                                                                               // it takes go to next page getting the data and again
                                                                              // coming to it and as we don't Know What is Going to Come We Are Storing it IntO the Result Which is OF Dynamic Type
                  setState(() {
                    //Getting and Updating data From result
                    Data={
                      'time': result['time'],
                      'location': result['location'],
                      'Daytime':result['Daytime'],
                      'flag': result['flat']
                    };
                  });
                },
                    label: Text('Edit Location',
                    style: TextStyle(
                      color:Data['Daytime']?Colors.black:Colors.white,//For making the TExt Colors Dynamic according to dattime [27/11/2022]
                    ),),
                icon: Icon(Icons.edit_location,
                color:Data['Daytime']?Colors.black:Colors.white,//For making the TExt Colors Dynamic according to dattime  [27/11/2022 ]
                ),
                ),
                SizedBox(height: 20.0 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      Data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Data['Daytime']?Colors.black:Colors.white,//For making the TExt Colors Dynamic according to dattime [Done On 27/11/2022]
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  Data['time'],
                 style: TextStyle(
                   fontSize: 66.0,
                   fontWeight: FontWeight.bold,
                   color: Data['Daytime']?Colors.black:Colors.white,//For making the TExt Colors Dynamic according to dattime
                 ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}

