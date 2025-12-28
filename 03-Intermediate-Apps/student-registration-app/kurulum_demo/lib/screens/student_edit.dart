import 'package:flutter/material.dart';
import 'package:kurulum_demo/validation/student_validator.dart';

import '../models/student.dart';

class StudentEdit extends StatefulWidget {
  late Student selectedStudent;
  StudentEdit(Student selectedStudent){
    this.selectedStudent = selectedStudent;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentAddState(selectedStudent);
  }
}

class _StudentAddState extends State with StudentValidationMixin {
  late Student selectedStudent;
  _StudentAddState(Student selectedStudent){
    this.selectedStudent = selectedStudent;
  }
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
      initialValue: selectedStudent.firstName,
      validator: validateFirstName,
      onSaved: (value) {
        selectedStudent.firstName = value!;
      },
      decoration: (InputDecoration(
          labelText: "Öğrenci Adı", hintText: "Öğrenci Adını Gir")),
    );
  }

  Widget buildLastNameField() {
    return TextFormField(
      initialValue: selectedStudent.lastName,
      validator: validateLastName,
      onSaved: (value) {
        selectedStudent.lastName = value!;
      },
      decoration: (InputDecoration(
          labelText: "Öğrenci Soyadı", hintText: "Öğrenci Soyadını Gir")),
    );
  }

  Widget buildGradeField() {
    return TextFormField(
      initialValue: selectedStudent.grade.toString(),
      validator: validateGrade,
      onSaved: (value) {
        selectedStudent.grade = int.parse(value!);
      },
      decoration: (InputDecoration(labelText: "Aldığı Not", hintText: "65")),
    );
  }

  Widget buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if(formKey.currentState!.validate()){
          formKey.currentState!.save();
          Navigator.pop(context);
        }
      },
      child: Text("Kaydet"),
    );
  }

}
