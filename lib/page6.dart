import 'package:flutter/material.dart';

class page6 extends StatelessWidget {
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
                    "https://jejakpiknik.com/wp-content/uploads/2019/11/Candi-Gedong-Songo-630x380-1.jpg"))),
      
      ),
    ));
  }
}
