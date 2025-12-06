import 'package:alinfo9_workshops/models/Film.dart';
import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  final Film film;
  const Details({super.key,required this.film});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(widget.film.image),
            SizedBox(height: 20,),
            Text(widget.film.description),
            SizedBox(height: 40,),
          //  Text(widget.film.price.toString()+" DT",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white
                ),
                child: Row(
                  children: [
                    Icon(Icons.shopping_basket),
                    SizedBox(width: 10,),
                    Text("Acheter")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
