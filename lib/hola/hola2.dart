import 'package:flutter/material.dart';

class Hola22 extends StatelessWidget {
  var titulo = Text(
    'Popular',
    style: TextStyle(color: Colors.black, fontSize: 40),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          //height: 1000,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    //
                    botones('photo'),
                    _espacio(),
                    botones('Clothes'),
                    _espacio(),
                    botones('Painting'),
                    _espacio(),
                    botones('Comic'),
                    _espacio(),
                    botones('Desha'),
                    _espacio(),
                    botones('Games'),
                    _espacio(),
                    botones('photo'),
                    _espacio(),
                    botones('Clothes'),
                    _espacio(),
                    botones('Painting'),
                    _espacio(),
                    botones('Comic'),
                    _espacio(),
                    botones('Desha'),
                    _espacio(),
                    botones('Games'),
                    //
                  ],
                ),
              ),
              _espacio(),
              Container(
                color: Colors.white,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    //imagenes('people2.png'),
                    _buildStack('people1.jpg'),
                    _espacio(), 
                    _buildStack('people2.png'),
                    _espacio(),
                    _buildStack('people3.webp'),
                    _espacio(),
                    _buildStack('people4.jpg'),
                    _espacio(),
                    _buildStack('people5.jpg'),
                    _espacio(),
                    _buildStack('people6.jpg'),
                    _espacio(),
                    _buildStack('people7.jpg'),
                    _espacio(),
                    _buildStack('people8.jpg'),
                    _espacio(),
                    _buildStack('people9.jpg'),
                    _espacio(),
                    _buildStack('people10.jpg'),
                    _espacio(),
                    _buildStack('people2.png'),
                    _espacio(),
                    _buildStack('people2.png'),
                    _buildStack('people2.png'),
                    _buildStack('people2.png'),
                    _buildStack('people2.png'),
                    _buildStack('people2.png'),
                    _buildStack('people2.png'),
                    _buildStack('people2.png'),
                  ],
                ),
              ),
              _publicacion('people10.jpg','landscape2.jpg','Stam Lee'),
              _publicacion('people10.jpg','landscape2.jpg','Stam Lee'),
              _publicacion('people10.jpg','landscape2.jpg','Stam Lee'),
              _publicacion('people1.jpg','landscape2.jpg','noseeeee'),
              _publicacion('people2.png','landscape2.jpg','noseeeee2'),
            ],
          ),
        ),
      ),
    );
  }

  Widget myAppBar() {
    return AppBar(
      //leading: Text('Popular',style: TextStyle(fontSize: 20,color: Colors.black),),
      elevation: 0,
      title: titulo,
      //leading: Icon(Icons.menu),
      centerTitle: false,
      backgroundColor: Colors.white,
      actions: <Widget>[
        Icon(
          Icons.search,
          color: Colors.black,
          size: 40,
        ),
      ],
    );
  }

  Widget _icons(String nom, String ruta, double tam) {
    return Card(
      margin: EdgeInsets.only(top: 20, right: 10, left: 10),
      color: Colors.white,
      elevation: 15,
      child: Column(
        children: <Widget>[
          //Text('$nom',style: TextStyle(fontSize: 30),),
          Container(
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(206))),
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image(
                  excludeFromSemantics: true,
                  height: tam,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image/$ruta'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  RaisedButton botones(String nom) {
    return RaisedButton(
      textColor: Colors.red,
      color: Colors.black,
      shape: StadiumBorder(),
      elevation: 0,
      splashColor: Colors.red,
      child: Text('$nom', style: TextStyle(color: Colors.white, fontSize: 15)),
      onPressed: () {},
    );
  }

  Image _imagenes(String ruta, double tam) {
    return Image(
      excludeFromSemantics: true,
      alignment: Alignment(0.0, 1.0),
      //height: tam,
      fit: BoxFit.fill,
      image: AssetImage('assets/image/$ruta'),
    );
  }

  Widget _buildStack(String ruta) => Stack(
        alignment: const Alignment(0.6,0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/image/$ruta'),
            radius: 30,
          ),
        ],
      );

  SizedBox _espacio() {
    return SizedBox(
      height: 25,
      width: 15,
      
    );
  }

  Container _publicacion(String user,String ruta,String nom) {
    return Container(
      child: Column(
        children: <Widget>[
          _espacio(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _espacio(),
                  _buildStack(user),
                  _espacio(),
                  Text(
                    nom,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[botones('follow'),_espacio()],
              ),
            ],
          ),
          _espacio(),
          _imagenes(ruta, 500),
          _espacio(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.headset,
                    size: 50,
                  ),_espacio(),
                  Icon(
                    Icons.send,
                    size: 50,
                  ),_espacio(),
                  Icon(Icons.sentiment_satisfied, size: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.more_vert,
                    size: 50,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
