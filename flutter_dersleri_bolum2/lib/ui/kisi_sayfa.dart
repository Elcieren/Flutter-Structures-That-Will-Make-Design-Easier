import 'package:flutter/material.dart';

class KisiSayfa extends StatelessWidget {
  KisiSayfa(Key k):super(key: k);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 25,itemExtent: 150,itemBuilder: (context, index) {
      return Card(
        child: Column(  
      mainAxisSize: MainAxisSize.min,  
      children: <Widget>[  
         ListTile(  
          leading: Icon(Icons.album, size: 45),  
          title: Text(index.toString()),  
          subtitle: Text(index.toString()),  
        ),  
      ], 
       
    ),
      );
      
    },);
  }
}