import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 100;
  bool sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 600,
              activeColor: AppTheme.primary,
              value: sliderValue,
              onChanged: sliderEnabled
                  ? (value) {
                      sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text(
                  'Habilitar Slider',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                value: sliderEnabled,
                onChanged: (value) => setState(() {
                      sliderEnabled = value;
                    })),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/intermediary/f/59463c31-f924-469d-b7f6-004b5f76e74e/db88iew-2c5362a7-3f7c-48d5-960c-fc281e46ce9a.png'),
                  fit: BoxFit.contain,
                  width: sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
