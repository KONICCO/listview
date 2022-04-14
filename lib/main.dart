// import 'package:flutter/material.dart';

// import 'grid_search.dart';
// import 'home_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rumah Adat',
//       theme: ThemeData(
//         primarySwatch: Colors.brown,
//       ),
//       home: GridSearchScreen(),
//     );
//   }
// }
// main.dart
import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'page6.dart';
import 'page7.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'kelas PBM',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "borobudur",    "lokasi": "sleman",     "detel": page1(),},
    {"id": 2, "name": "Dieng",        "lokasi": "wonosobo",     "detel": page2(),},
    {"id": 3, "name": "Jago",        "lokasi": "malang",      "detel": page3(),},
    {"id": 4, "name": "Arca Gupolo", "lokasi": "sleman",        "detel": page4(),},
    {"id": 5, "name": "Sukuh",          "lokasi": "karanganyar", "detel": page5(),},
    {"id": 6, "name": "Gedong Songo", "lokasi": "semarang" ,    "detel": page6(),},
    {"id": 7, "name": "Cetho",        "lokasi": "karanganyar",  "detel": page7(),},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Nama Candi', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Color.fromARGB(255, 237, 237, 237),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Text(
                              'lokasi: ${_foundUsers[index]["lokasi"]} '),
                          
                          trailing: InkWell(
                          onTap: () {Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext ctx) {
                            return _foundUsers[index]['detel'];
                          }));
                          ;},
                          child: Icon(Icons.description),
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'Candi tidak ditemukan',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}