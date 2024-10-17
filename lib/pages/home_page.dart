import 'package:flutter/material.dart';
import '../utils/my_tab.dart';

//importar 5 tabs
import '../tab/Burger_Tab.dart';
import '../tab/donut_tab.dart';
import '../tab/PanCake_Tab.dart';
import '../tab/Pizza_Tab.dart';
import '../tab/Smoothie_Tab.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //Donut tab
    const MyTab(
      iconPath: 'lib/icons/icons/donut.png',
      ),
    //burger tab
    const MyTab(
      iconPath: 'lib/icons/icons/burger.png',
      ),
    //smoothie tab
    const MyTab(
      iconPath: 'lib/icons/icons/smoothie.png',
      ),
    //pancake tab
    const MyTab(
      iconPath: 'lib/icons/icons/pancakes.png',
      ),
    //pizza tab
    const MyTab(
      iconPath: 'lib/icons/icons/pizza.png',
      )
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.menu, 
            color:Colors.grey[800],
            ),
        ),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 24.0),
          child: Icon(Icons.person),
        )],
        ),
        body:  Column(
      children: [
        // Texto "I want to eat"
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Row(
            children: [
              Text("I want to ", style: TextStyle(fontSize: 24,),),
              Text("Eat", style: TextStyle(fontSize: 24, 
              fontWeight: FontWeight.bold, 
              decoration: TextDecoration.underline)
              ), 
            ],
          ),
        ), 
        //Tab bar
        TabBar(tabs: myTabs),
        //Tab bar view
      
        Expanded(
           child: TabBarView(children: [
        DonutTab(),
        const BurgerTab(),
        const SmoothieTab(),
        const PanCakeTab(),
        const PizzaTab()]
        ))
        //Total del carrito      
      ],),
      ),
    );
  }
}