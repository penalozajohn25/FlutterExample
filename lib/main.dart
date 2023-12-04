import 'package:flutter_application_example/router/app_routes.dart';
import 'package:flutter_application_example/screens/screen.dart';
import 'package:flutter_application_example/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: ((settings) => AppRoutes.onGenerateRoute(settings)),
      theme: AppTheme.lightTheme,
    );
  }
}
