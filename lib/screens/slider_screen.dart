import 'package:flutter/material.dart';
import 'package:flutter_application_example/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider && Checks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  min: 40,
                  max: 400,
                  activeColor: AppTheme.primary,
                  divisions: 10,
                  value: _sliderValue,
                  onChanged: ((value) {
                    _sliderValue = value;
                    setState(() {});
                  })),
              Image(
                image: const NetworkImage(
                    "https://c0.klipartz.com/pngpicture/791/718/gratis-png-batman-superman-diana-prince-dc-universo-animado-dibujo-batman.png"),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              const SizedBox(height: 20)
            ],
          ),
        ));
  }
}
