// Create a person class that has an age getter but not a setter
// Set the age in the class constructor

class Person {
  int? _age;

  Person(int age) {
    _age = age;
  }

  int? get getAge => _age;
}

void main(List<String> arguments) {
  Person person = Person(30);
  print(person.getAge);
}
