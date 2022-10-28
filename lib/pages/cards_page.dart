import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card page'),
      ),
      body: ListView(
        children: [
          // click y comando+.->(VISUAL STUDIO)
          _cardTipo1(),
          _cardTipo2(),

        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const ListTile(
            title: Text('Título del card'),
            leading: FlutterLogo(),
            subtitle: Text('Subtítulo'),
          ),
          const Text('Contenido de la noticia DATA'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text('CANCELAR')),
              TextButton(onPressed: (){}, child: Text('ACEPTAR')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      color: Colors.amber,
      shadowColor: Color.fromARGB(255, 138, 106, 8),
      clipBehavior: Clip.antiAlias,
      elevation: 25,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),// CAMBIA EL GROSOR DEL BORDE Y EL RADIO
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Image( image: NetworkImage(
                  'https://areajugones.sport.es/wp-content/uploads/2019/07/Saitama-OnePunchMan.jpg.webp')),
          const ListTile(
            leading: FlutterLogo(),
            title: Text('Titulo del card'),
            subtitle: Text('Subtitulo'),
          ),
          Text('Contenido de la noticia'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('CANCELAR')),
              TextButton(onPressed: () {}, child: Text('ACEPTAR')),
            ],
          )
        ],
      ),
    );

  }
}