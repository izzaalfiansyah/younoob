// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ytclone/layout.dart';

class Shorts extends StatefulWidget {
  Shorts({Key? key}) : super(key: key);

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
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
                    child: Stack(
                      children: [
                        Image.network(
                          'https://picsum.photos/id/$photoId/600/300',
                          height: size.height - 100,
                          width: size.width,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                color: Colors.black.withOpacity(0.25),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10, left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.thumb_up,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '100 k',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.thumb_down,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '0',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.comment,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '8,6 k',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.5),
                                    ]
                                  )
                                ),
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lorem ipsum dolor sit amet consecteur.',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.purple,
                                          ),
                                          margin: EdgeInsets.only(right: 10),
                                          child: Center(
                                            child: Text(
                                              'M',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'User $id',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
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
