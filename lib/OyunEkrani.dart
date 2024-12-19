import 'package:bayrak_oyun_uygulamasi/SonucEkrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  const OyunEkrani({super.key});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Ekranı"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Doğru : 1", style: TextStyle(fontSize: 18),),
                Text("Yanlış : 1", style: TextStyle(fontSize: 18),),
              ],
            ),
            Text("1. Soru", style: TextStyle(fontSize: 30),),
            Image.asset("resimler/turkiye.png"),
            SizedBox(width: 250, height: 50, child:
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(dogruSayisi: 3,)));
                },
                child: Text("Button A"),
            ),
            ),
            SizedBox(width: 250, height: 50, child:
            ElevatedButton(
              onPressed: (){

              },
              child: Text("Button B"),
            ),
            ),
            SizedBox(width: 250, height: 50, child:
            ElevatedButton(
              onPressed: (){

              },
              child: Text("Button C"),
            ),
            ),
            SizedBox(width: 250, height: 50, child:
            ElevatedButton(
              onPressed: (){

              },
              child: Text("Button D"),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
