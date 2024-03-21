import 'package:flutter/material.dart';

class MyTabbedPage extends StatefulWidget {
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbed Page Example'),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.directions_car), text: 'Car'),
              Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
              Tab(icon: Icon(Icons.directions_bus), text: 'Bus'),
            ],
          ),
          Container(
            color: Colors.orangeAccent,
            height: 50,
            width: 300,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content for Car tab
                Center(
                  child: Text('Car Tab Content'),
                ),
                // Content for Bike tab
                Center(
                  child: Text('Bike Tab Content'),
                ),
                // Content for Bus tab
                Center(
                  child: Text('Bus Tab Content'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyTabbedPage(),
  ));
}
