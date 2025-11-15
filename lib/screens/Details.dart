import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("House of Dead"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/images/HouseOfDead.jpg"),
            SizedBox(height: 20,),
            Text("House of the Dead can refer to several things, most commonly a 1996 arcade light gun shooter video game where players shoot zombies to stop a mad scientist, or a 1978 novel by Fyodor Dostoevsky about his experiences in a Siberian prison camp"),
            SizedBox(height: 40,),
            Text("300 DT",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
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
