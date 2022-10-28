import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: const StadiumBorder()),
            onPressed: () {
              // AL PRESIONAR DEBERÍA MOSTRAR UNA ALERTA
              // SHOWDIALOG
              _mostrarAlerta(context);
            },
            child: const Text('Mostrar alerta')),
      ),
    );
  }

  _mostrarAlerta(BuildContext context) {
    showDialog(
      // PARA QUE EL USUARIO NO PUEDA CERRAR EL ALERT TOCANDO FUERA ->
        barrierDismissible: false,
        context: context,
        builder: (context) {
          // DIOSPOSITIVO IOS
          if (Platform.isIOS) {
            return CupertinoAlertDialog(
              title: Text('Titulo del Alert'),
              content: Column(
                // EL COLUMN COGE TODA LA ALTURA DEL WIDGET CONTENEDOR POR DEFECTO
                mainAxisSize: MainAxisSize.min,
                children: [Text('Contenido del alert'), FlutterLogo(size: 100)],
              ),
              actions: [
                TextButton(
                  // NAVIGATOR.POP => PARA VOLVER A ATRAS EN LA PILA DE NAVEGACION
                    onPressed: ()=> Navigator.of(context).pop(),
                    child: Text('CANCELAR')),
                TextButton(
                  // NAVIGATOR.POP => PARA VOLVER A ATRAS EN LA PILA DE NAVEGACION
                    onPressed: ()=> Navigator.of(context).pop(),
                    child: Text('ACEPTAR')),
              ],
            );
          }
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.spaceAround,
            title: Text('Titulo del Alert'),
            content: Column(
              // EL COLUMN COGE TODA LA ALTURA DEL WIDGET CONTENEDOR POR DEFECTO
              mainAxisSize: MainAxisSize.min,
              children: [Text('Contenido del alert'), FlutterLogo(size: 100)],
            ),
          );
        }
    );
  }
}