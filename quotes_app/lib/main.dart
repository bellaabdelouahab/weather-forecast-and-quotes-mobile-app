import 'package:flutter/material.dart';
import 'nav_bar.dart';
import 'myquote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My first App',
      home: MyHomePage(title: 'My first App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 15;
  List<Quote> atext = [
    Quote(
        "The greatest glory in living lies not in never falling, but in rising every time we fall.",
        "author"),
    Quote("The way to get started is to quit talking and begin doing.", "sdsd"),
    Quote("Your time is limited, so don't waste it living someone else's life.",
        "sd"),
    Quote(
        "If life were predictable it would cease to be life, and be without flavor. ",
        "sd"),
    Quote(
        "being short is okkey , if the sky falls down tall peaple will die first ",
        "dfdf")
  ];
  void _incrementCounter() {
    setState(() {
      atext.add(Quote("HEllo THere", "sdsdff", false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: atext
            .map(
              (e) => Card(
                margin: const EdgeInsets.all(8.0),
                color: Colors.blue,
                child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        e.getquote(e),
                        const SizedBox(height: 8.0),
                        Text(
                          e.author,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  e.getquote(e, false);
                                });
                              },
                              label: const Text("Modify"),
                              icon: const Icon(Icons.edit),
                              style: TextButton.styleFrom(
                                primary: Colors.white, //Text Color
                                backgroundColor: Colors
                                    .amberAccent, //Button Background Color
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  atext.remove(e);
                                });
                              },
                              label: const Text("delete"),
                              icon: const Icon(Icons.delete),
                              style: TextButton.styleFrom(
                                primary: Colors.white, //Text Color
                                backgroundColor:
                                    Colors.teal, //Button Background Color
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
