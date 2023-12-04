import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ["Megaman", "Metal Gear", "Smash Bro", "Final Fantasy"];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView2 tipo 2'),
          backgroundColor: Colors.indigo,
          elevation: 10,
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => const Divider()),
            separatorBuilder: ((context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.indigo),
                  onTap: () {
                    final game = options[index];
                    // ignore: avoid_print
                    print(game);
                  },
                )),
            itemCount: options.length));
  }
}
