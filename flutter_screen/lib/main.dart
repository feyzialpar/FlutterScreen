import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //appBar: AppBar(title: Text('Flutter Screen'),),
      body: Stack(
        
        children: <Widget>[
          Image.network('https://git.serenayyazilim.com/testing/flutter-screen-05/uploads/587b0833e77576fbb10cdc8c7a30d3a0/tanitim4-ui.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover),

        Container(
          //padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
          alignment: new FractionalOffset(1.0, 0.10),
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Text('Bildirimleri Açın, Nasibinizi Kaçırmayın!',
          textAlign: TextAlign.center, 
          style: TextStyle(fontSize: 40, color:Colors.white, fontWeight:FontWeight.w900 ) ,
          ),),

        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom:140.0, left: 15, right: 15),
          child: Text('Size gelen mesajlardan, profilinizi gezenlerden, sizi selamlayan ve beğenenlerden aynı zamanda kampanya ve indirimlerden haberdar olmak için bildirimlere izin verin. ',
          textAlign: TextAlign.center,           
          style: TextStyle(fontSize: 20, color:Colors.white, fontWeight: FontWeight.w500),),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 390.0, left: 150, right: 150),
          child: const Image(
          image: NetworkImage('https://git.serenayyazilim.com/testing/flutter-screen-05/uploads/6d9f5354d7a36ee4e4c02fff3fec6222/Bildirimlere-izin-ver__1_.png'),
          width: 100,
          height: 100,
          ),
        ),
          
        Align(
          alignment: Alignment(0.0, 0.50),

          child: TextButton(
          onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
          title: const Text('Bildirim İzni'),
          content: const Text('Bildirimlere izin vermek istiyor musun?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Hayır'),
              child: const Text('Hayır'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Evet'),
              child: const Text('Evet'),
            ),
          ],
        ),
      ),
      child: const Text('Bildirimlere izin ver',
      style: TextStyle(fontSize: 20, color:Colors.white, fontWeight:FontWeight.w500, decoration: TextDecoration.underline ) ,),
    )
  ),

        Align(
          alignment: const Alignment(0.0, 0.90),

          child: TextButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: Text('Devam et',
          style: TextStyle(fontSize: 20, color:Colors.white, fontWeight:FontWeight.w300, decoration: TextDecoration.underline ),
          ),
          
          ),
        )
        ],
        ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("İkinci Sayfaya Hoş Geldiniz!", style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}

