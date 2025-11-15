import 'package:alinfo9_workshops/widgets/itemFilm.dart';
import 'package:flutter/material.dart';
class GStorePage extends StatefulWidget {
  const GStorePage({super.key});

  @override
  State<GStorePage> createState() => _GStorePageState();
}

class _GStorePageState extends State<GStorePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G-STORE",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
           itemFilm(title: "the grudge", image: "thegrudge.jpg"),
           itemFilm(title: "the abyss", image: "theabyss.jpg"),
           itemFilm(title: "iceroad", image: "iceroad.jpg")

          ],
        ),
      ) ,
    );
  }
}
