import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatares'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://areajugones.sport.es/wp-content/uploads/2019/07/Saitama-OnePunchMan.jpg.webp') ,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: (){
                // LOGICA como abrir menu de configuracion de cuenta
              },
              child: const CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text('HGB'),
              ),
            ),
          )
        ],
      ),
      body: Center(
        // HACE UNA ANIMACION DE FUNDIDO Y ADEMAS NOS DEJA PONER UN WIDGET DE TIPO PLACEHOLDER
        child: FadeInImage(
          image: NetworkImage('https://i.blogs.es/dac973/saitama/1024_2000.webp'),
          fadeInDuration: Duration(seconds: 2),
          fadeInCurve: Curves.fastLinearToSlowEaseIn,
          placeholder: AssetImage('assets/loading.gif'),
        ),
      ),
    );
  }
}