import 'package:flutter/material.dart';
import 'p1.dart';
import 'p2.dart';
import 'p3.dart';
import 'p4.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // ignore: override_on_non_overriding_member
  @override
  // Callback(x) {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => x));
  // }

  // ignore: override_on_non_overriding_member
  var arrimg = [
    Image.asset('assets/images/pizza.png'),
    Image.asset('assets/images/cola.png'),
    Image.asset('assets/images/pizza.png'),
    Image.asset('assets/images/cola.png'),
  ];
  var arrpage = [p1(), p2(), p3(), p4()];
  // int _selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodie'),
      ),
      backgroundColor: Colors.white10,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => p1()));
                  },
                  icon: Icon(Icons.call)),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => p2()));
                    },
                    icon: Icon(Icons.abc)),
                label: 'Camera')
          ]
          // currentIndex: _selectedIndex,
          // onTap: _onitemTapped,
          ),
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Card(
                        child: Image.asset('assets/images/pizza.png'),
                        elevation: 10,
                      ),
                    )),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => arrpage[index]));
                          },
                          child: (Card(
                            child: arrimg[index],
                            color: Colors.black,
                          )),
                        ),
                      );
                    },
                    itemCount: arrimg.length,
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => arrpage[index]));
                          },
                          child: (Card(
                            child: arrimg[index],
                            color: Colors.black,
                          )),
                        ),
                      );
                    },
                    itemCount: arrimg.length,
                  ),
                )
              ]),
            )),
      ),
    );
  }
}
