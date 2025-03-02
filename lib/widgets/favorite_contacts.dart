import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favorite Contacts',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      favorites[index].name,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
