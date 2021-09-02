import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/navigation_provider.dart';
import 'package:weather_app/responsive/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);
        return ChangeNotifierProvider(
          create: (context) => NavigationProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: SafeArea(
              child: MainScreen(),
            ),
          ),
        );
      },
    );
  }
}


///Show selected screen.
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nullCase = Container(
      child: Text(
        'Something went wrong!',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    final selectedIndex = context.watch<NavigationProvider>().selectedIdx;
    final selectedScreen =
        context.watch<NavigationProvider>().menuItems[selectedIndex].navigation;

    return selectedScreen ?? nullCase;
  }
}
