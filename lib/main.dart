import 'package:flutter/material.dart';
import 'package:hello/shop.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon( Icons.shopping_cart),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return MyShop(title: 'Shop', cookie: _counter);
          },));
        },
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/background.jpeg'),
            )
          ),
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text(
              'Vous avez $_counter: cookies',
              style: Theme.of(context).textTheme.headline5,
            ),
            GestureDetector(
                onTap: () { _incrementCounter();},
                child: ClipRRect(
                  child: Image.asset('images/cookie.png'),
              ),
            )
          ],
        ),
      )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
