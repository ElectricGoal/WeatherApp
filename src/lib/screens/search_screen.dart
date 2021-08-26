import 'dart:async';

import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:weather_app/models/location_search.dart';
import 'package:weather_app/provider/navigation_provider.dart';
import 'package:weather_app/services/search_service.dart';
import 'package:weather_app/widgets/location_detail.dart';
import 'package:weather_app/widgets/menu_drawer.dart';
import 'package:provider/provider.dart';

///Search loaction.
///Choose and add location to the [MenuDrawer].
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textController = TextEditingController();
  late StreamController _streamController;
  late Stream _stream;

  Timer? _debouncer;

  ///Search location method
  void _search() async {
    if (_textController.text == null || _textController.text.length == 0) {
      _streamController.add(null);
      return;
    }

    _streamController.add('waiting');

    final List<LocationSearch> locations =
        await SearchService().searchLocation(_textController.text);
    if (locations.isEmpty) {
      _streamController.add('No data');
      return;
    }

    _streamController.add(locations);
  }

  @override
  void initState() {
    _streamController = StreamController();
    _stream = _streamController.stream;
    _textController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    _streamController.close();
    super.dispose();
  }

  BoxDecoration backgroundGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black,
        Colors.green.shade900,
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: [
        GestureType.onTap,
      ],
      child: GestureDetector(
        // onTap: () {
        //   final FocusScopeNode currentScope = FocusScope.of(context);
        //   if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
        //     FocusManager.instance.primaryFocus!.unfocus();
        //   }
        // },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: MenuDrawer(),
          appBar: AppBar(
            centerTitle: true,
            title: Text('Add location'),
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: buildTextField(),
              ),
            ),
          ),
          body: Container(
            decoration: backgroundGradient,
            child: StreamBuilder(
              stream: _stream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return _ErrorCase();
                }
                if (snapshot.data == 'No data') {
                  return _NotFoundCase();
                }

                switch (snapshot.data) {
                  case null:
                    return _NullCase();
                  case 'waiting':
                    return _WaitingCase();
                  default:
                    return _buildLocationList(snapshot);
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  TextField buildTextField() {
    return TextField(
      onChanged: (_) {
        if (_debouncer?.isActive ?? false) {
          // Note: _debouncer?.isActive same as _debouncer != null ? _debouncer.isActive : null
          _debouncer!.cancel();
        }
        _debouncer = Timer(
          const Duration(milliseconds: 1000),
          () {
            _search();
          },
        );
      },
      controller: _textController,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        suffixIcon: _textController.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
                onPressed: _textController.clear,
              ),
        contentPadding: EdgeInsets.only(left: 30),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'Example: tokyo',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}

Widget _buildLocationList(AsyncSnapshot snapshot) {
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

class _WaitingCase extends StatelessWidget {
  const _WaitingCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}

class _NullCase extends StatelessWidget {
  const _NullCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.travel_explore,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Search locations',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _NotFoundCase extends StatelessWidget {
  const _NotFoundCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.sentiment_dissatisfied,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Not found',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorCase extends StatelessWidget {
  const _ErrorCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.error_outline,
        color: Colors.red,
        size: 60,
      ),
    );
  }
}
