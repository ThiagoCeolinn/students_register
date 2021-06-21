import 'package:flutter/material.dart';
import 'package:register/screens/home/list_of_students.dart';
import 'package:register/screens/registers/form_edit.dart';
import 'package:register/screens/registers/form_register.dart';
import 'package:register/screens/registers/form_remove.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => ListOfStudents(),
        "/insert": (BuildContext context) => FormRegister(),
        "/edit": (BuildContext context) => FormEdit(),
        "/remove": (BuildContext context) => FormRemove(),
      },
    ),
  );
}
