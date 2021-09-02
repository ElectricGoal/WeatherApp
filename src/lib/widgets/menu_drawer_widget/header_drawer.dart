import 'package:flutter/material.dart';
import 'package:weather_app/responsive/size_config.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black12,
                BlendMode.darken,
              ),
              image: AssetImage('asset/image/weather.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}