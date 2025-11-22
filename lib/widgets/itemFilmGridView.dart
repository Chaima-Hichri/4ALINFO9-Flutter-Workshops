import 'package:flutter/material.dart';
class itemFilmGridView extends StatelessWidget {
  final String title;
  final String image;
  const itemFilmGridView({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("$image"),
            SizedBox(height: 6,),
            Text("$title",style: TextStyle(fontWeight: FontWeight.bold),)
           
          ],
        ),
      ) ,
    );
  }
}
