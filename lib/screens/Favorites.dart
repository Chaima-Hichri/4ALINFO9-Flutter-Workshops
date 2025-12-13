import 'package:alinfo9_workshops/widgets/itemFilmListView.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../models/Film.dart';
class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  late Box<Film> favoritesBox;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    favoritesBox=Hive.box<Film>('favorites');
  }
void removeFilm(Film film){
  final key = favoritesBox.keys.firstWhere((k)=>favoritesBox.get(k)!.title==film.title);
  favoritesBox.delete(key);
  setState(() {
    
  });
}
  @override
  Widget build(BuildContext context) {
    List<Film> favoritesFilm = favoritesBox.values.toList();
    return Scaffold(
      body: favoritesFilm.isNotEmpty
          ?ListView.builder(
        itemCount:  favoritesFilm.length,
          itemBuilder: (context,index){
          return itemFilmListView(
              title: favoritesFilm[index].title,
              image: favoritesFilm[index].image,
              isFavorite: true,
              addToFav: (){
                removeFilm(favoritesFilm[index]);
              });
          })
          
          :Center(child: Text("No Favorites film yet !"),)
    );
  }
}
