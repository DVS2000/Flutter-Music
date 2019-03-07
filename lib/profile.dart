import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List<Musics> musicas = [
    Musics('Fucking Star','Eric (Feat. Fredh Perry, Xuxu Bower)','04:35'),
    Musics('Deixa-me ir Star', 'Eric Rogrigues', '04:15'),
    Musics('Nosso Work', 'Eric Rodrigues', '03:15'),
    Musics('Já foi', 'Eric Rodrigues', '03:30'),
    Musics('Ela', 'Eric Rodrigues', '05:10')

  ]; 

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    // TODO: implement initState
    super.initState();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 6
                    )
                  ]
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      'http://192.168.1.248/login/imgs/eric.jpg',
                      fit:BoxFit.cover,
                      color: Color(0XFF111339).withOpacity(0.7),
                      colorBlendMode: BlendMode.darken,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back, color: Colors.white,),
                                onPressed: () {
                                  //========
                                  //=CODING=
                                  //========
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(bottom: 80),
                                child: Text(
                                'Eric Rodrigues',
                                style:TextStyle(
                                  fontSize: 30,
                                  color:Colors.white,
                                  fontWeight: FontWeight.w700
                                )
                              ),
                              )
                            ],
                          )
                        ],
                      )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(

                //labelStyle: TextStyle(color: Color(0XFF111339)),
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,

                labelColor: Color(0XFF111339),
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Tab(
                    text: 'SONGS',
                  ),
                  Tab(
                    text: 'ALBUMS',
                  ),
                  Tab(
                    text: 'PLAYLISTS',
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: ListView.builder(
                        itemCount: musicas.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 40, right: 20, top: 5, bottom: 5),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                            Text(
                                              musicas[index].Titutlo,
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0XFF111339)
                                              ),
                                            ),
                                            Text(
                                              musicas[index].Musico,
                                              style: TextStyle(color: Colors.grey),
                                          
                                        ),
                                       
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                         Text(
                                          musicas[index].Minuto
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.play_circle_outline, color: Color(0XFF111339),),
                                          onPressed: (){},
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 1.2,
                                  child: Divider(),
                                )
                              ],
                            ),
                          );
                        },
                      )
                    ),
                    Container(
                      child: Center(
                        child: Text('ALBUMS'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('PLAYLISTS'),
                      ),
                    )
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

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      var path = Path();

      path.lineTo(0, size.height - 100);
      path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 100);
      path.lineTo(size.width, 0);
      path.close();

      return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
}


class Musics {
  String Titutlo;
  String Musico;
  String Minuto;

  Musics(this.Titutlo, this.Musico, this.Minuto);
}