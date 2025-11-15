import 'package:flutter/material.dart';
class itemFilm extends StatelessWidget {
  final String title;
  final String image;
  const itemFilm({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("assets/images/$image"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(Icons.star,color: Colors.amber,size: 25,)
                ],
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
