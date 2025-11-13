import 'package:test/test.dart';
import '../question4.dart';

void main() {
  group('Question 4 Tests - Vehicle Inheritance', () {
    late Car car;
    late Motorcycle motorcycle;

    setUp(() {
      car = Car(
        brand: 'Toyota',
        model: 'Camry',
        year: 2020,
        numberOfDoors: 4,
      );
      motorcycle = Motorcycle(
        brand: 'Honda',
        model: 'CBR',
        year: 2021,
        hasWindshield: true,
      );
    });

    test('Car should be initialized correctly', () {
      expect(car.brand, 'Toyota');
      expect(car.model, 'Camry');
      expect(car.year, 2020);
      expect(car.numberOfDoors, 4);
    });

    test('Motorcycle should be initialized correctly', () {
      expect(motorcycle.brand, 'Honda');
      expect(motorcycle.model, 'CBR');
      expect(motorcycle.year, 2021);
      expect(motorcycle.hasWindshield, true);
    });

    test('displayInfo should return correct information', () {
      expect(car.displayInfo(), 'Vehicle Info: 2020 Toyota Camry (4 doors)');
      expect(motorcycle.displayInfo(), 'Vehicle Info: 2021 Honda CBR (Has windshield: true)');
    });

    test('start method should return correct string', () {
      expect(car.start(), 'Starting the car engine...');
      expect(motorcycle.start(), 'Starting the motorcycle engine...');
    });

    test('stop method should return correct string', () {
      expect(car.stop(), 'Stopping the car engine...');
      expect(motorcycle.stop(), 'Stopping the motorcycle engine...');
    });

    test('calculateVehicleAge should return the correct age', () {
      // Assuming the current year is 2024 for testing purposes
      final currentYear = 2024;
      expect(car.calculateVehicleAge(currentYear), 4);
      expect(motorcycle.calculateVehicleAge(currentYear), 3);
    });
  });
}
