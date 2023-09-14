import '../models/car_model.dart';

class CarViewModel {
  final CarModel car;

  CarViewModel({required this.car});

  void updateSpeed(int newSpeed) {
    car.speed = newSpeed;
  }

  void updateColor(String newColor) {
    car.color = newColor;
  }
}
