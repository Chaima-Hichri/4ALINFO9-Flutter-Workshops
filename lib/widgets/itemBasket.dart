
import 'package:alinfo9_workshops/Constants/Constants.dart';
import 'package:flutter/material.dart';

class Itembasket extends StatelessWidget {
  final String image;
  final String title ;
  final VoidCallback deleteFilm;

  const Itembasket({super.key, required this.title,required this.image,required this.deleteFilm});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(Constants.base_url+"$image" ,width: 150,),
          Text("$title"),
          GestureDetector(
              onTap: deleteFilm,
              child: Icon(Icons.delete,size: 30,color: Colors.red,))

        ],
      ),
    );
  }
}