import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Titulo Alert IOS'),
              SizedBox(height: 12),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.red, fontSize: 23))),
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text(
                    "Ok",
                    style: TextStyle(fontSize: 23),
                  ))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo Alert Android'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(12)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('contenido del Alert'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text(
                    'Cancerlar',
                    style: TextStyle(fontSize: 23),
                  )),
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text(
                    'Ok',
                    style: TextStyle(color: Colors.red, fontSize: 23),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.red,
          //   shape: const StadiumBorder(),
          //   elevation: 10,
          // ),
          onPressed: () {
            Platform.isIOS
                ? displayDialogIOS(context)
                : displayDialogAndroid(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text("Mostrar Alerta", style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 9,
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
