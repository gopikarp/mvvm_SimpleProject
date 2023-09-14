import 'package:flutter/material.dart';
import 'package:mvvm_pro/views/car_view.dart';
import 'package:mvvm_pro/viewmodels/car_viewmodel.dart';
import 'models/car_model.dart';

void main() {
  final carModel = CarModel(color: 'Blue', speed: 0);
  runApp(
    MaterialApp(
      home: CarView(viewModel: CarViewModel(car: carModel)),
    ),
  );
}
