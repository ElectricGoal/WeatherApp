import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/navigation_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class BuildItemList extends StatelessWidget {
  const BuildItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, menuData, __) {
        final selectedIndex = menuData.selectedIdx;
        return ListView.builder(
          itemCount: menuData.menuItems.length,
          itemBuilder: (context, index) {
            final menuItem = menuData.menuItems[index];
            return MenuTile(
              icon: menuItem.icon,
              label: menuItem.label,
              isSelected: selectedIndex == index,
              isDeleteEnabled: menuItem.enableDelete,

              ///Select this [menuItem].
              ///Change value of the [selectedIdx] to this index.
              onSelect: () {
                menuData.setSelectedIdx(index);
                Navigator.pop(context);
              },

              ///Remove this [menuItem].
              ///Build error case if [menuData.removeLocation(index)] return false.
              onDelete: () {
                if (!menuData.removeLocation(index)) {
                  buildErrorCase(context);
                }
              },
            );
          },
        );
      },
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    this.icon,
    this.label,
    required this.isSelected,
    required this.isDeleteEnabled,
    required this.onSelect,
    required this.onDelete,
  }) : super(key: key);
  final VoidCallback onSelect;
  final VoidCallback onDelete;
  final IconData? icon;
  final String? label;
  final bool isSelected;
  final bool isDeleteEnabled;

  @override
  Widget build(BuildContext context) {
    Color color = isSelected ? Colors.amber : Colors.white;
    return Slidable(
      enabled: isDeleteEnabled,
      actionPane: SlidableDrawerActionPane(),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.red,
          child: IconSlideAction(
            foregroundColor: Colors.white,
            color: Colors.transparent,
            onTap: onDelete,
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
        onTap: onSelect,
      ),
    );
  }
}



void buildErrorCase(BuildContext context) {
  final snackBar = SnackBar(
    content: Text('Something went wrong!'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}