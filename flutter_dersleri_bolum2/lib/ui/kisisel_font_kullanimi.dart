import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  const KisiselFont({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Center(
            child:Text(
              "Kişisel Font Kullanimi",
              style: TextStyle(
                fontFamily: 'Genel',
                fontSize: 36,
                fontWeight: FontWeight.bold
                ),
                )
                 ),
                 Center(
            child:Text(
              "Kişisel Font Kullanimi",
              style: TextStyle(
                fontFamily: 'ElYazisi',
                fontSize: 36,
                fontWeight: FontWeight.w700
                ),
                )
                 ),
                 Center(
            child:Text(
              "Kişisel Font Kullanimi",
              style: TextStyle(
               // fontFamily: 'Genel',
                fontSize: 36,
                fontWeight: FontWeight.w700
                ),
                )
                 ),
                 Center(
            child:Text(
              "Kişisel Font Kullanimi",
              style: TextStyle(
                fontFamily: 'Genel',
                fontSize: 36
                ),
                )
                 ),
                 Center(
            child:Text(
              "Kişisel Font Kullanimi",
              style: TextStyle(
                
                fontSize: 36
                ),
                )
                 ),
        ],
      );
  }
}