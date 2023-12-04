import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
                backgroundColor: Colors.indigo[900], child: const Text('SL')),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 119,
            backgroundImage: NetworkImage(
                'https://www.fayerwayer.com/resizer/yTqlj_z1Hqkn8ZAWx3ihNRYyDYE=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/HNVOLETPHNG2DCXHF3SYZKMHCY.jpg')),
      ),
    );
  }
}
