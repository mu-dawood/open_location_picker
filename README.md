FormField to pick one or more locations from open streat map

## Features

* Pick single location 
* Pick multi locations
* display open street maps
* can work with bloc pattern 
* respective to dark theme



## Getting started

At first you have to put your configration settings

- handle how you get your current location
- you can use location or geolocator package or any thing you want 

``` dart
    return OpenMapSettings(
      onError: (context, error) {},
      getCurrentLocation: _getCurrentLocationUsingLocationPackage,
      
      reverseZoom: ReverseZoom.suburb,
      getLocationStream: () => location.onLocationChanged.map((event) => LatLng(event.latitude!, event.longitude!)),
      child: MaterialApp(
        title: 'Flutter Demo',
        locale: const Locale("ar"),
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
        themeMode: ThemeMode.dark,
        home: const MyHomePage(title: 'open_location_picker demo'),
      ),
    );
```


## Usage
* There are 3 ways to this pcakge 

> OpenMapPicker

```dart
    OpenMapPicker(
      decoration: const InputDecoration(hintText: "My location"),
      onSaved: (FormattedLocation? newValue) {
        /// save new value
      },
    ),
```

> MultiOpenMapPicker

```dart
    MultiOpenMapPicker(
      decoration: const InputDecoration(hintText: "My  multi location"),
      onSaved: (List<FormattedLocation> newValue) {
        /// save new value
      },
    ),
```

> Custom 

* first create your own bloc

```dart
 class CustomBloc extends Cubit<OpenMapState> implements OpenMapBloc {
   CustomBloc(OpenMapState initialState) : super(initialState);
 }
```

* second use it
```dart
  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
    return OpenStreetMaps(
      options: OpenMapOptions(),
      bloc: CustomBloc(const OpenMapState.selected(SelectedLocation.single(null))),
    );
  }));
    
```



