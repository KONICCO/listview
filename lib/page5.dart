import 'package:flutter/material.dart';

class page5 extends StatelessWidget {
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
                    "https://akcdn.detik.net.id/visual/2021/01/14/candi-sukuh-3_169.jpeg?w=650"))),
      
      ),
    ));
  }
}
