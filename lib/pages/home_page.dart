// 1. IMPORTAR MATERIAL
import 'package:flutter/material.dart';

// 2. CREAR LA PAGINA DE TIPO: .STELSS O .STFULL


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PINTAMOS LOS ELEMENTIOS A PARTIR DE UNA LISTA
    // CREACION DE VARIABLE TIPO FINAL

    final List<Map<String, dynamic>> componentes = [
      {
        'title': 'Alertas',
        'icon' : const Icon(Icons.message_outlined), // -> si no encuentro el icono visitar web material icons (fonts.google.com -> iconos)
        'ruta' : 'alert'
      },
      {
        'title': 'Avatares',
        'icon' : const Icon(Icons.account_circle_outlined),
        'ruta' : 'avatar'
      },
      {
        'title': 'Cards',
        'icon' : const Icon(Icons.format_align_justify_rounded),
        'ruta' : 'card'
      },
      {
        'title': 'MiCardsPage',
        'icon' : const Icon(Icons.add_a_photo_outlined),
        'ruta' : 'miCardPage'
      },
      {
        'title': 'Inputs',
        'icon' : const Icon(Icons.account_box),
        'ruta' : 'inputs'
      },

    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('COMPONENTES'),
        ),
        // PINTAMOS UNA LISTA DE OBJETOS A PARTIR DE LA LISTA QUE HAY ARRIBA (FINAL LIST MAP, LINEA 15)
        /*body: ListView(
          children: const [
          ListTile(
            title: Text('Titulo del elemento'),
            subtitle: Text('Subtítulo del elemnto'),
            leading: FlutterLogo(),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          ),
          ListTile(
            title: Text('Titulo del elemento'),
            subtitle: Text('Subtítulo del elemnto'),
            leading: FlutterLogo(),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          )
        ],*/
        // Lo generamos de forma dinámica
        body: ListView.builder(
          // NECESITA SABER EL TAMAÑO DE LA LISTA -> itemCount
            itemCount: componentes.length,
            // context -> HACE REFERENCIA AL stateful O stateless WIDGET / AL WIDGET PADRE DONDE SE ESTÁ PINTANDO
            itemBuilder: (BuildContext context, int index) {
              // CARD -> le pone bordes al ListTile
              return Card(
                margin: EdgeInsets.all(7),
                child: ListTile(
                  onTap: (){
                    // NAVEGACION ENTRE PANTALLAS
                    Navigator.pushNamed(context, componentes[index]['ruta']);
                  },
                  title: Text(componentes[index]['title']),
                  leading: componentes[index]['icon'],
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
              );
            }
        )
    );
  }
}