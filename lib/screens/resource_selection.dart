import 'package:flutter/material.dart';
import "./add_resource.dart";
import "./search_resource.dart";

class ResourceSelection extends StatefulWidget {
  ResourceSelection({Key? key}) : super(key: key);

  @override
  _ResourceSelectionState createState() => _ResourceSelectionState();
}

class _ResourceSelectionState extends State<ResourceSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text("Resource Selection"),
          Center(
            child: ElevatedButton(
              child: Text('Add Resource'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddResource()),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Search Resource'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SeatchResource(),
                    ));
                //search resource function
              },
            ),
          ),
        ],
      ),
    ));
  }
}
