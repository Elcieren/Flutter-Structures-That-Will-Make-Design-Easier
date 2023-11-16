import 'package:flutter/material.dart';

class AramaSayfasi extends StatefulWidget {
  AramaSayfasi(Key k) :super(key:k);
  

  @override
  State<AramaSayfasi> createState() => _AramaSayfasiState();
}

class _AramaSayfasiState extends State<AramaSayfasi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (contex,index){
      return Container(
        padding: EdgeInsets.all(5),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(10),
        color: index %2==0?Colors.pink.shade200 :Colors.pink.shade600,
        child: Center(child: Text(index.toString()),),
        ),
    );
    },itemCount:50 ,itemExtent: 250,);
    
  }
}