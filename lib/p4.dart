import 'package:flutter/material.dart';

// ignore: camel_case_types
class p4 extends StatefulWidget {
  const p4({super.key});

  @override
  State<p4> createState() => _p4State();
}

// ignore: camel_case_types
class _p4State extends State<p4> {
  bool switchvalue = false;
  @override
  // ignore: override_on_non_overriding_member
  Color color1 = const Color.fromARGB(250, 255, 231, 194);
  Color color2 = const Color.fromARGB(1, 49, 47, 49);
  Color stylecolor1 = Colors.black;
  Color stylecolor2 = Colors.white;
  Color barcolor1 = Colors.deepOrangeAccent;
  Color barcolor2 = const Color.fromARGB(1, 29, 28, 30);

  late Color stylecolor3 = stylecolor1;
  late Color color3 = color1;
  late Color barcolor3 = barcolor1;

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        title: const Text('Profile'),
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text('Dark theme'),
          ),
          Switch(
              value: switchvalue,
              activeTrackColor: Colors.green[200],
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  switchvalue = newValue;
                  if (switchvalue == false) {
                    color3 = color1;
                    stylecolor3 = stylecolor1;
                    barcolor3 = barcolor1;
                  } else {
                    color3 = color2;
                    stylecolor3 = stylecolor2;
                    barcolor3 = barcolor2;
                  }
                });
              }),
        ],
        backgroundColor: barcolor3,
      ),
      backgroundColor: color3,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: CircleAvatar(
                  radius: 90,
                  child: Image.asset('assets/images/profile_pic.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Samrat Srivastava',
                style: TextStyle(fontSize: 20, color: stylecolor3),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'samratsrivastava_10',
                style: TextStyle(fontSize: 20, color: stylecolor3),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text('ClipRRect')),
                ),
              ),
              // Source screen
              Hero(
                tag: 'avatarHero',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/cola.png'),
                  radius: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
