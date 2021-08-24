import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/navigation_provider.dart';
import 'package:weather_app/size_config.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black87,
        child: Consumer<NavigationProvider>(
          builder: (context, menuData, __) {
            final selectedIndex = menuData.selectedIdx;
            return Column(
              children: [
                HeaderDrawer(),
                Expanded(
                  child: ListView.builder(
                    itemCount: menuData.menuItems.length,
                    itemBuilder: (context, index) {
                      final menuItem = menuData.menuItems[index];
                      return MenuTile(
                        icon: menuItem.icon,
                        label: menuItem.label,
                        isSelected: selectedIndex == index,
                        enableDelete: menuItem.enableDelete,

                        ///Select this [menuItem].
                        ///Change value of the [selectedIdx] to this index.
                        selectCallBack: () {
                          menuData.setSelectedIdx(index);
                          Navigator.pop(context);
                        },

                        ///Remove this [menuItem].
                        ///Build error case if [menuData.removeLocation(index)] return false.
                        deleteCallBack: () {
                          if (!menuData.removeLocation(index)) {
                            buildErrorCase(context);
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.enableDelete,
    required this.selectCallBack,
    required this.deleteCallBack,
  }) : super(key: key);
  final VoidCallback selectCallBack;
  final VoidCallback deleteCallBack;
  final IconData? icon;
  final String? label;
  final bool isSelected;
  final bool enableDelete;

  @override
  Widget build(BuildContext context) {
    Color color = isSelected ? Colors.amber : Colors.white;
    return Slidable(
      enabled: enableDelete,
      actionPane: SlidableDrawerActionPane(),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.red,
          child: IconSlideAction(
            foregroundColor: Colors.white,
            color: Colors.transparent,
            onTap: deleteCallBack,
            icon: Icons.delete,
          ),
        )
      ],
      child: ListTile(
        selected: this.isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(
          label ?? ' ',
          style: TextStyle(
            color: color,
            fontSize: 16,
          ),
        ),
        onTap: selectCallBack,
      ),
    );
  }
}

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

void buildErrorCase(BuildContext context) {
  final snackBar = SnackBar(
    content: Text('Something went wrong!'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
