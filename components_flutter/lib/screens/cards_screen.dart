import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://mooncampchallenge.org/wp-content/uploads/formidable/7/7-2-1024x576.png',
              subTitle: 'Hermoso Paisaje',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://fanfun.jaxa.jp/event/images/event_20190708_symposium.jpg',
              subTitle: 'Otra Vista del Paisaje',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.RUkhZFmjwBj6VG5XktmCxAHaE8?pid=ImgDet&w=940&h=627&rs=1',
              subTitle: 'Astronautas Trabajando',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
