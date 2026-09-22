import 'package:flutter_application_1/data/models/Person.dart';

class Student extends Person {
  double math;
  double phis;
  double chemical;

  Student({
    required super.id,
    required super.name,
    this.math = 0,
    this.phis = 0,
    this.chemical = 0,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'math': math,
      'phis': phis,
      'chemical': chemical,
    };
  }

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'] as String,
      name: json['name'] as String,
      math: (json['math'] as num).toDouble(),
      phis: (json['phis'] as num).toDouble(),
      chemical: (json['chemical'] as num).toDouble(),
    );
  }
}
