import 'package:flutter/material.dart';
import 'model.dart';
import 'detailscreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Customers",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text(
                              "Add New",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                      ],
                    )),
              ],
            ),
          ),
          Expanded(         /// Expanded use for prevent error by listView 
            child: ListView.builder(
                itemCount: listuser.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => detailscreen(
                                userlist: listuser[index],
                              )));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("${listuser[index].image}"),
                    ),
                    title: Text("${listuser[index].username}"),
                    subtitle: Text("${listuser[index].age}"),
                    trailing: Text("${listuser[index].day}"),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
