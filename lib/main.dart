import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sorting_algorithms/developers.dart';
import 'SecondScreen.dart';
import 'developers.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColorBrightness: Brightness.dark, accentColor: Colors.black),
      home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sorting Algorithms"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-1,-1),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                  ),
                  width: 300,
                  height: 300,
                ),
              ),
              Align(
                alignment: Alignment(1.23,0.80),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
              ListView(
              children: [
                Center(
                  child: Card(
                    elevation: 15.0,
                      shadowColor: Colors.black,
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, top: 5.0, bottom: 5.0),
                    child: Text("Select The Sorting Algroithm😊",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 5.0, bottom: 3.0),
                  child: RaisedButton(
                    splashColor: Colors.purple,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Selection");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Selection Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 3.0, bottom: 3.0),
                  child: RaisedButton(
                    splashColor: Colors.indigo,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Bubble");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Bubble Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 3.0, bottom: 3.0),
                  child: RaisedButton(
                    splashColor: Colors.blue,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Insertion");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Insertion Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 3.0, bottom: 3.0),
                  child: RaisedButton(
                    splashColor: Colors.green,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Merge");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Merge Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 3.0, bottom: 3.0),
                  child: RaisedButton(
                    splashColor: Colors.yellow,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Quick");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Quick Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 3.0, bottom: 5.0),
                  child: RaisedButton(
                    splashColor: Colors.orange,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Heap");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Heap Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 15.0,
                      shadowColor: Colors.black,
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Linear Time Sorting Algorithms",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 5.0, bottom: 3.0),
                  child: RaisedButton(
                    splashColor: Colors.deepOrange,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Count");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Count Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 3.0, bottom: 5.0),
                  child: RaisedButton(
                    splashColor: Colors.red,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen("Radix");
                      }));
                    },
                    color: Colors.black,
                    child: Text(
                      "Radix Sort",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Developer();
                        }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Image(
                                  image: AssetImage('assets/images/team.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "About",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),]
          ),
        ));
  }
}
