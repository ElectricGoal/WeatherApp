import 'package:flutter/material.dart';

import 'package:weather_app/widgets/menu_drawer_widget/item_list.dart';
import 'package:weather_app/widgets/menu_drawer_widget/header_drawer.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black87,
        child: Column(
          children: [
            HeaderDrawer(),
            Expanded(
              child: BuildItemList(),
            ),
          ],
        ),
      ),
    );
  }
}




