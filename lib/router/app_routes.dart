import 'package:flutter_application_example/models/models.dart';
import 'package:flutter_application_example/screens/inputs_screen.dart';
import 'package:flutter_application_example/screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert_sharp,
        name: 'Alertas - alert',
        screent: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_travel,
        name: 'Tarjetas - card',
        screent: const CardScreen()),
    MenuOptions(
        route: 'lisView1',
        icon: Icons.list,
        name: 'lisView tipo 1',
        screent: const ListView1Screen()),
    MenuOptions(
        route: 'lisView2',
        icon: Icons.list_alt_outlined,
        name: 'lisView tipo 2',
        screent: const ListView2Screen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circular-Avatar',
        screent: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.animation_sharp,
        name: 'Animate',
        screent: const AnimatedScreen()),
    MenuOptions(
        route: 'inputs',
        icon: Icons.input_outlined,
        name: 'Inputs',
        screent: const InputScreen()),
    MenuOptions(
        route: 'Slider',
        icon: Icons.slow_motion_video_rounded,
        name: 'Slider && Check',
        screent: const SliderScreen()),
    MenuOptions(
        route: 'List View Builder',
        icon: Icons.line_style_outlined,
        name: 'List Builder',
        screent: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes
          .addAll({option.route: (BuildContext context) => option.screent});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView2Screen());
  }
}
