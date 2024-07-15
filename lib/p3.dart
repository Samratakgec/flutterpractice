import 'package:abc/homepage.dart';
import 'package:flutter/material.dart';

class p3 extends StatefulWidget {
  const p3({super.key});

  @override
  State<p3> createState() => _p3State();
}

class _p3State extends State<p3> {
  // ignore: override_on_non_overriding_member
  bool isvisible1 = true,
      // ignore: override_on_non_overriding_member
      isvisible2 = false,
      isvisible3 = false,
      isvisible4 = false;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: isvisible1,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Color.fromARGB(255, 166, 196, 221),
              child: Center(
                  child: Text(
                '1',
                style: TextStyle(fontSize: 65),
              )),
            ),
          ),
          Visibility(
            visible: isvisible2,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.yellow,
              child: Center(
                  child: Text(
                '2',
                style: TextStyle(fontSize: 65),
              )),
            ),
          ),
          Visibility(
            visible: isvisible3,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.orange,
              child: Center(
                  child: Text(
                '3',
                style: TextStyle(fontSize: 65),
              )),
            ),
          ),
          Visibility(
            visible: isvisible4,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                  child: Text(
                '4',
                style: TextStyle(fontSize: 65),
              )),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (isvisible1 == true) {
                      isvisible1 = false;
                      isvisible4 = true;
                    } else if (isvisible2 == true) {
                      isvisible2 = false;
                      isvisible1 = true;
                    } else if (isvisible3 == true) {
                      isvisible3 = false;
                      isvisible2 = true;
                    } else if (isvisible4 == true) {
                      isvisible4 = false;
                      isvisible3 = true;
                    }
                    setState(() {});
                  },
                  child: Text('back')),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (isvisible1 == true) {
                      isvisible1 = false;
                      isvisible2 = true;
                    } else if (isvisible2 == true) {
                      isvisible2 = false;
                      isvisible3 = true;
                    } else if (isvisible3 == true) {
                      isvisible3 = false;
                      isvisible4 = true;
                    } else if (isvisible4 == true) {
                      isvisible4 = false;
                      isvisible1 = true;
                    }
                    setState(() {});
                  },
                  child: Text('next')),
            ],
          )
        ],
      ),
    );
  }
}
