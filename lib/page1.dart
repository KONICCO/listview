import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
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
                    "https://img.inews.co.id/media/822/files/inews_new/2021/06/08/IMG_08062021_114613__822_x_430_piksel_.jpg"))),
      
      ),
    ));
  }
}
