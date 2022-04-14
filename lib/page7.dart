import 'package:flutter/material.dart';

class page7 extends StatelessWidget {
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
                    "https://www.pinhome.id/info-area/wp-content/uploads/2022/03/Candi-Cetho-4.jpg"))),
      
      ),
    ));
  }
}
