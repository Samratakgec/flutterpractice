import 'package:abc/buy.dart';
import 'package:abc/p1.dart';
import 'package:abc/p3.dart';
import 'package:abc/sell.dart';
import 'package:flutter/material.dart';

class Wh extends StatefulWidget {
  const Wh({super.key});

  @override
  State<Wh> createState() => _WhState();
}

class _WhState extends State<Wh> with TickerProviderStateMixin {
  List<Widget> tabs = [
    Tab(
      text: 'Buy',
    ),
    Tab(
      text: 'Sell',
    )
  ];
  // ignore: unused_field
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('GrihApp'),
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(children: [Buy(), Sell()]),
        ));
  }
}
