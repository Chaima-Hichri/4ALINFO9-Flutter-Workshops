import 'package:alinfo9_workshops/Constants/Constants.dart';
import 'package:flutter/material.dart';
class itemFilmListView extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback addToFav;
  final bool isFavorite;
  const itemFilmListView({super.key,required this.title,required this.image,required this.isFavorite,required this.addToFav});

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
                  InkWell(
                      onTap: addToFav,
                      child: Icon(Icons.star,color:isFavorite? Colors.amber : Colors.grey,size: 25,))
                ],
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
