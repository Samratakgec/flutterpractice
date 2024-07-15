import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  int cnt = 0;
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Text(
              'Click this -',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        Center(
            child: InkWell(
          onTap: () {
            setState(() {
              cnt++;
            });
          },
          child: Image.asset('assets/images/cola.png'),
        )),
        Text('Samrat Srivastava'),
        Text('You clicked $cnt times'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                cnt = 0;
                //  print('reset');
              });
            },
            child: Text('Reset')),
        ElevatedButton(
            onPressed: () {
              setState(() {
                // cnt = 0;
                //  print('reset');
                isvisible = !isvisible;
              });
            },
            child: Text('show/hide below container')),
        Visibility(
          visible: isvisible,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.pink,
        ),
        SizedBox(
          height: 20,
        ),
        // Destination screen
        Hero(
          tag: 'avatarHero',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/pizza.png'),
            radius: 100.0,
          ),
        )
      ],
    ));
  }
}
