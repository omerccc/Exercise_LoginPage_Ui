import 'package:flutter/material.dart';
import 'package:flutter_selfmade_4/LandingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xFF151026),
      ),
      home: MyHomePage(title: "Settodo"),
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


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
          title: Text("Settodo", style: TextStyle(fontFamily: 'Poppins'),),
          centerTitle: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(int.parse("0xFF4BCB81")),
                      Color(int.parse("0xFF38B269"))
                    ])
            ),
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/100, bottom: ekranGenisligi/100),
              child: Center(child: Image.asset("assets/images/logoo.png")),
            ),
            Padding(
              padding:  EdgeInsets.only(top: ekranYuksekligi/30),
              child: Text(
                  "Hi ! Welcome to SetToDo",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: ekranGenisligi/20,
                ),
              ),
            ),
            fieldUser(),
            fieldPas(),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/30),
              child: SizedBox(
                width: ekranGenisligi/3,
                height: ekranYuksekligi/15,
                child: ElevatedButton(
                    onPressed: () {
                      print("Giriş yapıldı");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                    },
                    child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(int.parse("0xFF4BCB81")),
                    onPrimary: Colors.black,
                    textStyle: TextStyle(
                      fontFamily: "Poppins Semi",
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),


    );
  }
}

class fieldUser extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "UserName",
                hintStyle: TextStyle(
                  fontFamily: "Poppins Semi",
                  fontWeight: FontWeight.bold,
                ),
                filled: true,
                fillColor: Color(int.parse("0xFF4BCB81")),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class fieldPas extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontFamily: "Poppins Semi",
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: Color(int.parse("0xFF4BCB81")),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

