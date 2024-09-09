import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //dount tab
    const MyTab (
      iconPath: 'lib/icons/dount.png',
      ),
    //burger tab
    const MyTab (
      iconPath: 'lib/icons/burger.png',
      ),
    //smoothie tab
    const MyTab (
      iconPath: 'lib/icons/smoothie.png',
      ),
    //pancake tab
    const MyTab (
      iconPath: 'lib/icons/pancake.png',
      ),
    //pizza tab
    const MyTab (
      iconPath: 'lib/icons/pizza.png',
      )
  ];

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading:Icon(
            Icons.menu,
            color: Colors.grey[800],
            ),
            actions: const [Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )],
        ),
        body: const Column(
          children: [
            //Texto "i want to eat"
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text("I want to eat",style: TextStyle(fontSize: 24,)),
                  Text("Eat",style:TextStyle(fontSize: 24, fontWeight: FontWeight.bold, decoration: TextDecoration.underline) )
                ],
              ),
      
            ),
            //Tab bar view
           TabBar(tabs: myTabs)
            //Total del carrito
          ],
          ),
      ),
    );
  }
}
