// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ytclone/layout.dart';

class Subscribtions extends StatefulWidget {
  Subscribtions({Key? key}) : super(key: key);

  @override
  State<Subscribtions> createState() => _SubscribtionsState();
}

class _SubscribtionsState extends State<Subscribtions> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Layout(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            String id = (index + 1).toString();
            String photoId = ((index + 1) * 100).toString();
            return Container(
              child: Column(
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://picsum.photos/id/$photoId/600/300',
                              height: 250,
                              width: size.width,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Container(
                                color: Colors.black,
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  '00:00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Video $id',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.menu),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                  Container(height: 10, color: Colors.grey[200]),
                ],
              ),
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}
