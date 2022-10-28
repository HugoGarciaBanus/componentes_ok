import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // CUANDO LLAMEMOS A setSate() SE REDIBUJA LA PAGINA
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Variables => les doy un valor inicial

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(),
        children: [
          _nombreInput(),
          Text(nombre),
        ],
      ),

    );
      Widget _nombreInput(){
      return TextField(
        // control mayúsculas
        textCapitalization: TextCapitalization.characters,
        // estilos
        decoration: InputDecoration(
          // borde
          //borde:  OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          ),
            //counterText: nonbre.length.toString() + '/20',
            //counterStyle: nombre.length >=20 ? Textstyle(coler: Colors. red)
            //: TextStyle(colorColors.blue),
          hintText: 'Escriba su nombre',
          // Etiqueta para especificar el nombre del input
          label: Text('Nombre'),
          helperText: 'Unicamente el nombre',
          icon: Icon(Icons.account_box),
          focusColor: Colors.amber,
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 4, color: Colors.amber),

        ),
        onchanged: (value){
          // guardar lo que hay en el input
          setState(() {   // <- actualiza la vista
            nombre = value;
          });
        }
      );
    }

  }
}
