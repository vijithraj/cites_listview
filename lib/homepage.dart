import 'package:cites_listview/model/modellist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List store = [
    ListData(
        imagepath: "images/delhi.jpg",
        name: "DELHI",
        discription: "India population:19mill"),
    ListData(
        imagepath: "images/London-.jpg.optimal.jpg",
        name: "LONDON",
        discription: "Britain population :8 mill"),
    ListData(
        imagepath: "images/new york.jpg",
        name: "NEW YORK",
        discription: "USA population :8.1 mill"),
    ListData(
        imagepath: "images/vancouver.jpg",
        name: "VANCOUVER",
        discription: "Canada population :2.4 mill"),
    ListData(
  imagepath: "images/new york.jpg",
  name: "JAPAN",
  discription: "Japan population :1.4 mill"),
    ListData(
        imagepath: "images/vancouver.jpg",
        name: "SPAIN",
        discription: "Spain population :2.4 mill"),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cities around world",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: store.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: ListTile(
                    title: Text(
                      store[index].name,
                      style: TextStyle(fontSize: 25,color: Colors.black),
                    ),
                    leading: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(store[index].imagepath),
                          fit: BoxFit.cover)),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(store[index]. discription,
                        style: TextStyle(color: Colors.black26),)
                      ],
                    ),
                  ),
                ),
              ),
            );



          }),
    );
  }
}
