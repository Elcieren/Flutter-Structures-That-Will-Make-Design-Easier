import 'package:flutter/material.dart';

class EkleSayfa extends StatelessWidget {
  EkleSayfa(Key k): super(key:k);

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(100, (i) => '$i');
    return ListView.builder(itemCount: items.length,itemExtent: 100,itemBuilder: (contex,index){
      return Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide())),
        child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xff764abc),
          child: Text(items[index]),
        ),
        title: Text('Item ${items[index]}'),
        subtitle: Text('Item description'),
        trailing: Icon(Icons.more_vert),
          ),
      );}
    );
  }
}