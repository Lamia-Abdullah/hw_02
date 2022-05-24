import 'dart:io';

List<Map<String, dynamic>> students = [
  {"name": "fahad", "age": 28, "id": 1000297, "pass": false, "Gpa": 59},
  {"name": "ali salem", "age": 21, "id": 1000182, "pass": true, "Gpa": 61},
  {"name": "ali mohesn", "age": 17, "id": 100029, "pass": true, "Gpa": 72},
  {"name": "lamis", "age": 22, "id": 100386, "pass": true, "Gpa": 89},
];

void main() {
  for (var i = 0; i < 11; i++) {
    msgSelect();
    var input = stdin.readLineSync()!;
    selectdUeser(inputUser: input);
  }
}
//message
msgSelect() {
  print("Plesse selete from this:");
  print("1: show all student");
  print("2: search by id");
  print("3: delete user by id");
  print("4: exit");
}
//All list
showAll() {
  print("*************************");
  print(students);
  for (var student in students) {
    print("---------------------");
    print(student);
  }
  print("*******************");
}
//read input for user
selectdUeser({String? inputUser}) {
  if (inputUser == "1") {
    showAll();
  } else if (inputUser == "2") {
    print("enter id");
    var inputID = stdin.readLineSync()!;
    searchById(id: inputID);
  } else if (inputUser == "exit") {
    exit(0);
  } else if (inputUser == "3") {
    print("delete id");
    var inputID = stdin.readLineSync()!;
    deleteById(id: inputID);
  }
}
//SearchById
searchById({String? id}) {
  for (var st in students) {
    if (st["id"] == int.parse(id!)) {
      print(st);
    }
  }
}
//DeleteById
deleteById({String? id}) {
  for (var st1 in students) {
    if (st1["id"] == int.parse(id!)) {
      students.remove(id);
      print(st1);
    }
  }
}
