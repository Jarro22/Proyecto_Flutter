import 'package:flutter/material.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review(
          "assets/imagenes/persona1.jpg",
          "Lurdez Fernandez",
          "1 review - 3 photos",
          2,
          "Buen lugar para visitar.",
        ),
        Review(
          "assets/imagenws/persona2.jpeg",
          "Maria Gomez",
          "4 reviews - 3 photos",
          3,
          "Bonito lugar.",
        ),
        Review(
          "assets/imagenes/persona3.jpeg",
          "Ana Torres",
          "2 reviews - 6 photos",
          4,
          "Tiene buenas vistas.",
        ),
        Review(
          "assets/imagenes/mujer.jpeg",
          "Lucia cartagena",
          "5 reviews - 3 photos",
          2,
          "Iré con mis hijos la próxima vez.",
        ),
        Review(
          "assets/imagenes/persona2.jpeg",
          "Anthony Martinez",
          "1 review - 3 photos",
          2,
          "Buen lugar para acampar.",
        ),
        Review(
          "assets/imagenes/illimani.jpeg",
          "Mario Casas",
          "2 reviews - 3 photos",
          2,
          "Iré con mi esposa.",
        ),
      ],
    );
  }
}
