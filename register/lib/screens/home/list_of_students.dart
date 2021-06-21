
import 'package:flutter/material.dart';
import 'package:register/DAO/studentDAO.dart';
import 'package:register/screens/home/widgets/main_screen.dart';

class ListOfStudents extends StatefulWidget {
  @override
  _ListOfStudentsState createState() => _ListOfStudentsState();
}

class _ListOfStudentsState extends State<ListOfStudents> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StudentDAO.listRecords("students"),
      builder: builder,
    );
  }

  Widget builder(BuildContext context, AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
      case ConnectionState.waiting:
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      default:
        return MainScreen(snapshot.data);
    }
  }
}
