import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_location_picker/open_location_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return _buildGeolocatorPackage();
  }

  Future<LatLng> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    var data = await Geolocator.getCurrentPosition();
    return LatLng(data.latitude, data.longitude);
  }

  Widget _buildGeolocatorPackage() {
    return OpenMapSettings(
      onError: (context, error) {},
      getCurrentLocation: _determinePosition,
      reverseZoom: ReverseZoom.building,
      getLocationStream: () => Geolocator.getPositionStream()
          .map((event) => LatLng(event.latitude, event.longitude)),
      child: MaterialApp(
        title: 'Flutter Demo',
        locale: const Locale("ar"),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          Locale('ar', ''), // Spanish, no country code
        ],
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
        home: const MyHomePage(title: 'open_location_picker demo'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            OpenMapPicker(
              decoration: const InputDecoration(
                hintText: "My Location",
              ),
              onSaved: (FormattedLocation? newValue) {
                /// save new value
              },
            ),
            MultiOpenMapPicker(
              decoration: const InputDecoration(hintText: "My  multi location"),
              onSaved: (List<FormattedLocation> newValue) {
                /// save new value
              },
            ),
          ],
        ),
      ),
    );
  }

  void showPicker(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return OpenStreetMaps(
        options: OpenMapOptions(),
        bloc: CustomBloc(
            const OpenMapState.selected(SelectedLocation.single(null))),
      );
    }));
  }
}

class CustomBloc extends Cubit<OpenMapState> implements OpenMapBloc {
  CustomBloc(OpenMapState initialState) : super(initialState);
}
