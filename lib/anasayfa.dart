import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: ekranYuksekligi/40,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding:  EdgeInsets.only(left: ekranGenisligi/23, bottom: ekranYuksekligi/65),
              child:   Row(
                  children: [
                   Icon(Icons.dehaze_rounded, size: ekranGenisligi/13 ,),
                   Padding(
                     padding: EdgeInsets.only(left: ekranGenisligi/31.2),
                     child: Text("Hello Ndr!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: ekranGenisligi/21.6),),
                   ),
                  ],
                ),
            ),
           Padding(
             padding:EdgeInsets.only(top:ekranYuksekligi/100.2),
             child: SizedBox(width: ekranGenisligi/1.19,
                child: TextField(
                    decoration:InputDecoration(
                    hintText: "Search the Menu!",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/39.2))),
                  ),
                ),
              ),
           ),
          Padding(
            padding:  EdgeInsets.only(left: ekranGenisligi/12.25, top: ekranYuksekligi/97.8 ),
            child: Row(
              children: [
                 Text("Today's recommendation", style: TextStyle(fontSize: ekranGenisligi/20.6,),),
              ],
            ),
          ),
            Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/97.8),
              child: Image.asset("images/todays.png", width: ekranGenisligi/1.12,),
            ),
           Row(
             children: [
               Padding(
                 padding:  EdgeInsets.only(left:ekranGenisligi/12.25),
                 child: Text("Also on our menu", style: TextStyle(fontSize:ekranGenisligi/23.05 ),),
               ),
             ],
           ),
            Padding(
              padding:  EdgeInsets.only(top:ekranYuksekligi/97.8),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                Image.asset("images/1.png", width: ekranGenisligi/3.35,),
                Image.asset("images/2.png", width: ekranGenisligi/3.35,),
                Image.asset("images/3.png", width: ekranGenisligi/3.35,),
              ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
              Image.asset("images/4.png", width: ekranGenisligi/3.35,),
              Image.asset("images/5.png", width: ekranGenisligi/3.35,),
              Image.asset("images/6.png", width: ekranGenisligi/3.35,),
            ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}