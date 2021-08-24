import 'package:flutter/material.dart';
import 'package:weather_app/models/menu_item.dart';
import 'package:weather_app/screens/get_current_location.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/weather_location_screen.dart';

class NavigationProvider extends ChangeNotifier {
  ///Default selected index.
  int selectedIdx = 1;

  ///Use in menu drawer.
  List<MenuItem> menuItems = [
    MenuItem(
      icon: Icons.add,
      label: 'Add location',
      navigation: SearchScreen(),
      enableDelete: false,
    ),
    MenuItem(
      icon: Icons.place,
      label: 'Current place',
      navigation: GetCurrentLocation(),
      enableDelete: false,
    ),
  ];

  ///Change selected index
  void setSelectedIdx(int index) {
    selectedIdx = index;
    notifyListeners();
  }

  ///Add new item to [menuItems].
  void addLocation(String name, int locationId) {
    final MenuItem newItem = MenuItem(
      icon: Icons.place,
      label: name,
      navigation: WeatherLocationScreen(
        locationId: locationId,
        name: name,
      ),
    );
    menuItems.add(newItem);
    notifyListeners();
  }

  ///Remove the item with [index] in [menuItems].
  ///Change the value of [selectedIdx].
  bool removeLocation(int index) {
    if (!checkValidIndex(index)) {
      return false;
    }
    menuItems.removeAt(index);
    if (index <= selectedIdx) {
      selectedIdx--;
    }
    notifyListeners();
    return true;
  }

  bool checkValidIndex(int index) {
    return (0 <= index && index < menuItems.length);
  }
}
