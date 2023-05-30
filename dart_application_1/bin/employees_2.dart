// Make the following classes:
// "Employee"
// "Manager" inherit "Employee"
// "Cashier" inherit "Employee"}
// "Payroll" use generics to allow only descendants of "Employee" class
// Both "Manager" and "Cashier" clsses should have a "sayHello" function that prints "Hello, I am a Manager/Cashier"
// The "payroll" class should allow adding to an internal list, and a fucntion "print" that calls the "sayHello" function on each employee in the list

class Employee {
  void sayHello() {
    print("Hello, I am an Employee");
  }
}

class Manager extends Employee {
  @override
  void sayHello() {
    print("Hello, I am a Manager");
  }
}

class Cashier extends Employee {
  @override
  void sayHello() {
    print("Hello, I am a Cashier");
  }
}

class Payroll<T extends Employee> {
  List<T> _employees = [];

  void add(T employee) {
    _employees.add(employee);
  }

  void print() {
    _employees.forEach((employee) => employee.sayHello());
  }
}

void main() {
  Manager boss = Manager();
  Cashier worker = Cashier();
  Payroll payroll = Payroll<Employee>();
  payroll.add(boss);
  payroll.add(worker);
  payroll.print();
}
