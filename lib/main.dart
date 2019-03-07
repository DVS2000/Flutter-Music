import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile.dart';
import 'play.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Music',
      theme:ThemeData(
        primarySwatch: Colors.purple
      ),
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final margin = const EdgeInsets.only(left: 2, right: 2);

    final HomeScreen = Container(
       
        color: Color(0XFF111339),
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Container(
                         margin: margin,
                         height: 10,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                       ),
                       Container(
                         margin: margin,
                         height: 20,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                       ),
                       Container(
                         margin: margin,
                         height: 45,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                       ),
                       Container(
                         margin: margin,
                         height: 25,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                       ),
                       Container(
                         margin: margin,
                         height: 35,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                       ),
                       Container(
                         margin: margin,
                         height: 30,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                         
                       ),
                       Container(
                         margin: margin,
                         height: 20,
                         width: 3,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(3)
                         ),
                       ),
                     ],
                   ),
                   SizedBox(width: 10,),
                   new Text(
                     'Groove',
                     style:TextStyle(
                       fontSize: 40,
                       color: Colors.white,
                       fontWeight: FontWeight.w500
                     )
                   ),
                 ],
               ),
                new Theme(
                  data: ThemeData(
                    primarySwatch: Colors.lightBlue,
                  ),
                  child: CircularProgressIndicator(),
                ),
             ],
           ),
         ),
      );

    return Scaffold(
      body: Profile()
    );
  }
}

