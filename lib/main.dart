import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'image demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get style => null;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwULnDJ9064QfOvPcDxSluzL4pRvHx8VtVFzYnZ3A-XA5jDleYk3sPNtREexgSyGdlzTA&usqp=CAU'),
            Image.asset("image/tree.jpeg"),
            Text('tree image',style: GoogleFonts.farsan(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.purpleAccent),),



          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
