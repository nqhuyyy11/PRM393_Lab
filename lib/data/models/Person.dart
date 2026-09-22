import 'package:flutter_application_1/data/models/Student.dart';
import 'package:flutter_application_1/data/models/Teacher.dart';

enum PersonType {
  student,
  teacher,
}

class Person {
  final String id;
  final String name;

  Person({required this.id, required this.name});

  factory Person.create(PersonType pType, Map<String, dynamic> value) {
    if (pType == PersonType.teacher) {
      return Teacher(
        id: value["id"] as String,
        name: value["name"] as String,
      );
    } else {
      return Student.fromJson(value);
    }
  }
}