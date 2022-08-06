// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ytclone/layout.dart';

class Collections extends StatefulWidget {
  Collections({Key? key}) : super(key: key);

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      ListTile(
                        title: Text('History'),
                        leading: Icon(Icons.history),
                      ),
                      ListTile(
                        title: Text('Your Video'),
                        leading: Icon(Icons.video_collection_outlined),
                      ),
                      ListTile(
                        title: Text('Your Film'),
                        leading: Icon(Icons.filter_drama_outlined),
                      ),
                      ListTile(
                        title: Text('Watch Later'),
                        leading: Icon(Icons.punch_clock_outlined),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Playlist'),
                      SizedBox(height: 20),
                      Column(
                        children: List.generate(4, (index) {
                          String id = (index + 1).toString();

                          return Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    'https://picsum.photos/id/$id/600/300',
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Playlist $id',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'Lorem ipsum',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '0 Video',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                )
              ],
            );
          },
          childCount: 1,
        ),
      ),
    );
  }
}
