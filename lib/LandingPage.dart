import 'package:flutter/material.dart';


class LandingPage extends StatefulWidget {

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
      body:
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: ekranGenisligi/15),
                  child: Image.asset("assets/images/Landing.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ekranGenisligi/1.5),
                  child: Text("Settodo is",
                    style: TextStyle(
                    fontFamily: "Poppins Semi",
                      color: Colors.green,
                      fontSize: ekranGenisligi/23,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ekranGenisligi/50, right: ekranGenisligi/2.7),
                  child: Text("Coming",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: ekranGenisligi/8,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ekranGenisligi/1.8),
                  child: Text("Soon",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: ekranGenisligi/8,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      "We are preparing something that will make your life easier. Please continue to follow us 😊",
                      style: TextStyle(
                        fontFamily: "Poppins Semi",
                        color: Color(int.parse("0xFF969696")),
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi/20,
                      ),
                  ),
                ),
                Row(
                  children: [
                      Padding(
                        padding: EdgeInsets.only(left: ekranGenisligi/10, top: ekranGenisligi/18),
                        child: Image.asset(
                            "assets/images/instagram.png",
                            color: Color(int.parse("0xFF969696")),
                          ),
                      ),
                      SizedBox(width: 30,),
                      Padding(
                        padding: EdgeInsets.only(top: ekranGenisligi/18),
                        child: Image.asset(
                            "assets/images/twitter.png",
                            color: Color(int.parse("0xFF969696")),
                          ),
                      ),
                  ],
                ),

              ],
            ),
          ),
        ),

    );
  }
}
