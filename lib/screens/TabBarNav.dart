import 'package:alinfo9_workshops/screens/MyCart.dart';
import 'package:alinfo9_workshops/screens/MyFilmsGridView.dart';
import 'package:alinfo9_workshops/screens/MyFilmsListView.dart';
import 'package:alinfo9_workshops/screens/Profile.dart';
import 'package:alinfo9_workshops/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class TabBarNav extends StatefulWidget {
  const TabBarNav({super.key});

  @override
  State<TabBarNav> createState() => _TabBarNavState();
}

class _TabBarNavState extends State<TabBarNav>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("G-STORE"),
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            icon: Icon(Icons.store),
            text: "Store",
          ),
          Tab(
            icon: Icon(Icons.list_alt),
            text: "Biblio",
          ),
          Tab(
            icon: Icon(Icons.shopping_basket),
            text: "Basket",
          ),
          Tab(
            icon: Icon(Icons.person),
            text: "Profile",
          ),
        ]),
      ),
      body: TabBarView(
        controller: tabController,
          children: [
        MyFilmsListView(),
        MyFilmsGridView(),
        MyCart(),
        Profile(),
      ]),
    );
  }
}
