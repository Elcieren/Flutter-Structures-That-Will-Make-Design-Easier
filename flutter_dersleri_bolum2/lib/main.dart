import 'package:flutter/material.dart';
import 'package:flutter_dersleri_bolum2/ui/ana_sayfa.dart';
import 'package:flutter_dersleri_bolum2/ui/arama_sayfa.dart';
import 'package:flutter_dersleri_bolum2/ui/drawe_menu.dart';
import 'package:flutter_dersleri_bolum2/ui/ekleme_sayfa.dart';
import 'package:flutter_dersleri_bolum2/ui/kisi_sayfa.dart';
import 'package:flutter_dersleri_bolum2/ui/page_view.dart';
import 'package:flutter_dersleri_bolum2/ui/tab_bar.dart';


void main(){
  runApp(const FlutterDersleri());
}
class FlutterDersleri extends StatelessWidget {
  const FlutterDersleri({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme=ThemeData(
      
        fontFamily: 'Genel',
        primarySwatch: Colors.orange,
        
    );
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Derseleri',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.orangeAccent),
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem=0;
 late List<Widget> tumSayfalar;
 late AnaSayfa sayfaAna;
 late AramaSayfasi sayfaArama;
 late EkleSayfa sayfaEkle;
 late KisiSayfa sayfaKisi;
 late PageViewOrnek sayfaPageView;
 late TabOrnek SayfaTab;

 var keyAnaSayfa=PageStorageKey("key_ana_sayfa");
 var keyArama=PageStorageKey("key_arama_sayfa");
 var keyEkle=PageStorageKey("key_ekle_sayfa");
 var keyKisi=PageStorageKey("key_kisi_sayfa");
 var keyPageView=PageStorageKey("key_pageview_sayfa");


 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaAna=AnaSayfa(keyAnaSayfa);
    sayfaArama= AramaSayfasi(keyArama);
    sayfaEkle= EkleSayfa(keyEkle);
    sayfaKisi=KisiSayfa(keyKisi);
    sayfaPageView=PageViewOrnek(keyPageView);
    SayfaTab= TabOrnek();
    tumSayfalar=[sayfaAna,sayfaArama,sayfaEkle,sayfaKisi,sayfaPageView,SayfaTab];
  }
  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      drawer:  DrawerMenu(),
      appBar: AppBar(
        title: const Text("Fluttter Dersleri Bölüm 2"),
      ),
      body: tumSayfalar[secilenMenuItem],
      bottomNavigationBar:bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.orangeAccent,
        canvasColor: Colors.cyan,
        
      ),
      child: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'AnaSayfa',
              backgroundColor: Colors.orange
              ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.call),
              icon: Icon(Icons.search),
              label: 'Ara',
              backgroundColor: Colors.pink
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Ekle',
              backgroundColor: Colors.teal
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profil',
              backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast),
              label: 'PageView',
              backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.nights_stay_sharp),
              label: 'tabBar',
              backgroundColor: Colors.black
              ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: secilenMenuItem,
        //fixedColor: Colors.red,
        onTap: (index){
           setState(() {
             secilenMenuItem=index;
             if (index==5) {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TabOrnek())).then((bb) {
                secilenMenuItem=0;
               });
             }
           });
        },
        ),
    );
  }
}
