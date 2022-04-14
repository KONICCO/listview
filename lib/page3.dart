import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
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
                    "http://indrajatim.com/assets/admin/upload/berita/candi-jago-situs-bersejarah-pendharmaan-ranggawuni-ijt46jpg"))),
      
      ),
    ));
  }
}
