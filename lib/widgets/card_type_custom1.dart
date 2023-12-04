import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CardCunstomType1 extends StatelessWidget {
  const CardCunstomType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.phone_android_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Titulo Carta'),
          subtitle: Text(
              "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
        ),
        Padding(
          // padding: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('OK'))
            ],
          ),
        )
      ]),
    );
  }
}
