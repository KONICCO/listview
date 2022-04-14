import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {Navigator.pop(context);},
            ),
            
          ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "http://cdn-2.tstatic.net/tribunnews/foto/bank/images/arca-gupolo-jogja_20151014_160726.jpg"))),
      
      ),
    ));
  }
}
