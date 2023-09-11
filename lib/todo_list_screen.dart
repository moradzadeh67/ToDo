import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme
              .of(context)
              .primaryColor,
          child: Icon(Icons.add),
          onPressed: () => print('navigate'),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 80),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Task', style: TextStyle(color: Colors.black,
                        fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text('1 of 10', style: TextStyle(color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),),

                  ],
                ),
              );
            }
            return Container(
              height: 100,
              width: double.infinity,
              color: Colors.pink,
            );
          },
        )

    );
  }
}
