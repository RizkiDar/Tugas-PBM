import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: "Tugas Pertemuan 5",
      home: PageSatu(),
    );
  }
}

class PageSatu extends StatefulWidget {
  const PageSatu({super.key});

  @override
  State<PageSatu> createState() => _PageSatuState();
}

class _PageSatuState extends State<PageSatu> {
  final Future<SharedPreferences> _preferece = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preferece;
    setState(() {
      _isBool = !_isBool;
      if (_isBool == true) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DashboardPage()));
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preferece;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DashboardPage(),
        ));
      }
    });
  }

  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: _Boolean, child: Text('Sign In')),
        ]),
      )),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                width: 200,
                height: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/Foto.jpeg"),
                ),
              ),
              Text(
                "Ganti Foto",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 300,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 5.0,
                          color: Color.fromARGB(255, 238, 238, 238),
                          child: Container(
                            width: 300,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Muhamad Rizki Darmawan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Card(
                          elevation: 5.0,
                          color: Color.fromARGB(255, 238, 238, 238),
                          child: Container(
                            width: 300,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("2010631170072@student.unsika.ac.id",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            width: 100,
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: ElevatedButton(
                                  onPressed: (() {}), child: Text("Sign Out")),
                            )),
                      ]))
            ],
          ),
        ),
      ),
    );

    ;
  }
}
