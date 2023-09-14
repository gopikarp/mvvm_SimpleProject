import 'package:flutter/material.dart';
import 'package:mvvm_pro/viewmodels/car_viewmodel.dart';

class CarView extends StatefulWidget {
  final CarViewModel viewModel;

  CarView({required this.viewModel});

  @override
  State<CarView> createState() => _CarViewState();
}

class _CarViewState extends State<CarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Control App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Car Color:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              widget.viewModel.car.color,
              style: const TextStyle(fontSize: 36, color: Colors.blue),
            ),
            const Text(
              'Car Speed:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${widget.viewModel.car.speed} mph',
              style: const TextStyle(fontSize: 36, color: Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.viewModel.updateColor('Red');
                });
                // print('click red');
              },
              child: const Text('Change Color to Red'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.viewModel.updateColor('Blue');
                });
              },
              child: Text('Change Color to Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.viewModel.updateSpeed(60);
                });
              },
              child: Text('Set Speed to 60 mph'),
            ),
          ],
        ),
      ),
    );
  }
}
