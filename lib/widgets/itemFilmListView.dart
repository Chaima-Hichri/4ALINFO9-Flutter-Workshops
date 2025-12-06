import 'package:alinfo9_workshops/Constants/Constants.dart';
import 'package:flutter/material.dart';
class itemFilmListView extends StatelessWidget {
  final String title;
  final String image;
  const itemFilmListView({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.network(Constants.base_url+"$image"),
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
