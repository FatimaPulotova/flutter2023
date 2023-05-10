import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: const MeninWidgetim(),
    );
  }
}

class MeninWidgetim extends StatefulWidget {
  const MeninWidgetim({super.key});

  @override
  State<MeninWidgetim> createState() => _MeninWidgetimState();
}

class _MeninWidgetimState extends State<MeninWidgetim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
          Icon(Icons.access_alarm),
        ],
      ),
      body: Column(
        children: const [
          Text("data"),
          Icon(Icons.ac_unit_sharp),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Text("Bilim"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: const Icon(Icons.message),
                title: const Text("Bilimdu jashtar"),
                subtitle: const Icon(Icons.abc),
              );
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time,
                ),
                label: "Bussiness"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ac_unit,
                ),
                label: "Scool"),
          ]),
    );
  }
}
