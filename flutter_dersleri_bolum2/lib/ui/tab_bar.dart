import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  const TabOrnek({super.key});

  @override
  State<TabOrnek> createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tab Kullanimi"),
      bottom: tabBarim(),
      ),
      bottomNavigationBar: tabBarimBottom(),
      body: TabBarView(controller: tabController,children: [
        Container(
          color: Colors.red,
          child: Center(child: Text("TAB 1",style: TextStyle(fontSize: 48),)),
        ),
        Container(
          color: Colors.blue,
          child: Center(child: Text("TAB 2",style: TextStyle(fontSize: 48),)),
        ),
        Container(
          color: Colors.green,
          child: Center(child: Text("TAB 3",style: TextStyle(fontSize: 48),)),
        ),
      ]),
      
    );
  }

  TabBar tabBarim() {
    return TabBar(
      controller: tabController,
      tabs: [
      Tab(
        icon: Icon(Icons.keyboard),
        text: "Tab 1"),
      Tab(
        icon: Icon(Icons.access_alarm_sharp),
        text: "Tab 2",),
      Tab(
        icon: Icon(Icons.ac_unit_sharp),
        text: "Tab 3",),
    ]);
  }
  Widget tabBarimBottom() {
    return Container(
      color: Colors.teal,
      child: TabBar(
        controller: tabController,
        tabs: [
        Tab(
          icon: Icon(Icons.ac_unit_sharp),
          text: "Tab 1"),
        Tab(
          icon: Icon(Icons.account_balance),
          text: "Tab 2",),
          Tab(
          icon: Icon(Icons.account_balance),
          text: "Tab 3",)
        
      ]),
    );
  }

}