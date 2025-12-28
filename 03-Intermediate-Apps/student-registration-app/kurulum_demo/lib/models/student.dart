class Student {
  int id = 0;
  String firstName = "";
  String lastName = "";
  String imgUrl = "";
  int grade = 1;
  String status = "";

  Student(String firstName, String lastName, String imgUrl, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.imgUrl = imgUrl;
    this.grade = grade;
  }

  Student.withId(int id, String firstName, String lastName, String imgUrl, int grade) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.imgUrl = imgUrl;
    this.grade = grade;
  }

  Student.withoutInfo(){

  }

  String get getStatus {
    String message = "";
    if (grade >= 50) {
      return message = "Geçti";
    } else if (grade >= 40) {
      return message = "Bütünlemeye Kaldı";
    } else {
      return message = "Kaldı";
    }
  }
}
