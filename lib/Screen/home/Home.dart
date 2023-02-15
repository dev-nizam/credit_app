import 'package:credits/Screen/home/supplier/Supplier.dart';
import 'package:flutter/material.dart';

import 'costomer/Costomer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Mheight=MediaQuery.of(context).size.height;
    final Mwidth=MediaQuery.of(context).size.width;
    return
       DefaultTabController(
         length: 2,
         child: Scaffold(
          drawer:  Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('TP Store'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.production_quantity_limits,color: Colors.red,
                  ),
                  title: const Text('Product price view'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.production_quantity_limits,color: Colors.green
                  ),
                  title: const Text('Product price add'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          appBar:  AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.call_received,color: Colors.red,), text: "Costomer",),
                  Tab(icon: Icon(Icons.call_made,color: Colors.green,), text: "Supplier"),
                ],
              ),
              title: const Text('Tp mini supermarket'),
              actions: [
                // Navigate to the Search Screen
                IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => const SearchPage())),
                    icon: const Icon(Icons.search))
              ],
            ),
      body: TabBarView(
        children: [
          Costomer(),
          Supplier(),
        ],
      ),
    ));
  }
}
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}