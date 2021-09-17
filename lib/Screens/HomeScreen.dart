import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kamyafashion/Screens/HosieryScreen.dart';
import 'package:kamyafashion/Screens/KidsScreen.dart';
import 'package:kamyafashion/Screens/MensScreen.dart';
import 'package:kamyafashion/Screens/WomenScreen.dart';
import 'package:kamyafashion/Widgets/CustomCarousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(14.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg'),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Men's",
              ),
              Tab(
                text: 'Women',
              ),
              Tab(text: 'Kids'),
              Tab(
                text: 'Hosiery',
              )
            ],
          ),
          title: Text('Kamya Fashion'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
            )
          ],
          elevation: 20.0,
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              MensScreen(),
              WomenScreen(),
              KidsScreen(),
              HosieryScreen()
            ],
          ),
        ),
      ),
    );
  }
}