import 'dart:convert';

import 'package:alinfo9_workshops/Constants/Constants.dart';
import 'package:alinfo9_workshops/screens/Details.dart';
import 'package:alinfo9_workshops/widgets/CustomDrawer.dart';
import 'package:alinfo9_workshops/widgets/itemFilmListView.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/Film.dart';

class MyFilmsListView extends StatefulWidget {
  const MyFilmsListView({super.key});

  @override
  State<MyFilmsListView> createState() => _MyFilmsListViewState();
}

class _MyFilmsListViewState extends State<MyFilmsListView> {
  final List<Film> myfilms=[];
  late Future<bool> fetchedFilms;

  Future<bool> getFilms() async{
    final response=await http.get(
      Uri.parse(Constants.base_url+"/movies")
    );
    if(response.statusCode==200){
      List<dynamic> filmsFromServer = json.decode(response.body);
      for(var item in filmsFromServer){
        myfilms.add(Film(item['title'],item['image'],item['description'],item['price']));
      }
    }
    return true;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchedFilms=getFilms();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: fetchedFilms,
            builder: (context,snapshot){
              if(snapshot.hasData && myfilms.isNotEmpty){
                return ListView.builder(
                    itemCount: myfilms.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details(film: myfilms[index])));
                          },
                          child: itemFilmListView(
                              title: myfilms[index].title, image: myfilms[index].image));
                    });
              }
              else{
                return Center(child: CircularProgressIndicator(),);

              }
            }

        )

    );
  }
}
