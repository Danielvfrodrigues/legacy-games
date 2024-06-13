import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_spin_wheel/my_spin_wheel.dart';

import '../../core/database/repository.dart';

class SpinwheelScreen extends StatefulWidget {
  const SpinwheelScreen({super.key});

  @override
  State<SpinwheelScreen> createState() => _SpinwheelScreenState();
}

class _SpinwheelScreenState extends State<SpinwheelScreen> {
  MySpinController mySpinController = MySpinController();
  List<int> _availableValues = [1, 2, 3, 4, 5, 6];
  int _randomValue = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: Color(0xff0C1B3A)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MySpinner(
                mySpinController: mySpinController,
                wheelSize: screenWidth * 0.9,
                itemList: [
                  SpinItem(label: '', color: const Color(0xffe00000)),
                  SpinItem(label: '', color: const Color(0xffffd813)),
                  SpinItem(label: '', color: const Color(0xff75AB53)),
                  SpinItem(label: '', color: const Color(0xffe00000)),
                  SpinItem(label: '', color: const Color(0xffffd813)),
                  SpinItem(label: '', color: const Color(0xff75AB53)),
                ],
                onFinished: (p0) {},
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                  onPressed: () async {
                    _randomValue = _getRandomValue();
                    await mySpinController.spinNow(
                        luckyIndex: _randomValue,
                        totalSpin: 10,
                        baseSpinDuration: 20);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenWidth * 0.8, 50)),
                  child: const Text('Girar')),
            ],
          ),
        ),
      ),
    );
  }

  int _getRandomValue() {
    final repository = Repository();
    if (_availableValues.isEmpty) {
      // Reset the list when all values have been used
      _availableValues = [1, 2, 3, 4, 5, 6];
    }

    final random = Random();
    int randomIndex = random.nextInt(_availableValues.length);
    int value = _availableValues[randomIndex];
    _availableValues.removeAt(randomIndex);

    repository.addMember(value);

    return value;
  }
}
