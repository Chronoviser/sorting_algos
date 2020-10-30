import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "PRACTICAL ASSIGNMENT",
                    style: TextStyle(
                        fontFamily: 'Righteous',
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Design And Analysis of Algorithms",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  Image(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.45,
                    image: AssetImage('assets/images/nitj.gif'),
                  ),
                  Text(
                    "Submitted to :",
                    style: TextStyle(fontFamily: 'Pacifico', fontSize: 20),
                  ),
                  Text(
                    "Department of Computer Science and Engineering",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Dr. Kunwar Pal",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Problem Description",
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  "Group 1(Roll_No 01 to 20): You have to design a graphical user interface for sorting algorithms (selection sort, bubble sort, insertion sort, merge sort, quick sort, heap sort and linear time sorting) where user select the sorting algorithm and enter the input (ascending, descending or random order) for the algorithm. Your program/software will display the output (elements in sorted order) along with the complexity of selected algorithm. Also write a separate program to plot a comparative the graphs of these algorithms.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(image: AssetImage('assets/images/developer.png')),
          ),
          Padding(
              padding: const EdgeInsets.only(
                  left: 6.0, right: 6.0, top: 5.0, bottom: 2.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/abhishek.jpg'))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Abhishek Singh\n\n18103007\n\nCSE 2nd Year",
                        style: TextStyle(
                            fontFamily: 'Righteous',
                            fontSize: 20.0,
                            color: Colors.red),
                      ),
                    )
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 6.0, right: 6.0, top: 2.0, bottom: 2.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Aditya Gedam\n\n18103009\n\nCSE 2nd Year",
                        style: TextStyle(
                            fontFamily: 'Righteous',
                            fontSize: 20.0,
                            color: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/adityag.jpg'))),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 6.0, right: 6.0, top: 2.0, bottom: 2.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/adityak.jpg'))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Aditya Khandelwal\n\n18103010\n\nCSE 2nd Year",
                        style: TextStyle(
                            fontFamily: 'Righteous',
                            fontSize: 20.0,
                            color: Colors.orangeAccent),
                      ),
                    )
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 6.0, right: 6.0, top: 2.0, bottom: 4.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Aman Kumar Rahi\n\n18103015\n\nCSE 2nd Year",
                        style: TextStyle(
                            fontFamily: 'Righteous',
                            fontSize: 20.0,
                            color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/aman.jpg'))),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
