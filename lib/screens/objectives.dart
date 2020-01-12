import 'dart:core';

import 'package:flutter/material.dart';

import 'package:ermiry/widgets/expansion_tile.dart';

class ObjectiveScreen extends StatefulWidget {

  @override
  ObjectiveScreenState createState() => ObjectiveScreenState();

}

class ObjectiveScreenState extends State <ObjectiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xFFF1F6Fd),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new _ExpansionTile(
                title: "This is the title",
                description: "Tempora, ab officiis ducimus commodi quibusdam similique quam corporis sequi adipisicing elit lorem ipsum dolor sit amet, consectetur. id, voluptates suscipit quasi nisi.",
              ),
              new _ExpansionTile(
                title: "This is the title",
                description: "Tempora, ab officiis ducimus commodi quibusdam similique quam corporis sequi adipisicing elit lorem ipsum dolor sit amet, consectetur. id, voluptates suscipit quasi nisi.",
              ),
              new _ExpansionTile(
                title: "This is the title",
                description: "Tempora, ab officiis ducimus commodi quibusdam similique quam corporis sequi adipisicing elit lorem ipsum dolor sit amet, consectetur. id, voluptates suscipit quasi nisi.",
              ),
              new _ExpansionTile(
                title: "This is the title",
                description: "Tempora, ab officiis ducimus commodi quibusdam similique quam corporis sequi adipisicing elit lorem ipsum dolor sit amet, consectetur. id, voluptates suscipit quasi nisi.",
              )
              
            ],
          ),
        ),
      ),

      floatingActionButton: new FloatingActionButton (
        elevation: 0.0,
        // child: new Icon(Icons.arrow_forward),
        child: new Text(
          "Next", 
          style: TextStyle (
            color: Colors.indigo, 
            fontWeight: FontWeight.w800,
            fontSize: 18
          )
        ),
        foregroundColor: Colors.indigo,
        backgroundColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: () => {}
        // onPressed: () => Navigator.of(context).pushReplacementNamed('/auth')
      )
    );
  }
}

class _ExpansionTile extends StatelessWidget {

  final String title;
  final String description;

  _ExpansionTile ({
    @required this.title,
    @required this.description
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurableExpansionTile(
      borderColorStart: Colors.grey,
      borderColorEnd: Colors.grey,

      header: new Container(
        height: 40,
        color: Colors.white,
        child: new Center(
          child: new Text(
            this.title, 
            style: new TextStyle(
            color: Color.fromARGB(255, 46, 49, 49),
              fontWeight: FontWeight.w600,
              fontSize: 16
            )
          )
        )
      ),

      headerExpanded: new Container(
        height: 40,
        color: Colors.white,
        child: new Center(
          child: new Text(
            this.title, 
            style: TextStyle (
              color: Colors.indigo, 
              fontWeight: FontWeight.w600,
              fontSize: 16
            )
          )
        )
      ),

      headerBackgroundColorStart: Colors.white,
      headerBackgroundColorEnd: Colors.white,
      expandedBackgroundColor: Colors.white,

      animatedWidgetFollowingHeader: const Icon(
        Icons.expand_more,
        color: Colors.black,
      ),
      
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Container (
                padding: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  border: new Border(
                    left: new BorderSide(
                      color: Colors.indigo,
                      width: 4
                    )
                  )
                ),
                child: Text(
                  this.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,
                  style: TextStyle(height: 1.5),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

}