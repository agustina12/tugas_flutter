import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TugasKedua(),
    );
  }
}

class TugasKedua extends StatelessWidget {
  const TugasKedua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:Text(
                      "Daftar Tontonan Anime",
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                    ), 
                  ), 
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0),
                    child: Image.network("https://lh3.googleusercontent.com/S8-JimYp0uyLZAXoRinTe9O_FqGjDn3COHWuhYlvkZvS8EvBqdxKiEZa7inp2_IGmnk", 
                    height: 20,),
                  ) 
                  
                  // Icon(Icons.movie, color: Colors.red,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 8, 5, 10),
                child: Text(
                  "Aplikasi Nonton Anime",
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                height: 720,
                child: ListView(
                  children: [
                    // Padding(padding: const EdgeInsets.only(left: 5.0),
                    ListTile(
                      // horizontalTitleGap: 0,
                      // jarak line dari kiri kekanan 
                      leading: Text('1', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,),
                      ),
                      title: Text('Kaizoku Oujo'),
                      trailing: Icon(
                        Icons.delete_outline
                        ),
                    ),
            
                    Divider(height: 50), //garis
                    ListTile(
                      leading: Text('2', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                      ),
                      title: Text('Re-Main'),
                      trailing: Icon(
                        Icons.delete_outline
                      ),
                    ),
                    Divider(height: 50), //garis
                    ListTile(
                      leading: Text('3', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                      ),
                      title: Text('Shiroi Suna no Aquatope'),
                      trailing: Icon(
                        Icons.delete_outline
                      ),
                    ),
                    Divider(height: 50),
                    ListTile(
                      leading: Text('4', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                      ),
                      title: Text('Yakunara Mug Cup mo: Niban Gama'),
                      trailing: Icon(
                        Icons.delete_outline
                      ),
                    ),
                    Divider(height: 50), //garis     
                    ListTile(
                      leading: Wrap(
                        children: [
                          Icon(Icons.check_box_outlined),
                        ],
                        
                      ),
                      title: Text('Demon Slayer', 
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Saya adalah karakter dianime demon slayer sebagai tanjiro kakanya netsuko',
                        style: TextStyle(
                          fontSize: 12, 
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          letterSpacing: 0.2),
                      ),
                      trailing: Wrap(
                        spacing: 10,
                        children: [
                          Icon(Icons.remove_red_eye_outlined),
                          Icon(Icons.favorite_outline),
                        ],
                      ),
                    ),
                    Divider(height: 50), //garis     
                    ListTile(
                      leading: Wrap(
                        children: [
                          Icon(Icons.check_box_outlined),
                        ],
                        
                      ),
                      title: Text('Nama saya Tanjiro', 
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Saya adalah karakter dianime demon slayer sebagai tanjiro kakanya netsuko',
                        style: TextStyle(
                          fontSize: 12, 
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          letterSpacing: 0.2),
                      ),
                      trailing: Wrap(
                        spacing: 10,
                        children: [
                          Icon(Icons.remove_red_eye_outlined),
                          Icon(Icons.favorite_outline),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}


