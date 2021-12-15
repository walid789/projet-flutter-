import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MainPage(),
        '/second': (context) => SecondPage(),
        '/add': (context) => AddPage(),
        '/return': (context) => ReturnPage(),
        '/test': (context) => Home(),
        '/dashbord': (context) => Dashbord(),
        '/emprunte': (context) => Emprunte(),
      },
      initialRoute: '/',
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'assets/im1.jpg',
              height: 450,
              width: 559,
            ),
            Text("Find The Best Delas",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                )),
            Text("Lorem ipsum dolor sit amet. Ex deleniti possimus",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                )),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/second'),
                child: const Text('Sign In '),
                style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ],
        ),
      );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Text('Second screen'),
      ),*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image(image: AssetImage('assets/im2.jpg')),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Text('Log In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ))),
          Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'User Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dashbord'),
              child: const Text('Log In '),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
        ],
      ),
    );
  }
}
/* ADD PAGE */

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Second screen'),
      ),*/
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(image: AssetImage('assets/im3.jpg')),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Text('Add New Composant',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ))),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Family Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Composant Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dashbord'),
              child: const Text('Add '),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          )
        ],
      ),
    );
  }
}

class ReturnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Second screen'),
      ),*/
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(image: AssetImage('assets/im4.jpg')),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Text('Return The Composant',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ))),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 20,
              shadowColor: Colors.grey,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Composant Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dashbord'),
              child: const Text('Add '),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _value = 1;
  DateTime date = DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context, initialDate: date, firstDate: DateTime(2020), lastDate: DateTime(2030));
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          Image(image: AssetImage('assets/im4.jpg')),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Text('Return The Composant',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ))),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Composant Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: DropdownButton(
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 30,
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("Intact"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Endommagé"),
                      value: 2,
                    ),
                    DropdownMenuItem(child: Text("Gravement Endommagé"), value: 3),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  })),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(icon: Icon(Icons.calendar_today), onPressed: () => selectTimePicker(context)),
                  //calendar_today
                  hintText: date.toString(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dashbord'),
              child: const Text('Add '),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
        ]));
  }
}

class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              height: 400,
              width: double.infinity,
              color: Colors.pink[400],
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Text("Wlecome Back Admin", style: TextStyle(fontSize: 20.0, color: Colors.white)),
                Text("Do You Want To Lock For Composant", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white)),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 10, 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Material(
                    elevation: 9,
                    shadowColor: Colors.purple,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(icon: Icon(Icons.search)),
                        hintText: "Composant Name ...",
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ])),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/add'),
              child: const Text('Add New Composant '),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/test'),
              child: const Text('Return The Composant'),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/emprunte'),
              child: const Text('Borrow A Comosant'),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: const Text('Listing The Composant'),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
        ]));
  }
}

class Emprunte extends StatefulWidget {
  @override
  _EmprunteState createState() => _EmprunteState();
}

class _EmprunteState extends State<Emprunte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          Image(image: AssetImage('assets/im5.jpg')),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Text('Borrow The Composant',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ))),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Composant Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'First Name+Last Name',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Material(
              elevation: 9,
              shadowColor: Colors.purple,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(icon: Icon(Icons.add_ic_call)),
                  //calendar_today
                  hintText: 'Phone Number',
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dashbord'),
              child: const Text('Borrow'),
              style: ElevatedButton.styleFrom(fixedSize: const Size(300, 60), primary: Colors.purple[800], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
        ]));
  }
}
