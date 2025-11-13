abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle({required this.brand, required this.model, required this.year});

  String start();
  String stop();

  String displayInfo() {
    return 'Vehicle Info: $year $brand $model';
  }

  int calculateVehicleAge(int currentYear) {
    return currentYear - year;
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car({
    required String brand,
    required String model,
    required int year,
    required this.numberOfDoors,
  }) : super(brand: brand, model: model, year: year);

  @override
  String start() {
    return 'Starting the car engine...';
  }

  @override
  String stop() {
    return 'Stopping the car engine...';
  }

  @override
  String displayInfo() {
    return '${super.displayInfo()} (${numberOfDoors} doors)';
  }
}

class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle({
    required String brand,
    required String model,
    required int year,
    required this.hasWindshield,
  }) : super(brand: brand, model: model, year: year);

  @override
  String start() {
    return 'Starting the motorcycle engine...';
  }

  @override
  String stop() {
    return 'Stopping the motorcycle engine...';
  }

  @override
  String displayInfo() {
    return '${super.displayInfo()} (Has windshield: $hasWindshield)';
  }
}

void main() {
  var car = Car(brand: 'Toyota', model: 'Camry', year: 2020, numberOfDoors: 4);
  var motorcycle = Motorcycle(brand: 'Honda', model: 'CBR', year: 2021, hasWindshield: true);

  List<Vehicle> vehicles = [car, motorcycle];

  for (var vehicle in vehicles) {
    print(vehicle.displayInfo());
    print(vehicle.start());
    print(vehicle.stop());
    print(''); // Empty line for readability
  }

  final currentYear = DateTime.now().year;
  print('Car age: ${car.calculateVehicleAge(currentYear)} years');
  print('Motorcycle age: ${motorcycle.calculateVehicleAge(currentYear)} years');
}
