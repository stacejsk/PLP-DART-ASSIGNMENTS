class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define a third class to create student and teacher objects and call their respective methods
class School {
  void createAndPrintInfo() {
    var student = Student('John Doe', 15, 'Grade 10');
    var teacher = Teacher('Jane Smith', 35, 'Math');

    // Print student information
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  var school = School();
  school.createAndPrintInfo();
}
