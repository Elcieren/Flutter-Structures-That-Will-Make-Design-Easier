import 'package:flutter/material.dart';
import 'package:flutter_dersleri_bolum2/models/veri.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k):super(key:k);


  

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
 late List<Veri> tumVeriler;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumVeriler=[
      Veri("Biz Kimiz","Biz kimizizn içeriği buraya gelicek",false),
      Veri("Biz Neredeyi","Biz kimizizn içeriği buraya gelicek",false),
      Veri("Misyonumuz","Biz kimizizn içeriği buraya gelicek",false),
      Veri("Vizyonumuz","Biz kimizizn içeriği buraya gelicek",false),
      Veri("İletişim","Biz kimizizn içeriği buraya gelicek",false),
      Veri("İletişim","Biz kimizizn içeriği buraya gelicek",false),
      Veri("İletişim","Biz kimizizn içeriği buraya gelicek",false),
      Veri("İletişim","Biz kimizizn içeriği buraya gelicek",false),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (contex,index){
      return ExpansionTile(key: PageStorageKey("$index"),title: Text(tumVeriler[index].baslik),
      initiallyExpanded: tumVeriler[index].extended,
         children: [
          Container(
            color: index %2 ==0 ? Colors.red.shade200 : Colors.yellow.shade300,
            height: 100,
            width: double.infinity,
            child: Text(tumVeriler[index].icerik),
          )
         ],    


      );
    },itemCount: tumVeriler.length,);
  }
}