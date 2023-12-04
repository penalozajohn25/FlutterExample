import 'package:flutter/material.dart';
import 'package:flutter_application_example/theme/app_theme.dart';

class CardCunstomType2 extends StatelessWidget {
  final String urlImage;
  final String? name;

  const CardCunstomType2({super.key, required this.urlImage, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.second.withOpacity(0.5),
      elevation: 30,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: NetworkImage(urlImage),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'No Title'),
            )
        ],
      ),
    );
  }
}
