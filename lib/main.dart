import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_game/questions.dart';
import 'package:kids_game/radial_hero.dart';

void main() {
  //runApp(MyApp());
    runApp(MaterialApp(home: RadialExpansionDemo()));

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        //padding: EdgeInsets.all(2.0),
        scrollDirection: Axis.vertical,
        crossAxisCount: 4,
        children: [
          Hero(
              tag: 'Ragini',
              child: SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg')),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
          SIngleImageLayout(imageUri: 'assets/images/Ragini.jpg'),
        ],
      ),
    );
  }
}

class SIngleImageLayout extends StatefulWidget {
  final String imageUri;
  const SIngleImageLayout({
    Key key,
    this.imageUri,
  }) : super(key: key);

  @override
  _SIngleImageLayoutState createState() => _SIngleImageLayoutState();
}

class _SIngleImageLayoutState extends State<SIngleImageLayout> {
  double _opacity = 1.0;

  @override
  void initState() {
    //  implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Earlier code
        // setState(() {
        //   _opacity = (_opacity == 1.0) ? 0.0 : 1.0;
        // });
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return GameStartScreen();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 1.0,
          ),
        ),
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: _opacity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                child: Image.asset(
                  widget.imageUri,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Text(
                  'Ragini',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameStartScreen extends StatelessWidget {
  const GameStartScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guess Who I Am'),),
      body: Hero(
          tag: 'Ragini',
          child: Column(
            children: [
              Center(child: Image.asset('assets/images/Ragini.jpg')),
              Flexible(child: QuestionWidget())
            ],
          )),
    );
  }
}

