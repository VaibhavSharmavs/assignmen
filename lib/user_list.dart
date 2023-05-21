import 'package:assigment/data/dummydata.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Map<String, dynamic>> userlist = user;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        padding: EdgeInsets.all(20),
        height: 120,
        width: 300,
        duration: Duration(seconds: 2),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade800, Colors.purple.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 4,
            color: Colors.amberAccent,
          ),
        ),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 10,
              mainAxisExtent: 30,
            ),
            itemCount: userlist.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                height: 10,
                width: 20,
                child: ListTile(
                  leading: Text("${userlist[index]['name']}"),
                  trailing: Text("${userlist[index]['ruppe']}"),
                  // subtitle: Text("${DateTime.now().millisecond.toString()}"),
                ),
              );
            }));
  }
}
