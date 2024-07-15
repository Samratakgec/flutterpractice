import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              SizedBox(
                  height: 150,
                  width: 150,
                  child: Card(
                      elevation: 5,
                      child: Image.asset(
                        'assets/images/flat1.jpg',
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                  height: 150,
                  width: 150,
                  child: Card(
                      elevation: 5,
                      child: Image.asset(
                        'assets/images/flat2.webp',
                        fit: BoxFit.cover,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
