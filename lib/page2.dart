import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
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
                    "https://mmc.tirto.id/image/otf/880x495/2020/12/14/istock-148036332.jpg"))),
      
      ),
    ));
  }
}
