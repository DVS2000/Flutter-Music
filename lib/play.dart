import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  final myColor = Color(0XFF111339);

  double _value = 40.0;

  void _onChanged(value) {
    setState(() {
     _value = value; 
    });
  }

  bool bvalue = false;
  void _onChangedSwitch(value) {
    setState(() {
     bvalue = value; 
    }); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NOW PLAYING',
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w300, color: myColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: myColor,
          ),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  color: myColor,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10)],
                  image: DecorationImage(
                      image: NetworkImage(
                          'http://192.168.1.248/login/imgs/eric.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          myColor.withOpacity(0.7), BlendMode.darken))),
            ),
            SizedBox(height: 60,),
            Column(
              children: <Widget>[
                Text(
                  'Deixa-me ir',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF111339)),
                ),
                SizedBox(height: 10,),
                Text(
                  'Eric Rodrigues',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '01:35',
                    style: TextStyle(color: myColor),
                  ),
                  Container(
                    width: 300,
                    child: Slider(
                    activeColor: myColor,
                    min: 0.0,
                    max: 200.0,
                    value: _value,
                    onChanged: (value){_onChanged(value);},

                  ),
                  ),
                  Text(
                    '02:00',
                    style: TextStyle(color: myColor),
                  ),
                ],
              ),
            ),
            
            Center(
              child: Container(
                
                width: 300,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.skip_previous, size: 40, color: myColor,),
                      onPressed: (){},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 15),
                      child:  IconButton(
                      icon: Icon(Icons.play_circle_outline, size: 60, color: myColor,),
                      onPressed: (){},
                    ),
                    ),
                     IconButton(
                      icon: Icon(Icons.skip_next, size: 40, color: myColor,),
                      onPressed: (){},
                    ),
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
