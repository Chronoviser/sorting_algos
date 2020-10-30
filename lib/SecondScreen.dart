import 'package:flutter/material.dart';
import 'sortclass.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  String algo;

  SecondScreen(this.algo);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String userInput, userOutput = "";
  List inputArray = [];
  bool negative = false, aboveOne = false;
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.algo + " Sort"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.text,
                  maxLines: 10,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 1.0)),
                      labelText: "Enter Space Separated Input Array",
                      hintText: "like : 5 7 9 10 4",
                      labelStyle: TextStyle(color: Colors.black)),
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                )),
            Container(
              width: 110.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    userInput = _controller.text;
                    inputArray.clear();
                    if (validInput()) {
                      getInputArray();
                      if ((widget.algo == "Count" || widget.algo == "Radix") &&
                          negative) {
                        userOutput = "Cannot Accept 😭 negative values";
                        negative = false;
                      } else {
                        callSortingAlgo(widget.algo);
                        giveUserOutput();
                      }
                    } else {
                      userOutput = "Invalid Input 😡";
                    }
                  });
                },
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                color: Colors.black,
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Sort",
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    userOutput,
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Image(image: AssetImage('assets/images/complexity.png')),
        onPressed: () {
          showAlertDialog(widget.algo);
        },
        elevation: 6.0,
      ),
    );
  }

  void getInputArray() {
    userInput = trimTheString(userInput);
    String temp = "";
    for (int i = 0; i < userInput.length; i++) {
      if (userInput[i] == ' ') {
        if (int.parse(temp) < 0) {
          negative = true;
        }
        inputArray.add(int.parse(temp));
        temp = "";
      } else {
        temp = temp + userInput[i];
      }
    }
    inputArray.add(int.parse(temp));
    if (int.parse(temp) < 0) negative = true;
  }

  String trimTheString(String s) {
    s = s.trim();
    for (int i = 1; i < s.length;) {
      if (s[i] == ' ' && s[i - 1] == ' ') {
        s = s.replaceRange(i, i + 1, "");
      } else
        i++;
    }
    return s;
  }

  void giveUserOutput() {
    userOutput = "";
    for (int i = 0; i < inputArray.length; i++) {
      userOutput += inputArray[i].toString() + " ";
    }
  }

  void callSortingAlgo(String algo) {
    switch (algo) {
      case "Selection":
        inputArray = SortInput.SelectionSort(inputArray);
        break;
      case "Bubble":
        inputArray = SortInput.BubbleSort(inputArray);
        break;
      case "Insertion":
        inputArray = SortInput.InsertionSort(inputArray);
        break;
      case "Merge":
        SortInput.MergeSort(inputArray, 0, inputArray.length - 1);
        break;
      case "Quick":
        SortInput.QuickSort(inputArray, 0, inputArray.length - 1);
        break;
      case "Heap":
        SortInput.HeapSort(inputArray);
        break;
      case "Count":
        inputArray = SortInput.CountSort(inputArray);
        break;
      case "Radix":
        SortInput.RadixSort(inputArray);
        break;
    }
  }

  bool validInput() {
    for (int i = 0; i < userInput.length; i++) {
      if (userInput[i] == ' ' ||
          userInput[i] == '-' ||
          userInput[i] == '0' ||
          userInput[i] == '1' ||
          userInput[i] == '2' ||
          userInput[i] == '3' ||
          userInput[i] == '4' ||
          userInput[i] == '5' ||
          userInput[i] == '6' ||
          userInput[i] == '7' ||
          userInput[i] == '8' ||
          userInput[i] == '9') {
      } else
        return false;
    }

    for (int i = 1; i < userInput.length; i++) {
      if (userInput[i] == ' ' && userInput[i - 1] == '-')
        return false;
      else if (userInput[i] == '-' && userInput[i - 1] == '-') return false;
    }
    if (userInput[userInput.length - 1] == '-') return false;
    return true;
  }

  void showAlertDialog(String algo) {
    String imageString = '';
    String best = "", average = "", worst = "", scomp = "";
    switch (algo) {
      case "Selection":
        imageString = "selection";
        best = "Ω(n^2)";
        average = "θ(n^2)";
        worst = "O(n^2)";
        scomp = "1";
        break;
      case "Bubble":
        imageString = "bubble";
        best = "Ω(n)";
        average = "θ(n^2)";
        worst = "O(n^2)";
        scomp = "1";
        break;
      case "Insertion":
        imageString = "insertion";
        best = "Ω(n)";
        average = "θ(n^2)";
        worst = "O(n^2)";
        scomp = "1";
        break;
      case "Merge":
        imageString = "merge";
        best = "Ω(n log(n))";
        average = "θ(n log(n))";
        worst = "O(n log(n))";
        scomp = "n";
        break;
      case "Quick":
        imageString = "quicksort";
        best = "Ω(n log(n))";
        average = "θ(n log(n))";
        worst = "O(n^2)";
        scomp = "nlog(n)";
        break;
      case "Heap":
        imageString = "heap";
        best = "Ω(n log(n))";
        average = "θ(n log(n))";
        worst = "O(n log(n))";
        scomp = "1";
        break;
      case "Count":
        imageString = "count";
        best = "Ω(n+k)";
        average = "θ(n+k)";
        worst = "O(n+k)";
        scomp = "nk";
        break;
      case "Radix":
        imageString = "radix";
        best = "Ω(nk)";
        average = "θ(nk)";
        worst = "O(nk)";
        scomp = "n+k";
        break;
    }
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text(
                "\t\tTime Complexity",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Container(
                height: 300,
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Best",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(best)
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Avg.",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(average)
                            ],
                          )),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                "Worst",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(worst)
                            ],
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Text(
                      "Space Complexity : O($scomp)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    SizedBox(height: 30),
                    Expanded(
                      child: Image(
                        image:
                            AssetImage('assets/images/' + imageString + '.gif'),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
