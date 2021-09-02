import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/navigation_provider.dart';
import 'package:weather_app/widgets/location_detail_widget.dart';

Widget buildLocationList(AsyncSnapshot snapshot) {
  final locationList = snapshot.data;
  return Consumer<NavigationProvider>(
    builder: (context, navigation, __) => ListView.builder(
      itemCount: locationList.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  left: 10,
                  right: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        navigation.addLocation(
                          locationList[index].name,
                          locationList[index].id,
                        );
                        navigation.setSelectedIdx(
                          navigation.menuItems.length - 1,
                        );
                      },
                      child: LocationDetail(
                        name: locationList[index].name,
                        type: locationList[index].type,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}