// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  Layout({Key? key, required this.child}) : super(key: key);

  final SliverList child;

  List routes = [
    {
      'path': '/',
      'title': 'Dashboard',
      'icon': Icons.home,
    },
    {
      'path': '/shorts',
      'title': 'Shorts',
      'icon': Icons.storage_outlined,
    },
    {
      'path': '/subscribtions',
      'title': 'Subscribtions',
      'icon': Icons.subscriptions_outlined,
    },
    {
      'path': '/collections',
      'title': 'Collections',
      'icon': Icons.collections_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var path = ModalRoute.of(context)?.settings.name;

    return Scaffold(
        body: CustomScrollView(
          // ignore: prefer_const_literals_to_create_immutables
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              floating: true,
              snap: true,
              pinned: false,
              // expandedHeight: 80,
              flexibleSpace: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.subscriptions,
                                color: Colors.red,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Younoob',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 20),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.purpleAccent,
                                ),
                                child: Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            child,
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: routes.map((item) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, item['path']);
                },
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      item['icon'],
                      color: item['path'] == path ? Colors.red : Colors.grey[800],
                    ),
                    Text(
                      item['title'],
                      style: TextStyle(
                        fontSize: 10,
                        color: item['path'] == path ? Colors.red : Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}
