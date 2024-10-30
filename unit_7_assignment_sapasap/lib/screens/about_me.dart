import 'package:flutter/material.dart';
import 'package:unit_7_assignment_sapasap/components/tab_widget_1.dart';
import 'package:unit_7_assignment_sapasap/components/tab_widget_2.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("Get to know me",
              style: TextStyle(color: Colors.yellow[700])),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.yellow[700],
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.yellow[700],
            tabs: const [
              Tab(
                icon: Icon(Icons.computer),
                text: "Tab 1",
              ),
              Tab(
                icon: Icon(Icons.sports_volleyball),
                text: "Tab 2",
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: const TabBarView(
            children: [
              TabWidget1(),
              TabWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}
