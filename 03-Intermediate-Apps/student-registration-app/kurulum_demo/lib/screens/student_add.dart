import 'package:flutter/material.dart';
import 'package:kurulum_demo/validation/student_validator.dart';

import '../models/student.dart';

class StudentAdd extends StatefulWidget {
  late List<Student> students;
  StudentAdd(List<Student> students){
    this.students = students;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentAddState(students);
  }
}

class _StudentAddState extends State with StudentValidationMixin {
  late List<Student> students;
  _StudentAddState(List<Student> students){
    this.students = students;
  }
  var student = Student.withoutInfo();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Öğrenci Ekle"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              buildFirstNameField(),
              buildLastNameField(),
              buildGradeField(),
              buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFirstNameField() {
    return TextFormField(
      validator: validateFirstName,
      onSaved: (value) {
        student.firstName = value!;
      },
      decoration: (InputDecoration(
          labelText: "Öğrenci Adı", hintText: "Öğrenci Adını Gir")),
    );
  }

  Widget buildLastNameField() {
    return TextFormField(
      validator: validateLastName,
      onSaved: (value) {
        student.lastName = value!;
      },
      decoration: (InputDecoration(
          labelText: "Öğrenci Soyadı", hintText: "Öğrenci Soyadını Gir")),
    );
  }

  Widget buildGradeField() {
    return TextFormField(
      validator: validateGrade,
      onSaved: (value) {
        student.grade = int.parse(value!);
      },
      decoration: (InputDecoration(labelText: "Aldığı Not", hintText: "65")),
    );
  }

  Widget buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if(formKey.currentState!.validate()){
          formKey.currentState!.save();
          students.add(student);
          Navigator.pop(context);
        }
      },
      child: Text("Kaydet"),
    );
  }
}
