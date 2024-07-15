import 'package:abc/p1.dart';
import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  //int cnt = 0, c1 = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => p1()));
                },
                icon: Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => p1()));
                },
                icon: Icon(Icons.app_registration)),
            label: 'Options',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => p1()));
                },
                icon: Icon(Icons.account_box)),
            label: 'Profile',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue[800],
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 25),
                        child: Text(
                          'Hi, Jared',
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 231, 242)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220.0, top: 10),
                        child: Icon(
                          Icons.notification_add,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
