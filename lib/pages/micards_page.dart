import 'package:flutter/material.dart';

class MiCardPage extends StatelessWidget {
  const MiCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi card page'),
      ),
        body: ListView(
          children: [
            miCard(),
            miCardImage(),
            miCardDesign(),
            miCardImageCarga(),
          ],
        )
    );
  }

  Card miCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('PERROS'),
            subtitle: Text(
                'Perros en adopción'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () => {}, child: Text('Aceptar')),
              TextButton(onPressed: () => {}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }

  Card miCardImage() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: [ // children: <Widget>
          Image(
            image: NetworkImage(
                'https://www.elcorreo.com/xlsemanal/wp-content/uploads/sites/5/2022/08/perros-comunicacion-humanos-lenguaje-mascotas.jpg'),
          ),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(10),
            child: Text('Perros'),
          ),
        ],
      ),
    );
  }

  Card miCardImageCarga() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                'https://www.mastercat.cl/wp-content/uploads/2017/10/PORTADA-RAZAS.jpg'),
            fadeInDuration: Duration(seconds: 2),
            fadeInCurve: Curves.fastLinearToSlowEaseIn,
            placeholder: AssetImage('assets/loading.gif'),
          ),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(10),
            child: Text('Gatos'),
          )
        ],
      ),
    );
  }

  Card miCardDesign() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xF2E0CF6E),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Gatos'),
            subtitle: Text(
                'Gatos en adopción'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text('Aceptar')),
              TextButton(onPressed: (){}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }
}