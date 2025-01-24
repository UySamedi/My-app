import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
              color: Colors.white,
            );
          },
        ),
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Hello Flutter",
          style: TextStyle(color: Colors.white),
          ),
        ),

        actions: [
          IconButton(
            onPressed: (){},
             icon: const Icon(
             Icons.search,
              color: Colors.white,
            ),
            ),
          IconButton(
            onPressed: (){},
             icon: const Icon(
             Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 250,
              height: 250,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 250,
              height: 250,
              color: Colors.blue,
            ),
          ), 
          
        ],
      ),
    );
  }
}