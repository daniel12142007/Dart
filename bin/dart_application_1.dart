import 'dart:collection';

void main() {
  // String firstName = 'Daniel';
  // int age = 17;
  // print('Hi I\'m $firstName and I\'m $age');

  // dynamic dyn = '1';
  // dyn = 2;
  // dyn = 3.33;
  // dyn = false;

  // int a = 20, b = 5;
  // print('+ : ${a + b}');
  // print('- : ${a - b}');
  // print('/ : ${(a / b).toInt()}');
  // print('~/ : ${a ~/ b}');
  // print('* : ${a * b}');
  // print('% : ${a % b}');

  // int a = 11;
  // int result = a >= 6 ? 15 : 25;
  // print(result);

  // var array = [1, 2, 3, 4, 5, 6];
  // array.add(7);
  // array.add(8);
  // array.add(9);
  // array.add(10);
  // array.addAll([11, 12, 13, 14, 15]);
  // array.remove(4); //удаляет переменую по значению
  // array.removeAt(0); //удаляет переменую по index
  // array.removeWhere(
  //     (element) => element < 10); //удаляет элементы по заданому условию
  // print(array);
  // var set = {1,1,2,3,4,5,6};//Set<int> сохраняет только уникальные значение

  // var array = [1, 2, 3, 4, 5, 6];
  // for (var element in array) {
  //   print(element);
  // } //foreach in java

  // array.forEach((el) {
  //   print(el);
  // });

  var person = Person('Daniel', 17);
  person.description();
  var student = Student('Student', 16, '1', 'yes');
  student.description();

  University university = University('Tech University');

  Course course1 = Course('Dart Programming');
  Course course2 = Course('Flutter Development');

  Student student1 = Student('Alice', 20, 'S12345', 'Math');
  Student student2 = Student('Bob', 22, 'S67890', 'Physics');
  Student student3 = Student('Charlie', 23, 'S54321', 'Chemistry');

  course1.addStudent(student1);
  course1.addStudent(student2);

  course2.addStudent(student3);

  university.addCourse(course1);
  university.addCourse(course2);

  university.listCourses();
  university.listAllStudents();
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void description() {
    print('Name: $name \nAge: $age');
  }
}

class Student extends Person {
  String studentId;
  String major;
  Student(super.name, super.age, this.studentId, this.major);
  @override
  void description() {
    print('Name: $name \nAge: $age \nStudent ID: $studentId \nMajor: $major');
  }
}

class Course {
  String courseName;
  List<Student> students;
  Course(this.courseName) : students = [];
  Student addStudent(Student student) {
    students.add(student);
    return student;
  }

  void listStudents() {
    for (var element in students) {
      print(element);
    }
  }
}

class University {
  String universityName;
  List<Course> courses;
  University(this.universityName) : courses = [];
  void addCourse(Course course) {
    courses.add(course);
  }

  void listCourses() {
    for (var element in courses) {
      print(element);
    }
  }

  void listAllStudents() {
    for (var element in courses) {
      for (var el in element.students) {
        print(el);
      }
    }
  }
}
