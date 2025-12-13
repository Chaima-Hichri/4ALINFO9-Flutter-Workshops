import 'package:alinfo9_workshops/DatabaseSqFlite/Mydb.dart';
import 'package:flutter/material.dart';

import '../Widgets/itemBasket.dart';
import '../models/Film.dart';

class MyCart extends StatefulWidget {

  const MyCart({super.key});


  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {


  List<Map<String , dynamic>> filmsBasket=[];


  void refreshBasket() async{
    filmsBasket=await Mydb.getItems();
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshBasket();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: filmsBasket.isNotEmpty

        ?ListView.builder(
            itemCount: filmsBasket.length,
            itemBuilder: (context,index){
              return Itembasket(
                  image: filmsBasket[index]["image"],
                  title: filmsBasket[index]["title"],
                deleteFilm: (){
                    Mydb.removeItem(filmsBasket[index]["id"]);
                    refreshBasket();
                },

              );
            })

            :Center(child: Text("your basket is empty"),)



    );
  }
}