// The "Hotel" class should have a "guests" variable as an interger.
class Hotel {
  int? guests;
}

// The abstract "House" class should have a "rooms" variable as an interger and a function "ringDoorbell" that prints "Ding Dong!".
abstract class House {
  int? rooms;
  void ringDoorbell() {
    print("Ding Dong!");
  }
}

// Make a "Bed and Breakfast" class that inherits a "House" class and uses a "Hotel" class as an interface.
// The "Bed and Breakfast" class will need to implement the "House" properties and functions.
// Implement the "Hotel" properties and functions.
class BedAndBreakfast extends House implements Hotel {
  @override
  int? guests;

  @override
  int? rooms;

  @override
  void ringDoorbell() {
    print("Ding Dong!");
  }
}

void main() {
  var bedAndBreakfast = BedAndBreakfast();
  bedAndBreakfast.guests = 10;
  bedAndBreakfast.rooms = 5;
  bedAndBreakfast.ringDoorbell();
  print(bedAndBreakfast.guests);
  print(bedAndBreakfast.rooms);
}
