// Create a new dart class called employee.dart
// It should have two input arguments "name" and "position"
// It should have a method called "printEmployee" that prints the name and position

class Employee {
  String? name;
  String? position;

  Employee(String? name, String? position) {
    this.name = name;
    this.position = position;
  }

  void printEmployee() {
    print('Name: ${this.name} \nPosition: ${this.position}');
  }
}

void main(List<String> arguments) {
  Employee emp1 = Employee('John', 'Manager');
  Employee emp2 = Employee('Mary', 'Accountant');
  Employee emp3 = Employee('Mike', 'Salesman');

  emp1.printEmployee();
  emp2.printEmployee();
  emp3.printEmployee();
}
