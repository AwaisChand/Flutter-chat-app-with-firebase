
import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/view/home/components/appbar.dart';
import 'package:chat_app/view/home/components/drawer.dart';
import 'package:chat_app/view/home/components/tab_bar.dart';
import 'package:chat_app/view/home/components/tabbar_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldKey,
          drawer: drawer(),
          backgroundColor: bgColor,
          floatingActionButton: FloatingActionButton(
            backgroundColor: bgColor,
            onPressed: (){},
            child: const Icon(Icons.add),
          ),
          body:  Container(
              child: Column(
                children: [
                  appBar(scaffoldKey),
                  Expanded(
                    child: Row(
                      children: [
                        tabBar(),
                        tabBarView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

        ),
      ),
    );
  }
}
