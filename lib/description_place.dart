import 'package:flutter/material.dart';
import 'package:proyeto_flutter/rounded_button.dart';

class DescriptionPlace extends StatelessWidget {
  final String textoTitulo;
  final int cantidadEstrellas;
  final String textoDescripcion;

  const DescriptionPlace(this.textoTitulo, this.cantidadEstrellas, this.textoDescripcion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titulo = Container(
      margin: const EdgeInsets.only(right: 20),
      child: Text(
        textoTitulo,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 38,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final estrella = Container(
      margin: const EdgeInsets.only(right: 5),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final estrellaBorde = Container(
      margin: const EdgeInsets.only(right: 5),
      child: const Icon(
        Icons.star,
        color: Colors.black54,
      ),
    );

    // Generar estrellas según cantidad
    List<Widget> estrellas = [];
    for (int i = 0; i < 5; i++) {
      estrellas.add(i < cantidadEstrellas ? estrella : estrellaBorde);
    }

    final filaEstrellas = Row(children: estrellas);

    final filaTitulo = Row(
      children: <Widget>[
        titulo,
        filaEstrellas,
      ],
    );

    final descripcion = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        textoDescripcion,
        style: const TextStyle(
          fontFamily: "Lato",
          color: Colors.black54,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        filaTitulo,
        descripcion,
        RoundedButton("Navigate"),
      ],
    );
  }
}
