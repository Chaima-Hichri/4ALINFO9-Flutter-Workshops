import 'package:alinfo9_workshops/screens/MyCart.dart';
import 'package:alinfo9_workshops/screens/MyFilmsGridView.dart';
import 'package:alinfo9_workshops/screens/MyFilmsListView.dart';
import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex=0;
  List<Widget> interfaces =[MyFilmsListView(),MyFilmsGridView(),MyCart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("G-STORE"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
          onTap: (value){
          setState(() {
            pageIndex=value;
          });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.store),label: "Store"),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: "Biblio"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "Basket"),
      ]),
      body:interfaces[pageIndex] ,
    );
  }
}
